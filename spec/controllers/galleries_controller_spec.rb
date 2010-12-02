require 'spec_helper'

describe GalleriesController, 'routes' do
  it { should route(:get, '/galleries/new').to(:action => 'new') }
  it { should route(:post, '/galleries').to(:action => 'create') }
  it { should route(:get, '/galleries/1').to(:id => 1, :action => 'show') }
end

describe GalleriesController, 'authorization' do
  context "not signed in" do
    describe "on GET to :new" do
      it "should redirect to sign in page" do
        get :new
        response.should redirect_to(sign_in_path)
      end
    end

    describe "on POST to :create" do
      it "should redirect to sign in page" do
        post :create, Factory.attributes_for(:gallery)
        response.should redirect_to(sign_in_path)
      end
    end
  end
end