class ThemesController < ApplicationController
  def show
    @theme = Theme.friendly.find(params[:id])
  end
end
