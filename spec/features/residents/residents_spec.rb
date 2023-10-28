require "rails_helper"

RSpec.describe Resident do
  before(:each) do
    @resident1 = Resident.create(name: "Jessica Fletcher", age: 65, occupation: "Mystery writer")
    @resident2 = Resident.create(name: "Dr. Seth Hazlitt", age: 70, occupation: "Town Doctor")
    
    @course1 = Course.create(name: "Finger Printing")
    @course2 = Course.create(name: "Crime scene science")
    @course3 = Course.create(name: "Frankenstein")

    @resident1.courses << @course1
    @resident1.courses << @course2
    @resident2.courses << @course3
  end

  it 'I see residents info' do
    visit "/residents"
    
    expect(page).to have_content("Name: #{@resident1.name}")
    expect(page).to have_content("Age: #{@resident1.age}")
    expect(page).to have_content("Occupation: #{@resident1.occupation}")
  end

  it 'Show residents course' do
    visit "/residents/#{@resident1.id}"

    expect(page).to have_content("Courses")

    expect(page).to have_content("#{@course1.name}")
    expect(page).to have_content("#{@course2.name}")
    expect(page).to_not have_content("#{@course3.name}")
  end

  # it 'average age' do
  #   expect(page).to have_content("Average Age of Residents")
  #   expect(page).to have_content("#{Resident.age}")
  # end
end