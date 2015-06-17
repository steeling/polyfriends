class SearchesController < ApplicationController

  autocomplete :coach, :first_name

  def search
    Coach.all
    redirect_to coaches_path
  end
end
