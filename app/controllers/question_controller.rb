class QuestionController < ApplicationController
  def create
    @question = Question.create(question_params)
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
