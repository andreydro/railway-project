class TicketsMailer < ApplicationMailer
  def buy_ticket(user, ticket)
    @user = user
    @ticket = ticekt

    mail(to: user.email, subject: "Вы купилп билет")
  end
end
