def path_to(page_name)
    case page_name
    when /the home\s?page/
    '/'
    when /the project page for "([^\"]*)"/
      project_path(Project.find_by_name!($1))
    end
end

def with_scope(locator,css_type=nil)
   locator = convert_locator_to_css(locator,css_type) if locator and css_type
end

 def convert_locator_to_css(locator,css_type)
    locator = locator.downcase.gsub(" ","-")
   return locator if locator =~ /^[.#]/
    css_type==:css_class ? ".#{locator}" : "##{locator}"
 end
