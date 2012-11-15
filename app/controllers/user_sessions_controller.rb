class UserSessionsController < ApplicationController

  # GET /user_sessions/new
  # GET /user_sessions/new.xml
  def new
    @user_session = UserSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @user_session }
    end
  end

  # POST /user_sessions
  # POST /user_sessions.xml
  def create
    @user_session = UserSession.new(params[:user_session])
    
    respond_to do |format|
      if @user_session.save 
        format.html { redirect_to(:fortunes, :notice => 'Zalogowany!') }
        format.xml { render :xml => @user_session, :status => :created, :location => @user_session }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @user_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_sessions/1
  # DELETE /user_sessions/1.xml
  def destroy
    @user_session = UserSession.find
    @user_session.destroy

    respond_to do |format|
      format.html { redirect_to(:root, :notice => 'Wylogowany!') }
      format.xml { head :ok }
    end
  end

  def createfb
    session[:current_user] = {:image => request.env['omniauth.auth'][:info][:image],:name => request.env['omniauth.auth'][:info][:name]}
    respond_to do |format|
    format.html { redirect_to (:fortunes, :notice => 'Zalogowany!') }
    format.xml { head :ok }
    end
  end

  def destroyfb
    session.delete(:current_user)
    redirect_to root_path
  end
end
