module MoviesHelper
    def sort_table(column)
        columns = ["title", "rating", "description", "release_date"]
        selected_column = columns.include?(params[:sort]) ? params[:sort] : "title"
        direction = params[:direction] == "asc" ? "desc" : "asc"

        if column == selected_column
            "sorted-#{direction}"
        end
    end
end
