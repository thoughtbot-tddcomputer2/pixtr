require 'spec_helper'

describe Gallery do
  it { should validate_presence_of(:title) }
  
  it { should belong_to :user }
end