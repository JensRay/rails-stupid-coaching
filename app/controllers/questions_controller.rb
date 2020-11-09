class QuestionsController < ApplicationController
  def ask
    @ask = params["answer"]
  end


  def coach_answer(your_message)
    if your_message == "i am going to work right now!"
      ""
    elsif your_message.include? "?"
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def answer
    @question = params["answer"]
    @answer = coach_answer(params["answer"])
  end

end
