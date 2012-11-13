require 'digest/md5'
require 'httparty'

require "smsc/sender"
require "smsc/version"

module Smsc
  class Sms
    attr_reader :login, :password, :charset

    def initialize(login, password, charset = 'utf-8')
      @login = login
      @password = Digest::MD5.hexdigest(password.to_s)
      @charset = charset
    end

    def message(message, phones)
      phones = phones.join(",")
      Smsc::Sender.post('https://smsc.ru/sys/send.php', :query => { :login => login, :psw => password, :phones => phones, :mes => message, :charset => charset })
    end
  end
end
