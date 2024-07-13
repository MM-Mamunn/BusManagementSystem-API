
CREATE OR REPLACE FUNCTION total_distance(_page INT, _limit INT,fromm date, too date)
RETURNS JSON AS $$
DECLARE
	_users JSON = NULL::JSON;
	_page INT = coalesce(_page, 1);
	_limit INT = coalesce(_limit, 10);
	_date1 Date= coalesce(fromm,'2022-01-01');
	 _date2 Date= coalesce(too,'2025-01-01');
	
BEGIN
	_users = (
		SELECT JSON_AGG(u) 
		FROM (
		select driver_id,sum(distance) from trip natural join route  where date >= _date1 and date <= _date2 group by driver_id
			LIMIT _limit
			OFFSET (_page - 1) * _limit
		) u
	)::JSON;
	
	RETURN JSON_BUILD_OBJECT(
		'status', 'success',
		'users', _users
	);
END;
$$ LANGUAGE plpgsql;

select total_distance(2,4,'2023-01-01','2023-12-30')
