require 'rails_helper'

RSpec.describe Ninja, :type => :model do
  let(:subject1) { Ninja.new(secret_name: "Joe") }
  let(:subject2) { Ninja.new(name: "Akira") }

  it "responds to name" do
    expect(subject1).to respond_to(:name)
  end
  
  it "is invalid without a name" do
    expect(subject1).to be_invalid
  end

  it "raises an error without a name" do
    expect{subject1.save!}.to raise_error(ActiveRecord::RecordInvalid)
  end

  #Testing for secret_name
  it "responds to secret_name" do
    expect(subject2).to respond_to(:secret_name)
  end
  
  it "is invalid without a secret_name" do
    expect(subject2).to be_invalid
  end

  it "raises an error without a secret_name" do
    expect{subject2.save!}.to raise_error(ActiveRecord::RecordInvalid)
  end

  # Describe class method attack
  describe ".attack" do
    it "responds to attack" do
      expect(Ninja).to respond_to(:attack)
    end
  end

  #Describe instance method hide
  describe "#hide" do
    it "responds to" do
      expect(subject1).to respond_to(:hide)
    end
  end

  context 'when a Ninja is initialized with a name of Ashley' do
    let(:ninja) {Ninja.new(name: "Ashley")}
    it 'should start with two weapons' do
      expect(subject.weapons).to be_a(Array)
      expect(subject.weapons.count).to eq(2)
    end
  end

end
