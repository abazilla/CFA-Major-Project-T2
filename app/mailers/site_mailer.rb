class SiteMailer < ApplicationMailer
  def send_email(options={})
    @name = options[:name]
    @email = options[:email]
    @message = options[:message]
    mail(:to=>"nick@elite-writing.com", :subject=>"Email from Fund-it-Forward")
  end
end
