require "smsc/sender"
require "smsc/version"

module Smsc
  class Sms

    attr_reader :login, :password

    def initialize(login, password)
      @login = CGI::escape(login)
      @password = CGI::escape(password)
    end

    def message(message, phones)
      message = CGI::escape(message)
      phones = phones.map { |p| CGI::escape(p) }.join(",")
      Smsc::Sender.post('https://smsc.ru/sys/send.php', :query => { :login => login, :password => password, :phones => phones, :mes => message })
    end
  end
end
