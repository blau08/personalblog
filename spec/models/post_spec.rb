require 'rails_helper'

describe Post do
  it { should have_many :comments }
  it { should validate_presence_of :author }
  it { should validate_presence_of :content }
end
