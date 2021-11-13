class BackController < ApplicationController
  layout 'admin_layout'
  before_action :require_login
end
