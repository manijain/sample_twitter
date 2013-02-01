class UserMailer < ActionMailer::Base
  default from: "trysampletwitter@gmail.com"

  def registration_confirmation(user)
  	@user = user
  	mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")
  end
end