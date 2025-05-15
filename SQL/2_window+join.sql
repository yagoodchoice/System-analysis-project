SELECT DISTINCT room_id,
	first_VALUE(end_date) over (
		PARTITION BY room_id
		ORDER BY end_date desc
	) as end_date,
	first_VALUE(name) over (
		PARTITION BY room_id
		ORDER BY end_date desc
	) as name
FROM Reservations a
	join Users b on a.user_id = b.id


