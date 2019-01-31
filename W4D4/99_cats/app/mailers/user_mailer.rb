class UserMailer < ApplicationMailer
    default from: 'everyone@appacademy.io'
    def welcome_email
        @user = user
        @url = 'http://catscam.com/login'
        mail(to: user.email, subject: 'Get cat scammed, son')
    end
end
