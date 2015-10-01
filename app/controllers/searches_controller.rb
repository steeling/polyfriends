class SearchesController < ApplicationController
  respond_to :json
  autocomplete :coach, :first_name

  JSON_RETURN_LENGTH = 10
  def search_all
    byebug
    @results = PgSearch.multisearch(params[:content])
    respond_to do |format|
      format.json { @results.first JSON_RETURN_LENGTH }
      format.html { render 'results' }
    end
  end

  # def autocomplete

  # end

  private

  def search_params
    params.require(:search).permit(:content)
  end
end



# <%= form_tag test_path, remote: true, method: :post do |f| %>
#   <%= text_field_tag :search, params[:search], onkeyup: "$(this).parent('form').submit();"%>
# <% end %>