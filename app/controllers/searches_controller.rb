class SearchesController < CoachesController

  autocomplete :coach, :first_name

  def search
    Coach.all
  end
end
