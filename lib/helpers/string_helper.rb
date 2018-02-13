module StringHelper

  def trim_parentheses(x)
    while x.gsub!(/\([^()]*\)/,""); end
    x
  end

end
