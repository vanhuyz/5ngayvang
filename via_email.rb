# Send msg via email
module ViaEmail
  def self.notify(msg)
    Mail.defaults do
      delivery_method :smtp,
                      address: 'localhost',
                      port: 25,
                      enable_starttls_auto: false
    end

    mail = Mail.new do
      from     '5ngayvang-info@example.com'
      to       Constants::TO_EMAILS
      subject  '5ngayvang has been updated!'
      body msg
    end

    mail.deliver!
  end
end
