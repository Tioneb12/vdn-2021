class Back::PostsController < BackController
  before_action :set_user, only: [:index, :new, :create]
  before_action :set_post, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to admin_user_posts_path(@user), notice: "L'article a bien été créé"  }
      else
        format.html { render :new, status: :unprocessable_entity}
      end
    end
  end

  def edit; end

  def update
    if @post.update(post_params)
      redirect_to admin_user_posts(@user)
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to admin_themes_path
  end

  private

  def post_params
    params.require(:post).permit(
    :title,
    :excerpt,
    :body,
    :slug,
    :statut,
    :meta_robots_index,
    :meta_robots_follow,
    :meta_title,
    :meta_description,
    :user_id,
    :created_at,
    :updated_at,
    theme_ids: []
    )
  end

  def set_user
    @user = User.friendly.find(params[:user_id])
  end

  def set_post
    @post = Post.friendly.find(params[:id])
  end

end
