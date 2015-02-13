class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
  end
  
  def show
    # images = [
    #   ""
    # ]

    # image1 = image_tag "assets/images/4.png"
    # image1 = "https://bgf.s3-us-west-1.amazonaws.com/bgf/M.jpg"
    # image2 = "https://s3-us-west-1.amazonaws.com/bgf/N.jpg"
    # image3 = "https://s3-us-west-1.amazonaws.com/bgf/S.jpg"
    # image4 = "https://s3-us-west-1.amazonaws.com/bgf/IMG_9994.gif"
    @quotes = ["NO.", "Guuuuuurrrrrrllllll", "Ima pretend you didn ask that.", "I can't."]
    @images  = ["https://s3-us-west-1.amazonaws.com/bgf/N.jpg", "https://s3-us-west-1.amazonaws.com/bgf/M.jpg", "https://s3-us-west-1.amazonaws.com/bgf/S.jpg", "https://s3-us-west-1.amazonaws.com/bgf/IMG_9994.gif"]
    @random_no = rand(4)
    @random_image = @images[@random_no]
    @quote = @quotes[rand(4)]
  end

  # GET /questions/1
  # GET /questions/1.json


  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  # def update
  #   respond_to do |format|
  #     if @question.update(question_params)
  #       format.html { redirect_to @question, notice: 'Question was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @question }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @question.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /questions/1
  # DELETE /questions/1.json
  # def destroy
  #   @question.destroy
  #   respond_to do |format|
  #     format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:question)
    end
end
