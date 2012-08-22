# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  email              :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  encrypted_password :string(255)
#

require 'spec_helper'

describe User do

  before (:each) do
    @attr = { :name => "Example User", :email => "user@example.com" }
  end 

  describe "passwords" do
    it "should have a password attribute" do
      User.new(@attr).should respond_to(:password)
    end
  end
end


