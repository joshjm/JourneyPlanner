class TransactionsController < ApplicationController
  def new
  end

  def update_balance
    @current_user.transactions.create(transaction_params)
    @current_user.balance = @current_user.balance.to_i + transaction_params[:amount].to_i
    @current_user.save
    redirect_to transactions_index_path #show page

  end

  def index
    @transactions = Transaction.all

  end

  def edit
  end

  def delete
  end

  private # 
  def transaction_params
    params.permit(:user_id, :amount)
  end
end
