class FortunesController < ApplicationController
  # GET /fortunes
  # GET /fortunes.json
  
  helper_method :sort_column, :sort_direction
  def index
    @fortunes = Fortune.order(sort_column + " " + sort_direction).page(params[:page]).per_page(10).search(params[:search], params[:page])
    @activities = PublicActivity::Activity.last(5)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fortunes }
    end
  end

  # GET /fortunes/1
  # GET /fortunes/1.json
  def show
    @fortune = Fortune.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fortune }
    end
  end

  # GET /fortunes/new
  # GET /fortunes/new.json
  def new
    @fortune = Fortune.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fortune }
    end
  end

  # GET /fortunes/1/edit
  def edit
    @fortune = Fortune.find(params[:id])
  end

  # POST /fortunes
  # POST /fortunes.json
 def create
    @fortune = Fortune.new(params[:fortune])
    if current_user
    @fortune.user_username = current_user.username
    else
    @fortune.user_username = current_usersocial[:name]
    end

    respond_to do |format|
      if @fortune.save
        format.html { redirect_to @fortune, notice: 'Piosenka pozytywnie stworzona' }
        format.json { render json: @fortune, status: :created, location: @fortune }
      else
        format.html { render action: "new" }
        format.json { render json: @fortune.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fortunes/1
  # PUT /fortunes/1.json
  def update
    @fortune = Fortune.find(params[:id])

    respond_to do |format|
      if @fortune.update_attributes(params[:fortune])
        format.html { redirect_to @fortune, notice: 'Piosenka pozytywnie zaktualizowana.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fortune.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fortunes/1
  # DELETE /fortunes/1.json
  def destroy
    @fortune = Fortune.find(params[:id])
    @fortune.destroy

    respond_to do |format|
      format.html { redirect_to fortunes_url, notice: 'Piosenka usunieta.' }
      format.json { head :no_content }
    end
  end
  private
  
  def sort_column
    Fortune.column_names.include?(params[:sort]) ? params[:sort] : "wykonawca"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
