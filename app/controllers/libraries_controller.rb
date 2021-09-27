# frozen_string_literal: true

class LibrariesController < ApplicationController
  # method to display all libraries
  def index
    @library = Library.all
  end

  # method to add new libraries
  def new
    @library = Library.new
  end

  def show
    @library = Library.find(params[:id])
  end

  def edit
    @library = Library.find(params[:id])
    redirect_to @library
  end

  def update
    @library = Library.find(params[:id])

    if @library.update(library_params)
      redirect_to @library
    else
      render 'edit'
    end
  end

  def destroy
    @library = Library.find(params[:id])

    @library.destroy
    redirect_to libraries_path
  end

  def create
    # check for saving libraries to the database
    # render plain: params[:library].inspect

    # call the model
    @library = Library.new(library_params)

    # save in database
    if @library.save
      # redirect to show method
      redirect_to @library
    else
      render 'edit'
    end
  end

  private

  # allow fields
  def library_params
    params.require(:library).permit(:name, :country, :body)
  end
end
