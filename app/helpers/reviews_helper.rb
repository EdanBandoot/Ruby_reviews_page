module ReviewsHelper
  def satisfaction_color(level)
    case level.downcase
    when "very satisfied" then "success"
    when "satisfied" then "primary"
    when "neutral" then "warning"
    when "unsatisfied" then "danger"
    when "very unsatisfied" then "dark"
    else "secondary"
    end
  end

  def importance_color(level)
    case level.downcase
    when "very important" then "danger"
    when "important" then "warning"
    when "somewhat important" then "info"
    when "neutral" then "secondary"
    when "not at all important" then "light text-dark"
    else "secondary"
    end
  end
end
