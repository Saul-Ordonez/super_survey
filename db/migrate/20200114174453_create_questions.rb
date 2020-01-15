class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.column(:query, :string)
      t.column(:answer1, :string)
      t.column(:answer2, :string)
      t.column(:answer3, :string)
      t.column(:survey_id, :integer)

      t.timestamps()
    end
  end
end
