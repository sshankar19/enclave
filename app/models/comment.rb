class Comment < ActiveRecord::Base
  FORMATS = %w(markdown html)

  extend Enumerize
  belongs_to :discussion
  belongs_to :author, class_name: 'Member'
  validates :body, presence: true

  default_scope { order('created_at ASC') }

  enumerize :format, in: FORMATS, default: :markdown

  def formatted_body
    html = case format
    when 'markdown'
      markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
      markdown.render(body)
    else
      format
    end
    html.html_safe
  end
end
