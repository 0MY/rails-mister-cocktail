module ApplicationHelper
  def yield_with_default(holder, default)
    if content_for?(holder)
      # le .squish permet de supprimer tous les espaces,
      # sauts de ligne (\n) et tabulations (\t)
      content_for(holder).squish
    else
      default
    end
  end
end
