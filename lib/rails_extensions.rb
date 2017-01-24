class NilClass
	def to_date_time
		"-"
	end
end

class ActiveSupport::TimeWithZone	
	def to_date_time(iso="IN")
		self.in_time_zone(TZInfo::Country.get(iso).zone_identifiers.first).strftime("%d-%b-%Y, %I:%M %p")
	end
end