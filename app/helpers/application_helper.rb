module ApplicationHelper
  def flash_context(level)
    case level
      when 'notice' then :info
      when 'success' then :success
      when 'error' then :danger
      when 'alert' then :warning
    end
  end
end
