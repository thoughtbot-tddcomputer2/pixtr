require 'spec_helper'

describe ImagesController, 'routes' do
  it { should route(:post, '/galleries/1/images').to(:gallery_id => '1', :action => 'create') }
  it { should route(:get, '/galleries/1/images/new').to(:gallery_id => '1', :action => 'new') }
end