class FilesAppsController < ApplicationController
  before_action :set_files_app, only: [:show, :edit, :update, :destroy]

  # GET /files_apps
  def index
    @files_apps = FilesApp.all
  end

  # GET /files_apps/1
  def show
  end

  # GET /files_apps/new
  def new
    @files_app = FilesApp.new
  end

  # GET /files_apps/1/edit
  def edit
  end

  # POST /files_apps
  def create
    @files_app = FilesApp.new(files_app_params)

    if @files_app.save
      # redirect_to @files_app, notice: 'Files app was successfully created.'
      redirect_to @files_app.avatar.url(:thumb)
    else
      render :new
    end
  end

  # PATCH/PUT /files_apps/1
  def update
    if @files_app.update(files_app_params)
      redirect_to @files_app, notice: 'Files app was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /files_apps/1
  def destroy
    @files_app.destroy
    redirect_to files_apps_url, notice: 'Files app was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_files_app
      @files_app = FilesApp.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def files_app_params
      params[:files_app].permit(:avatar)
    end
end
