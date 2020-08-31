class AccountsController < ApplicationController
  def index
    @accounts = current_user.accounts
  end

  def show
  end

  def new
    @account = Account.new
  end

  def create
    @account = current_user.accounts.new(account_params)
    if @account.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  private

  def account_params
    params.require(:account).permit(:name, :balance)
  end
end
