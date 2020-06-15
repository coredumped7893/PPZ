<?php exit; ?>
1592258029
SELECT m.*, u.user_colour, g.group_colour, g.group_type FROM (phpbbmoderator_cache m) LEFT JOIN phpbbusers u ON (m.user_id = u.user_id) LEFT JOIN phpbbgroups g ON (m.group_id = g.group_id) WHERE m.display_on_index = 1
6
a:0:{}