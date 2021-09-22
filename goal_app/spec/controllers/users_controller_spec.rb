require 'rails_helper'


RSpec.describe UsersController, type: :controller do
    before :each do
        create(:user)
    end
    
    describe "GET #index" do
        it "should render user index" do
            get :index
            expect(response).to render_template(:index)
        end

        # it "should set all users to a @users instance variable" do
        #     get :index
        #     users = @users
        #     expect(users).to eq(User.all)
        # end
    end

    describe "GET #show" do
        it "should render user's show page" do 
            get :show, params: {id: User.last.id}
            expect(response).to render_template(:show)
        end
    end

    describe "GET #new" do
        it 'should render a new user page' do
            get :new
            expect(response).to render_template(:new)
        end
    end

    describe "POST #create" do
        context "with valid params" do
            it "should redirect to new user's show page" do
                post :create, params: {user: {username: User.last.username, password: 'password_test'}}
                expect(response).to redirect_to(user_url(User.last))
            end
        end

        context "with invalid params" do
            it 'should render a new user page' do
                post :create, params: {user: {username: User.last.username}}
                expect(response).to render_template(:new)
            end
        end

    end 




end