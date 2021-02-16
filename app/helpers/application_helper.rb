module ApplicationHelper
  def a_link(label, url = nil, **args, &block)
    args[:style] = 'border: 1px solid red;'

    if block_given?
      url = label
    end

    locals = {
      label: label,
      url: url,
      args: args,
    }

    if block_given?
      render layout: 'layouts/a_link', locals: locals do
        capture(&block)
      end
    else
      render partial: 'layouts/a_link', locals: locals
    end
  end
end
