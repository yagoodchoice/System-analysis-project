SELECT ROUND(
		(
			(
			SELECT count(*)
			FROM (
				SELECT user_id
				FROM Reservations
				UNION
				SELECT owner_id
				FROM Reservations,
					Rooms
				WHERE room_id = Rooms.id
				) t
			) / (
				SELECT count(*)
				FROM Users
			) * 100
		),
		2
	) as percent
