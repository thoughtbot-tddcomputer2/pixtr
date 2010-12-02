require 'spec_helper'

describe Image do
  it { should belong_to :gallery }
  it { should have_attached_file :photo }
  
  it { should validate_presence_of(:title) }
  it { should validate_attachment_presence(:photo)}
  it { should validate_attachment_content_type(:photo).allowing('images/jpeg')}
end