require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures first name presence' do
      user = User.new(last_name: 'Last', email: 'sample@example.com').save
      expect(user).to eq(false)
    end

    it 'ensures last name presence' do
      user = User.new(first_name: 'First', email: 'sample@example.com').save
      expect(user).to eq(false)
    end

    it 'ensures email presence' do
      user = User.new(first_name: 'First', last_name: 'Last').save
      expect(user).to eq(false)
    end

    it 'should save succesfully' do
      user = User.new(firt_name: 'First', last_name: 'Last', email: 'sample@example.com').save
      expect(user).to eq(true)
    end
  end

  context 'scope tests' do
#    before(:each) do
#      User.new(first_name: 'First', last_name: 'Last', email:'sample@email.com').save
#      User.new(first_name: 'First', last_name: 'Last', email:'sample@email.com').save
#      User.new(first_name: 'First', last_name: 'Last', email:'sample@email.com').save
#      User.new(first_name: 'First', last_name: 'Last', email:'sample@email.com', active: false).save
#      User.new(first_name: 'First', last_name: 'Last', email:'sample@email.com', active: false).save
#  end
    #let run once , let! run each single time
    let (:params) { {first_name: 'First', last_name: 'Last', email:'sample@email.com'} }
    before(:each) do
      User.new(params).save
      User.new(params).save
      User.new(params.(active: true)).save
      User.new(params.merge({active: false})).save
      User.new(params.merge({active: false})).save
    end # same with parameters in variables

  it 'should return active users' do
    expect(User.active_users.size).to eq (3)
  end

  it 'should return inactive users' do
    expect(User.active_users.size).to eq (2)
  end

  end
end