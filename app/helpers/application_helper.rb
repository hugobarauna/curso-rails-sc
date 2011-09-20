module ApplicationHelper
  # Render a 'p' content_tag for each flash message
  #   <div class="flash">
  #     <p class="message notice">message</p>
  #   </div>
  #
  def render_flash_messages
    return if flash.empty?

    content = ''
    flash.each do |key, message|
      next if message.blank? || !message.is_a?(String)
      content << content_tag(:p, message, :class => "message #{key}")
    end

    content_tag :div, :class => 'flash' do
      content.html_safe
    end
  end
end