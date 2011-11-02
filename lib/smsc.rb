require 'httparty'

require "smsc/sender"
require "smsc/version"

module Smsc
  class Sms
    attr_reader :login, :password, :charset

    def initialize(login, password, charset = 'utf-8')
      @login = login
      @password = password
      @charset = charset
    end

    def message(message, phones)
      message = message
      phones = phones.join(",")
      Smsc::Sender.post('https://smsc.ru/sys/send.php', :query => { :login => login, :psw => password, :phones => phones, :mes => message, :charset => charset })
    end
  end
end
