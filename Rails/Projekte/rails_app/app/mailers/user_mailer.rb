class UserMailer < ApplicationMailer
	def welcome_email(user)
		@user = user
		mail(to: @user.email, subject: "Willkomen an Board!", body: "Irgend ein Text")
	end
end
