require 'digest/md5'
require 'faraday'

module Smsc
  class Sms

    def initialize(login, password, charset = 'utf-8')
      @login = login
      @password = Digest::MD5.hexdigest(password.to_s)
      @charset = charset
      @connection = Faraday.new(url: 'https://smsc.ru') do |i|
        i.request  :url_encoded
        i.response :logger
        i.adapter  Faraday.default_adapter
      end
    end

    def message(message, phones)
      @connection.post '/sys/send.php', { login: @login, psw: @password, phones: phones.join(','), mes: message, charset: @charset }
    end

  end
end
