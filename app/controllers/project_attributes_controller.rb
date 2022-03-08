class ProjectAttributesController < ApplicationController
  before_action :set_project_attribute, only: %i[ show edit update destroy ]

  # GET /project_attributes or /project_attributes.json
  def index
    @project_attributes = ProjectAttribute.all
  end

  # GET /project_attributes/1 or /project_attributes/1.json
  def show
  end

  # GET /project_attributes/new
  def new
    @project_attribute = ProjectAttribute.new
  end

  # GET /project_attributes/1/edit
  def edit
  end

  # POST /project_attributes or /project_attributes.json
  def create
    @project_attribute = ProjectAttribute.new(project_attribute_params)

    respond_to do |format|
      if @project_attribute.save
        format.html { redirect_to project_attribute_url(@project_attribute), notice: "Project attribute was successfully created." }
        format.json { render :show, status: :created, location: @project_attribute }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_attributes/1 or /project_attributes/1.json
  def update
    respond_to do |format|
      if @project_attribute.update(project_attribute_params)
        format.html { redirect_to project_attribute_url(@project_attribute), notice: "Project attribute was successfully updated." }
        format.json { render :show, status: :ok, location: @project_attribute }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_attributes/1 or /project_attributes/1.json
  def destroy
    @project_attribute.destroy

    respond_to do |format|
      format.html { redirect_to project_attributes_url, notice: "Project attribute was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_attribute
      @project_attribute = ProjectAttribute.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_attribute_params
      params.require(:project_attribute).permit(:title, :datatype, :required)
    end
end
