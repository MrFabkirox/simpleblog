require "spec_helper"
require "zombie"

describe Zombie do

    # example test
    it "is named Ash" do
        zombie = Zombie.new
        zombie.name.should == 'Ash' # expectation
    end
end