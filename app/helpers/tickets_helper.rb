module TicketsHelper
	def mailto_link(content, options = {})
		href = "mailto:#{u(options[:to])}?subject=#{u(options[:subject])}&body=#{u(options[:body])}&cc=#{u(options[:cc])}"
		content_tag("a", content.to_s, :href => href)
	end
 
end
