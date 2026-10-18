module MoviesHelper
    def sort_table(column)
        columns = ["title", "rating", "description", "release_date"]
        selected_column = columns.include?(params[:sort]) ? params[:sort] : "title"
        direction = params[:direction] == "desc" ? "desc" : "asc"

        if column == selected_column
            "sorted-#{direction}"
        end
    end


    def sort_symbol(column)
        if sort_table(column) == "sorted-asc"
            "▲"
        elsif sort_table(column) == "sorted-desc"
            "▼"
        end
    end
end
