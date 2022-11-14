class PagesController < ApplicationController
  def ask
  end

  def answer
    answer_1 = "Great!"
    answer_2 = "Silly question, get dressed and go to work!."
    answer_3 = "I don't care, get dressed and go to work!"
    @question = params[:question]

    if @question == 'I am going to work'
      @answer = answer_1
    elsif @question.include? '?'
      @answer = answer_2
    else
      @answer = answer_3
    end
  end
end
