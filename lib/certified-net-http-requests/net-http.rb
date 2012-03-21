require 'net/https'

Net::HTTP.class_eval do
  alias _use_ssl= use_ssl=

  def use_ssl= boolean
    self.ca_file    ||= CABundle::get_path self.ca_file
    self.verify_mode  = OpenSSL::SSL::VERIFY_PEER
    self._use_ssl     = boolean
  end
end

