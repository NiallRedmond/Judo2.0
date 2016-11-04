class JudoClassesController < ApplicationController
  before_action :set_judo_class, only: [:show, :edit, :update, :destroy]

  # GET /judo_classes
  # GET /judo_classes.json
  def index
    @judo_classes = JudoClass.all
  end

  # GET /judo_classes/1
  # GET /judo_classes/1.json
  def show
  end

  # GET /judo_classes/new
  def new
    @judo_class = JudoClass.new
  end

  # GET /judo_classes/1/edit
  def edit
  end

  # POST /judo_classes
  # POST /judo_classes.json
  def create
    @judo_class = JudoClass.new(judo_class_params)

    respond_to do |format|
      if @judo_class.save
        format.html { redirect_to @judo_class, notice: 'Judo class was successfully created.' }
        format.json { render :show, status: :created, location: @judo_class }
      else
        format.html { render :new }
        format.json { render json: @judo_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /judo_classes/1
  # PATCH/PUT /judo_classes/1.json
  def update
    respond_to do |format|
      if @judo_class.update(judo_class_params)
        format.html { redirect_to @judo_class, notice: 'Judo class was successfully updated.' }
        format.json { render :show, status: :ok, location: @judo_class }
      else
        format.html { render :edit }
        format.json { render json: @judo_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /judo_classes/1
  # DELETE /judo_classes/1.json
  def destroy
    @judo_class.destroy
    respond_to do |format|
      format.html { redirect_to judo_classes_url, notice: 'Judo class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_judo_class
      @judo_class = JudoClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def judo_class_params
      params.require(:judo_class).permit(:belt_level, :class_name, :day, :time, :teacher_name)
    end
end
