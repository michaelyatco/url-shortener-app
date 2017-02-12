class LinksController < ApplicationController

  def index
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    render "new.html.erb"
  end

  def show
    render "show.html.erb"
  end

  def edit
    render "edit.html.erb"
  end

  def update
    render "edit.html.erb"
  end

  def delete
    redirect_to "/links"
  end
  
end
