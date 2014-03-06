module TopVotedHelper
  def generate_title
    string = "Top "
    if @language
      string += @language.name.capitalize
    end
    if @category
      string += ' ' + @category.name.capitalize.pluralize
    else
      string += ' Resources'
    end
    return string
  end
end
