class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :post_swit]

  def post_swit
    @current_user = User.find(session[:user_id])
    new_swit = @current_user.swits.create(content: params[:new_swit])

    respond_to do |format|
      if @swit.save
        format.html { redirect_to @swit, notice: 'Swit was successfully created.' }
        format.json { render :show, status: :created, location: @swit }
      else
        format.html { render :new }
        format.json { render json: @swit.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @user_swits = Swit.where(:user_id => @user.id).order(created_at: :desc)
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save

        @user.authenticate(BCrypt::Password.new(@user.password_digest))
        session[:user_id] = @user.id

        format.html { redirect_to :controller => 'home', :action => 'index' , notice: 'User was successfully created.' }
        format.json { render 'home#index', status: :created, location: 'home#index' }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(session[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
