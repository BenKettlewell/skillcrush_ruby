class Notes
	
	attr_accessor :title, :reminder	

	def complete
		return '. CHECK.'
	end

end

first_note = Notes.new
first_note.title = "Buy milk"
note_title = first_note.title

first_note.reminder = "Sunday @ 10am"
reminder_time = first_note.reminder

puts "#{note_title} - #{reminder_time}#{first_note.complete}"