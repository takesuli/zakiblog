class ZakiblogsController < ApplicationController
  
    before_action :move_to_index, except: :index
    def index
      @article_blogs = Article.all.page(params[:page]).per(10).order("id DESC")
    end

    def new
    end

    def create
      Article.create(article_params)
      redirect_to root_path
    end

    private
        def article_params
          params.permit(:name, :image, :text)
        end

        def move_to_index
        redirect_to action: :index unless user_signed_in?
        end
end