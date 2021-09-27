class LibrariesController < ApplicationController

    def index       # метод для отображения библиотек
        @library = Library.all
    end

    def new         # метод для добавления новых библиотек
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
        
        if(@library.update(library_params))                           
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
        # проверка на сохранение библиотек в базу данных
        # render plain: params[:library].inspect

        @library = Library.new(library_params)     # обращаемся к нужной модели

        if(@library.save)                           # сохраняет в бд
            redirect_to @library                   # перенаправляет в метод show 
        else
            render 'edit'
        end
    end

    private

    def library_params
        params.require(:library).permit(:name, :country, :body)  # разрешает поля
    end


end