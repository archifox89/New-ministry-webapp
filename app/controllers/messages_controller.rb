class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @messages = Message.all
    respond_with(@messages)
  end

  def show
    respond_with(@message)
  end

  def new
    @message = Message.new
    respond_with(@message)
  end

  def edit
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to project_docs_path, notice: 'Successfully Added Report'
    else
      render action: 'new'
    end
  end

  def update
    @message.update(message_params)
    redirect_to project_docs_path, :notice => "Report Deleted"
  end

  def destroy
    @message.destroy
    redirect_to project_docs_path, :notice => "Report Deleted"
  end

  private
    def set_message
      @message = Message.find(params[:id])
    end

    def message_params
      params.require(:message).permit(:number, :subject, :date_issued, :report)
    end
end
