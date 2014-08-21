class SearchController < ApplicationController
  def index
    keyword = params[:keyword]

    if member = Member.find_by(name: keyword)
      redirect_to member
    else
      @results = Search.for(keyword)
    end

  end
end