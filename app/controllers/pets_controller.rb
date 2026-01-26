class PetsController < ApplicationController

  # A callback to set up an @pet object to work with 
  before_action :set_pet, only: [:show, :edit, :update, :destroy]
  before_action :check_login
  authorize_resource

  def index
    # get data on all pets and paginate the output to 10 per page
    @active_pets = Pet.active.alphabetical.paginate(page: params[:page]).per_page(10)
    @inactive_pets = Pet.inactive.alphabetical.to_a

    # render template[:index]
    # layout 'application'
  end

  def show
    # Show the pet's details using id; done with before_action
    # @pet = Pet.find(params[:id])

    # get the last 10 visits for this pet
    @recent_visits = @pet.visits.chronological.last(10).to_a

    # render template[:show]
    # layout 'application'
  end

  def new
    # create an empty pet object to populate with data
    @pet = Pet.new

    # render template[:new]
    # layout 'application'
  end

  def edit
    # get @pet... before_action does the following:
    # @pet = Pet.find(params[:id])
    # render template[:edit]
    # layout 'application'
  end

  def create
    # create a pet object with filtered parameters
    @pet = Pet.new(pet_params)
    # attempt to save the pet object
    if @pet.save
      # if save happened, redirect to pets#show for this new pet
      redirect_to pet_path(@pet), notice: "Successfully added #{@pet.name} as a PATS pet."
    else
      # re-render the new action with the errors displayed
      render action: 'new'
    end
  end

  def update
    # a similar process to #create
    if @pet.update(pet_params)
      redirect_to @pet, notice: "Updated #{@pet.name}'s information"
    else
      render action: 'edit'
    end
  end

  def destroy
    # find the pet object with before_action first
    @pet.destroy
    # redirect back to the pets#index listing
    redirect_to pets_url, notice: "Removed #{@pet.name} from the PATS system"
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_pet
    @pet = Pet.find(params[:id])
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def pet_params
    params.require(:pet).permit(:name, :animal_id, :owner_id, :female, :date_of_birth, :active)
  end

end
