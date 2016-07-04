require 'rubygems'
require 'bundler/setup'
require 'nokogiri'
require 'open-uri'
require 'yaml/store'
require 'slack-notifier'
require 'mail'

require_relative 'constants'
require_relative 'via_slack'
require_relative 'via_email'

doc = Nokogiri::HTML(open(Constants::NGAYVANG_URL))

info = doc.css('#5ngayvang #fivedays_table > p').map(&:text).join("\n")
store = YAML::Store.new 'info.yml'

store.transaction do
  unless info == store['info']
    msg = Constants::MESSAGE + "New info: #{info}"

    puts msg
    ViaSlack.notify msg
    ViaEmail.notify msg

    store['info'] = info
  end
end
