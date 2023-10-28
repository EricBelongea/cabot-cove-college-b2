require "rails_helper"

RSpec.describe Resident do
  before(:each) do
    @resident1 = Resident.create(name: "Jessica Fletcher", age: 65, occupation: "Mystery writer")
    @resident2 = Resident.create(name: "Dr. Seth Hazlitt", age: 70, occupation: "Town Doctor")
  
  end

  it 'I see residents info' do
    visit "/residents"
    
    expect(page).to have_content("Name: #{@resident1.name}")
    expect(page).to have_content("Age: #{@resident1.age}")
    expect(page).to have_content("Occupation: #{@resident1.occupation}")
  end
end