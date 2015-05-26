class AskQuestionMailer < ApplicationMailer
    def send_question_email(to)
        @params = to
        mail(to: 'igccss@yandex.ru', subject: 'welcome')
    end
end
