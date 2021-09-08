class UserTextsController < ApplicationController
  before_action :set_user_text, only: %i[ show edit update destroy ]

  # GET /user_texts or /user_texts.json
  def index
    @user_texts = UserText.all
  end

  # GET /user_texts/1 or /user_texts/1.json
  def show
  end

  # GET /user_texts/new
  def new
    @user_text = UserText.new
  end

  # GET /user_texts/1/edit
  def edit
  end

  # POST /user_texts or /user_texts.json
  def create
    @user_text = UserText.new(user_text_params)

    respond_to do |format|
      if @user_text.save
        format.html { redirect_to @user_text, notice: "User text was successfully created." }
        format.json { render :show, status: :created, location: @user_text }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_texts/1 or /user_texts/1.json
  def update
    respond_to do |format|
      if @user_text.update(user_text_params)
        format.html { redirect_to @user_text, notice: "User text was successfully updated." }
        format.json { render :show, status: :ok, location: @user_text }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_texts/1 or /user_texts/1.json
  def destroy
    @user_text.destroy
    respond_to do |format|
      format.html { redirect_to user_texts_url, notice: "User text was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_text
      @user_text = UserText.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_text_params
      params.require(:user_text).permit(:name, :text)
    end
end
