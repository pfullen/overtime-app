module Post1sHelper


	def status_label status
		case status
		when 'submitted'
			content_tag(:span, status, class: 'label label-primary')
		when 'approved'
			content_tag(:span, status, class: 'label label-success')
		when 'rejected'
			content_tag(:span, status, class: 'label label-danger')
		end
	end
end
