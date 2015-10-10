class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  #　TODO: アプリ全体に権限管理を実装する（CanCanの権限管理が動作していないアクションの場合、例外を発生させる）
  # check_authorization

  # 例外処理
  # CanCan例外
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
end
