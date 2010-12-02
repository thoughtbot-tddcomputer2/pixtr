require 'spec_helper'

describe CommentsController, 'routes' do
  it { should route(:post, '/galleries/1/comments/new').to(:galleries_id => '1', :action => 'new') }
end