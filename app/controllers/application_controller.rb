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
    path = params[:path]
    path = "#{path}.slim" if path.end_with?(".slim")
    render path, layout: false
  end

  def views_index
    views_root = Rails.root.join('app/views')
    css_root = Rails.root.join('app/assets/stylesheets')
    js_root = Rails.root.join('app/assets/javascripts')
    
    list = Dir["#{views_root}/**/*.slim"]
    .map{|s| 
      s = s.gsub("#{views_root}/", "").gsub(/\.slim/, "")
      "/views/#{s}"
       }

      list = list + Dir["#{css_root}/**/*"]
    .map{|s| 
      s = s.gsub("#{css_root}/", "").gsub(/\.scss/, "").gsub(/\.sass/, "")
      if !s.end_with?(".css")
        s = s + ".css"
      end
      s = "/assets/#{s}"
      s
       }

      list = list + Dir["#{js_root}/**/*"]
    .map{|s| 
      s = s.gsub("#{js_root}/", "").gsub(/\.coffee/, "")
      if !s.end_with?(".js")
        s = s + ".js"
      end
      s = "/assets/#{s}"
      s
       }
    
    render inline: list.map{|link| "<a href='#{link}'>#{link}</a>" }.join("\n")
  end
end
