module Constants
  NGAYVANG_URL = 'https://www.vietnamairlines.com/sites/5daypromotion#5ngayvang'.freeze
  MESSAGE = "5ngayvang has been updated! Check it out #{NGAYVANG_URL}\n".freeze

  WEBHOOK_URL = ENV['WEBHOOK_URL']
  TO_EMAILS = ENV['TO_EMAILS']
end
