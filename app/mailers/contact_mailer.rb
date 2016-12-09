class ContactMailer < ActionMailer::Base
    default to:'roosa.rula@gmail.com'
    
    def contact_email(name, email, body)
      @name = name
      @email = email
      @body = body
      
      mail(from: email, subject: 'Contact form message')
    end
end