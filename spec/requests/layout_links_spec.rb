require 'spec_helper'

describe "LayoutLinks" do

    it "should have a Homepage at '/'" do
      get '/'
      response.should have_selector('title', :content => "Home")
    end

    it "should have a Contact page at '/contact'" do
      get '/contact'
      response.should have_selector('title', :content => "Contact")  
    end

    it "should have a Contact page at '/help'" do
      get '/help'
      response.should have_selector('title', :content => "Contact")  
    end
end
