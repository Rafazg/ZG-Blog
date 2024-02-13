class TagsController < ApplicationController
    def posts
      # Implemente a lógica para recuperar os posts associados a uma tag aqui
      @tag = Tag.find(params[:id])
      @posts = @tag.posts

        respond_to do |format|
            format.html # Mantenha a resposta HTML para acessos diretos
            format.js   # Adicione a resposta JS
        end

    end
end