class AboutPageController < ApplicationController
  def index
    @about = AboutPage.find(1)
    @contact = Contact.find(1)
  end
end
