module ApplicationHelper
  def greenness_bg(rating)
    case rating
    when 'high'
      ' bg-emerald-700 text-white'
    when 'mid-high'
      ' bg-lime-700 text-white'
    when 'low-mid'
      ' bg-cyan-700 text-white'
    when 'low'
      ' bg-amber-700 text-white'
    end
  end
end
