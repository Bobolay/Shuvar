class PagesController < ApplicationController
  before_action :set_page_instance, except: [:index]

  self.layout "home"

  def main
  #   set_page_metadata(:home)
  end

  def top

  end

  def product_one

  end

  def product_one_filters

  end

  def analytics_main

  end

  def analytics_price

  end

  def analytics_volume

  end

  def analytics_production

  end

  def analytics_foreign

  end

  def news

  end

  def news_one

  end

  def about_us

  end  

  def contacts

  end  

  private

  def set_page_instance
  #   set_page_metadata(action_name)
  end
end