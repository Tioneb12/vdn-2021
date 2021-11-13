class Back::ThemesController < BackController
  before_action :theme, only: [:edit, :update, :destroy]

  def index
    @themes = Theme.all
  end

  def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.new(theme_params)
    if @theme.save
      redirect_to admin_themes_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @theme.update(theme_params)
      redirect_to admin_themes_path
    else
      render :edit
    end
  end

  def destroy
    @theme.destroy!
    redirect_to admin_themes_path
  end

  private

  def theme
    @theme = Theme.friendly.find(params[:id])
  end

  def theme_params
    params.require(:theme).permit(
      :title,
      :description,
      :slug,
      :meta_robots_index,
      :meta_robots_follow,
      :meta_title,
      :meta_description,
      :statut
    )
  end
end

