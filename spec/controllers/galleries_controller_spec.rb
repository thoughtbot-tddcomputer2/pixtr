require 'spec_helper'

describe GalleriesController, 'routes' do
  it { should route(:get, '/galleries/new').to(:action => 'new') }
  it { should route(:post, '/galleries').to(:action => 'create') }
  it { should route(:get, '/galleries/1').to(:id => 1, :action => 'show') }
end