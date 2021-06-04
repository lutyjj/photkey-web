class LikeLogsController < ApplicationController
  before_action :set_like_log, only: %i[ show edit update destroy ]

  # GET /like_logs or /like_logs.json
  def index
    @like_logs = LikeLog.all
  end

  # GET /like_logs/1 or /like_logs/1.json
  def show
  end

  # GET /like_logs/new
  def new
    @like_log = LikeLog.new
  end

  # GET /like_logs/1/edit
  def edit
  end

  # POST /like_logs or /like_logs.json
  def create
    @like_log = LikeLog.new(like_log_params)

    respond_to do |format|
      if @like_log.save
        format.html { redirect_to @like_log, notice: "Like log was successfully created." }
        format.json { render :show, status: :created, location: @like_log }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @like_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /like_logs/1 or /like_logs/1.json
  def update
    respond_to do |format|
      if @like_log.update(like_log_params)
        format.html { redirect_to @like_log, notice: "Like log was successfully updated." }
        format.json { render :show, status: :ok, location: @like_log }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @like_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /like_logs/1 or /like_logs/1.json
  def destroy
    @like_log.destroy
    respond_to do |format|
      format.html { redirect_to like_logs_url, notice: "Like log was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_like_log
      @like_log = LikeLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def like_log_params
      params.require(:like_log).permit(:user_id, :photo_id, :category_id)
    end
end
