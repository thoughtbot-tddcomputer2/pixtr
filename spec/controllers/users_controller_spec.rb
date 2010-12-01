require 'spec_helper'

describe UsersController, 'routes' do
  it { should route(:get, '/users/new').to(:action => 'new') }
  it { should route(:post, '/users').to(:action => 'create') }
end