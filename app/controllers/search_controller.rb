class SearchController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:query]
  def query

  end
end
