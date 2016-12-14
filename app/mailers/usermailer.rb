class Usermailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.usermailer.welcome.subject
  #
  def welcome(student)
    @student = student

    mail(:to => student.email, :subject => "Welcome to the DIT Judo club!")
  end
  
  def challenge(student, opponent)
	@student = student
	@opponent = opponent
	mail(:to => student.email, :subject => "You have been challeneged to a Judo match!")
  end
end
