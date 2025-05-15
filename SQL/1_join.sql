SELECT room_id,
	FLOOR(AVG(rating)) as rating
FROM Reviews a
	join reservations b on a.reservation_id = b.id
GROUP by room_id;
