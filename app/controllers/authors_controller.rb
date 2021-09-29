# frozen_string_literal: true

class AuthorsController < ApplicationController
  # method to display all authors
  def index
    @author = Author.all
  end

  # method to add new authors
  def new
    @author = Author.new
  end

  def show
    @author = Author.find(params[:id])
  end

  def edit
    @author = Author.find(params[:id])
    redirect_to @author
  end

  def update
    @author = Author.find(params[:id])

    if @author.update(author_params)
      redirect_to @author
    else
      render 'edit'
    end
  end

  def destroy
    @author = Author.find(params[:id])

    @author.destroy
    redirect_to author_path
  end

  def create
    # check for saving author to the database
    # render plain: params[:author].inspect

    # call the model
    @author = Author.new(author_params)

    # save in database
    if @author.save
      # redirect to show method
      redirect_to @author
    else
      render 'edit'
    end
  end

  private

  # allow fields
  def author_params
    params.require(:author).permit(:name, :surname, :country)
  end
end
