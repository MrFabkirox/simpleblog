require "spec_helper"
require "zombie"

describe Zombie do

    # example test
    it "is named Ash" do
        zombie = Zombie.new
        zombie.name.should == 'Ash' # expectation
    end

    it "has no brain" do
        zombie = Zombie.new
        zombie.brains.should < 1
    end

    it 'is hungry' do
        # pending # to make pending
        zombie = Zombie.new
        zombie.hungry?.should == true
    end

    xit 'is hungry' do # xit to pending
        zombie = Zombie.new
        zombie.should be_hungry
    end
    
end