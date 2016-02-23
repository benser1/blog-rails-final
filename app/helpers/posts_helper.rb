module PostsHelper

  def last_updated(post)
    post.updated_at.strftime("%A, %b %e, at %l:%M %p")
  end

  def sortable(column, title = nil)
    title ||= column.titleize
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, :sort => column, :direction => direction
  end




end ## class end
