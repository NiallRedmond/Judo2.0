class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :edit, :update, :destroy]
  before_action :authorise
  # GET /matches
  # GET /matches.json
  
  
  def matchWin(student_id)
	@student = Student.find(student_id)
	Student.increment_counter(:score, @student.id)
  end
  
  def index
    @matches = Match.all
  end

  # GET /matches/1
  # GET /matches/1.json
  def show
  end

  # GET /matches/new
  def new
    @match = Match.new
  end

  # GET /matches/1/edit
  def edit
  end

  # POST /matches
  # POST /matches.json
  def create
 
    @match = Match.new(match_params)

	if @match.result == true #so if result is 'true' then the 'student' won, and I increment their score
		matchWin(@match.student_id)
	else
		matchWin(@match.opponent)#if the opponent won I increment that students score
	end
    respond_to do |format|
      if @match.save
	  		
        format.html { redirect_to @match, notice: 'Match was successfully created. The winners score has been incremented.' }
        format.json { render :show, status: :created, location: @match }
      else
        format.html { render :new }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matches/1
  # PATCH/PUT /matches/1.json
  def update
    respond_to do |format|
      if @match.update(match_params)
	  

	  
	  
        format.html { redirect_to @match, notice: 'Match was successfully updated.' }
        format.json { render :show, status: :ok, location: @match }
      else
        format.html { render :edit }
        format.json { render json: @match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matches/1
  # DELETE /matches/1.json
  def destroy
    @match.destroy
    respond_to do |format|
      format.html { redirect_to matches_url, notice: 'Match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match
      @match = Match.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_params
      params.require(:match).permit(:match_name, :result, :match_points, :student_id, :opponent)
    end
end
