# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # すべてのリクエストの冒頭でロケールを設定する
  before_action :set_locale

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  # すべてのURL生成用のグローバルなデフォルトパラメータを設定する
  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end
end
