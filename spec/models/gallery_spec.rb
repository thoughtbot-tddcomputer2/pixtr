require 'spec_helper'

describe Gallery do
  it { should validate_presence_of(:title) }
  
  it { should belong_to :user }
  it { should have_many :images }
  it { should have_many :comments }
end