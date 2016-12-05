class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # include ActionView::Helpers::OutputSafetyHelper
  # include ActionView::Helpers::AssetUrlHelper
  # include ActionView::Helpers::TagHelper
  # include ActionView::Helpers::UrlHelper
  # include Cms::Helpers::PagesHelper
  # include Cms::Helpers::MetaDataHelper
  # include Cms::Helpers::NavigationHelper
  # include Cms::Helpers::ActionView::UrlHelper

  def render_not_found
    render template: "errors/not_found.html.slim"
  end

  def show_view
    render params[:path], layout: false
  end

  def views_index
    views_root = Rails.root.join('app/views')
    list = Dir["#{views_root}/**/*.slim"]
    .map{|s| 
      s.gsub("#{views_root}/", "")
       }
    
    render inline: list.map{|link| "<a href='/views/#{link}'>#{link}</a>" }.join("\n")
  end
end
