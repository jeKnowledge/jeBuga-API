module StringHelper

  def trim_parentheses(s)
    while s.gsub!(/\([^()]*\)/,""); end
    s.strip
  end

end
