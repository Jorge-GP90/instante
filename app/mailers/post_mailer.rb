class PostMailer < ApplicationMailer
  default from: 'jinetito_sva@hotmail.com'
  layout 'mailer'

  def post_mail(post)
    @post = post
    mail to: "jorge.90gap@gmail.com", subject: " Your Instagram account has been created, Welcome to the community."
  end
end
