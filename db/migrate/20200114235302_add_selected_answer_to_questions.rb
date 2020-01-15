class AddSelectedAnswerToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column(:questions, :selected_answer, :string)
  end
end
