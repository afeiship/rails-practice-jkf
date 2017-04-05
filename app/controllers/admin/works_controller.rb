class Admin::WorksController < ApplicationController
  layout 'layouts/admin'
  
  before_action :authericate_user!
  before_action :set_admin_work, only: [:show, :edit, :update, :destroy]

  # GET /admin/works
  # GET /admin/works.json
  def index
    @admin_works = Admin::Work.all
  end

  # GET /admin/works/1
  # GET /admin/works/1.json
  def show
  end

  # GET /admin/works/new
  def new
    @admin_work = Admin::Work.new
  end

  # GET /admin/works/1/edit
  def edit
  end

  # POST /admin/works
  # POST /admin/works.json
  def create
    @admin_work = Admin::Work.new(admin_work_params)

    respond_to do |format|
      if @admin_work.save
        format.html { redirect_to @admin_work, notice: 'Work was successfully created.' }
        format.json { render :show, status: :created, location: @admin_work }
      else
        format.html { render :new }
        format.json { render json: @admin_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/works/1
  # PATCH/PUT /admin/works/1.json
  def update
    respond_to do |format|
      if @admin_work.update(admin_work_params)
        format.html { redirect_to @admin_work, notice: 'Work was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_work }
      else
        format.html { render :edit }
        format.json { render json: @admin_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/works/1
  # DELETE /admin/works/1.json
  def destroy
    @admin_work.destroy
    respond_to do |format|
      format.html { redirect_to admin_works_url, notice: 'Work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_work
      @admin_work = Admin::Work.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_work_params
      params.require(:admin_work).permit(:title, :desc, :image)
    end
end
