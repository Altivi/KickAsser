class AccountsController < ApplicationController
  
  def show
  	@account = current_user.account
  	@projects = @account.projects
  end

end
