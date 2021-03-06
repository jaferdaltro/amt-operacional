class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]
  before_action :logged_in_user
  before_action :require_same_user, only: %i[edit udate destroy]
  before_action :require_admin, except: [:index, :show]

  def show; end

  def index
    @articles = Article.order(pinned: :desc, created_at: :desc)
  end

  def new
    @article = Article.new
  end

  def edit; end

  def create
    @article = Article.create!(get_params)
    @article.user = current_user
    if @article.save
      flash[:notice] = 'Article was created successfully.'
      redirect_to @article
    else
      flash[:danger] = 'Houve um problema na publicação'
      render 'new'
    end
  end

  def update
    if @article.update(get_params)
      flash[:notice] = 'Article was edited successfuly.'
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def get_params
    params.require(:article).permit(:title, :content, :pinned)
  end

  def require_same_user
    if @article.user != current_user && !current_user.admin? 
      flash[:danger] = 'Mexa só no que é seu!'
      redirect_to @article
    end
  end



end
