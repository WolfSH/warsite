class AskQuestionMailer < ApplicationMailer
    def send_question_email(question_info)
        @question_info = question_info
        mail(to: 'igccss@yandex.ru', subject: 'question')
    end
end
