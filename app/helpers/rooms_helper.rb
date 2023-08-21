module RoomsHelper

	def rooms__redirect(id)
		room = Room.find_by(user_id: id)
		if room.present?
			return room.id
		else
			room = Room.find_by(sender_id: id)
			if room.present?
				return room.id
			end
		end
	end
end
