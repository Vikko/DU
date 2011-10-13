class UsersController < InheritedResources::Base
  def new
    @user = User.new
  end
  
  def index
    if current_user && (current_user.role == "editor")
      @users = User.order("email ASC")
    else
      redirect_to root_path, :notice => 'Access denied.'
    end
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_back_or_to root_url, :notice => "Succesfully signed up!"
    else
      render :new
    end
  end
  
  def update
    update!(:notice => "User saved.") { users_path }
  end
    
  
  def activate
    if @user = User.load_from_activation_token(params[:id])
      @user.activate!
      redirect_to login_path, :notice => 'User was successfully activated.'
    else
      redirect_to root_path, :notice => 'Activation failed.'
    end
  end

end
