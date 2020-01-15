require 'rails_helper'

describe Survey do
  it { should have_many(:questions) }
  it { should validate_presence_of :title }
  it { should validate_length_of(:title).is_at_most(100) }

  it("titleizes the name of a survey") do
    survey = Survey.create({title: "giant steps", category: "jazz"})
    expect(survey.title()).to(eq("Giant Steps"))
  end

end
