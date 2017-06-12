class Post < ActiveRecord::Base
	enum status: { submitted: 0, approved: 1, rejected: 2 }
		belongs_to :user
		#validates_presence_of :date, :rationale, :overtime_request
	
		validates :overtime_request, numericality: { greater_than: 0.0 }
	
		scope :posts_by, ->(user) { where(user_id: user.id) }

		PHONE_REGEX = /\A[0-9]*\z/

		validates_format_of :phone, with: PHONE_REGEX

		validates :phone, lengeth: {is: 10}
	
		#after_save :confirm_audit_log, if: :submitted?
		#after_save :un_confirm_audit_log, if: :rejected?
	
		#private
	
			#def confirm_audit_log
				#audit_log = AuditLog.where(user_id: self.user_id, start_date: (self.date - 7.days..self.date)).last
				#audit_log.confirmed! if audit_log
			#end
	
			#def un_confirm_audit_log
				#audit_log = AuditLog.where(user_id: self.user_id, start_date: (self.date - 7.days..self.date)).last
				#audit_log.pending! if audit_log
			#end
	end