module CABundle
  FILE_PATH = File.expand_path '~/.ca/cacert.pem'

  # Updates local cacert.pem file
  def self.update
    require 'net/http'
    require 'fileutils'

    FileUtils.mkdir File.dirname self::FILE_PATH unless File.directory? File.dirname self::FILE_PATH

    Net::HTTP.start("curl.haxx.se") { |http|
      resp = http.get("/ca/cacert.pem")
      open(self::FILE_PATH, "wb") { |file|
        file.write(resp.body)
      }
    }
  end

  def self.get_path current_path = nil
    if File.exists? self::FILE_PATH
      Kernel.warn "Object already has #{current_path} as CA File path" if current_path
      self::FILE_PATH
    else
      Kernel.warn <<-WARN
        #{self::FILE_PATH} does not exists. Please run `update-ca-bundle` command or download it manually from
        http://curl.haxx.se/docs/caextract.html
      WARN
    end
  end
end
