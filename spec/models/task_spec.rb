require "rails_helper"

RSpec.describe Task, type: :model do
  describe "instance methods" do
    describe "#laundry?" do
      it "should return true if task title is laundry" do
        # task_1 = Task.new(title: "laundry", description: "description")
        # create test Task object
        task_2 = Task.create!(title: "laundry", description: "description")
        # .create saves to the test database = .new + .save
        # .create! throws a loud error message when a field is not provided
        # task_1.title
        # task_1.laundry?
        # expect(task_1.title).to eq("laundry")
        expect(task_2.laundry?).to eq(true)
      end

      it "should return false if task title is not laundry" do
        task = Task.create!(title: "homework", description: "practice")

        expect(task.laundry?).to eq(false)
      end

      it "returns true when the description is laundry" do
        task = Task.create!(title: "Clean my clothes", description: "laundry")
    
        expect(task.laundry?).to be(true)
      end


    it "returns false when neither the description nor title is laundry" do
      task = Task.create!(title: 'dishes', description: "wet")

      expect(task.laundry?).to eq(false)
    end

    it "returns true when the title contains the word laundry" do
      task = Task.create!(title: "laundry", description: "laundry")

      expect(task.laundry?).to eq(true)
    end

    it "is case insensitive when checking if the title contains the word laundry" do
      task = Task.create!(title: "Laundry", description: "aisd")
      
      expect(task.laundry?).to eq(true)
    end
    
    it "returns true when the description contains the word laundry" do
      task = Task.create!(title: "Laundry", description: "laundry")
      
      expect(task.laundry?).to eq(true)
    end
    
    it "is case insensitive when checking if the description contains the word laundry" do
      task = Task.create!(title: "Laundry", description: "Laundry")
      
      expect(task.laundry?).to eq(true)
    end
    
    end
  end
end