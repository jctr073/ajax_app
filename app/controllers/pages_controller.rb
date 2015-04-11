class PagesController < ApplicationController
  def index
  end

  def msg

    data = {from: "Server", msg: "ajax hello in json", dataType: "json"}
    puts data
    puts data.to_json

    respond_to do |format|
      format.html { render :html => "hello (html) from server\n" }
      format.json { render :json => data.to_json }
    end
  end

  def get_animals
    @animals = Animal.all

    respond_to do |format|
      format.json { render :json => @animals }
    end
  end
end
