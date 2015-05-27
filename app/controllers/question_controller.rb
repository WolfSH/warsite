class QuestionController < ApplicationController
  def create
    @question = Question.create(question_params)
    AskQuestionMailer.send_question_email(params).deliver_now unless @question.question.blank?
    # redirect_to root_path
    unless @question.question.blank?
      AskQuestionMailer.send_question_email(question_params).deliver_now
      flash[:notice] = "Ваше запитання відправлено"
    else
      flash[:alert] = "Введіть питання"
    end
    # flash[:notice] = "Ваше запитання відправлено"
    render 'for_listener/faq'
    # respond_to do |format|
    #     if @question.save
    #         format.js {  }
    # end
  end

  def update
  end

  def destroy
  end

  private def question_params
      params.require(:question).permit(:asker_name, :asker_email, :question)
  end
end
