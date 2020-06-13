class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]

  # GET /schools
  # GET /schools.json
  def index
    if params[:query]
      @schools = School.name_like("#{params[:query]}").order(:title).page params[:page]
      @query = params[:query]
    else
      @schools = School.all.order(:title).page params[:page]
    end
  end

  # GET /schools/1
  # GET /schools/1.json
  def show
  end

  # GET /schools/new
  def new
    @school = School.new
  end

  # GET /schools/1/edit
  def edit
  end

  # POST /schools
  # POST /schools.json
  def create
    @school = School.new(school_params)

    respond_to do |format|
      if @school.save
        format.html { redirect_to @school, notice: 'School was successfully created.' }
        format.json { render :show, status: :created, location: @school }
      else
        format.html { render :new }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schools/1
  # PATCH/PUT /schools/1.json
  def update
    respond_to do |format|
      if @school.update(school_params)
        format.html { redirect_to @school, notice: 'School was successfully updated.' }
        format.json { render :show, status: :ok, location: @school }
      else
        format.html { render :edit }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  # SEARCH /schools/search/{text}
  def search 
    if params[:query]
      @schools = School.name_like("#{params[:query]}")
    else
    end
  end

  # DELETE /schools/1
  # DELETE /schools/1.json
  def destroy
    @school.destroy
    respond_to do |format|
      format.html { redirect_to schools_url, notice: 'School was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school
      @school = School.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def school_params
      params.require(:school).permit(:title)
    end
end



#Add unique validation - done
#root index to schools - done
#fix persist the value in the search Query - done
#Home button - done
#add Index
#place holder Text
# curl -X GET \
# -H "Content-type: application/json" \
# -H "Accept: application/json" \
# "http://localhost:3000/schools/search?query=a"


#not found text
#Design clean up in all the pages & good bg color, notice color
#code review
#Download Schools and add in Seed
#Pagination
#Remove unwanted files and name the file correctly
#Add test case
#Add read me
#deploy in heroku
#deploy in github
#deploy in docker
#add screenshots in the Github
#breadcrumbs
#validate sql injection
