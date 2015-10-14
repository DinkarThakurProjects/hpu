module ApplicationHelper
  def truncate_middle( string, options = {} )
    options[:omission] = "...#{string[-5, 5]}"    # Use last 5 chars of string.

    truncate( string.html_safe, options )
  end
end
