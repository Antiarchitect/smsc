Smsc - sending SMS via http://smsc.ru in a simple way
============================================================

Smsc gem is a simple smsc.ru service API wrapper for Ruby

Installation
-------------------------------------------------------

    $ gem install smsc

or if you using bundler in your app (e.g. some Rails application) to manage gem dependencies simply add this line
to your Gemfile

    $ gem 'smsc'

What it can do?
-----------------------------------

Sending sms:
~~~~ ruby
sms = Smsc::Sms.new('login', 'password', 'windows-1251')           # encoding is optional - utf-8 by default
sms.message('Some nice message', ['+11111234567', '+12221234567'])
~~~~~