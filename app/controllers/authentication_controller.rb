class AuthenticationController < ApplicationController

  def index
    render 'authentication/intro' # about Chitter
  end

  def show
    render 'authentication/choose' # member or new member?
  end

  def sign_in
    respond_with @authenticate
    @login = LogIn.new()
    render 'authentication/sign_in'
  end

  def create
    respond_with @authenticate
    @signup = SignUp.new()
    render 'authentication/sign_in'
  end

  def reset
    respond_with @authenticate
  end

end
