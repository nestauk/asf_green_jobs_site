module ApplicationHelper
  def third_to_words(rating)
    case rating
    when 'high'
      'highest'
    when 'mid'
      'middle'
    when 'low'
      'lowest'
    end
  end
end
