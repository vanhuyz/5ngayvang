# Send msg via slack
module ViaSlack
  def self.notify(msg)
    notifier = Slack::Notifier.new Constants::WEBHOOK_URL,
                                   username: 'vnairlines'
    notifier.ping msg
  end
end
