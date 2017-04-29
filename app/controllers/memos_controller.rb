class MemosController < ApplicationController

  before_action :set_memo, only: %i( edit update )

  def index
    @memos = Memo.all
  end

  def new
    @memo = Memo.new
  end

  def create
    @memo = current_user.memos.create(memo_params)
    if @memo.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @memo.update(memo_params)
      redirect_to root_path(@memo), notice: "success!!!!"
    else
      flash[:alert] = "Error"
      render :edit
    end
  end

  private

  def memo_params
    params.require(:memo).permit(:body, :people)
  end

  def set_memo
    @memo = Memo.find(params[:id])
  end

end
