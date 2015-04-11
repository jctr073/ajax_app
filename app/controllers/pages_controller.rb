class PagesController < ApplicationController
  def index
  end

  def msg
    static_data = {msg: "This is static text sent from the page controller"}
    respond_to do |format|
      format.html { render :html => static_data[:msg] }
      format.json { render :json => static_data.to_json }
    end
  end

  def list_animals
    @animals = Animal.all
    respond_to do |format|
      format.html { render :html => @animals.to_a }
      format.json { render :json => @animals }
    end
  end

  def insert_animal
    @animal = Animal.new(animal_params)
    @animal.save
    list_animals
  end

  private
    def animal_params
      params.require(:animal).permit(:species)
    end
end
