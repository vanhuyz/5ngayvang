require 'rubygems'
require 'bundler/setup'
require 'nokogiri'
require 'open-uri'
require 'yaml/store'
require 'slack-notifier'

NGAYVANG_URL = 'https://www.vietnamairlines.com/vi/sale-campaign#5ngayvang'.freeze
WEBHOOK_URL = ENV['WEBHOOK_URL']

def slack_notifier(msg)
  notifier = Slack::Notifier.new WEBHOOK_URL, username: 'vnairline'
  notifier.ping msg
end

doc = Nokogiri::HTML(open(NGAYVANG_URL))

info = doc.css('#5ngayvang #fivedays_table p').text
store = YAML::Store.new 'info.yml'

store.transaction do
  unless info == store['info']
    slack_notifier("5ngayvang has been updated! Check it out #{NGAYVANG_URL}")
    store['info'] = info
  end
end
