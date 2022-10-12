ALTER TABLE db_version CHANGE COLUMN required_14060_01_mangos_waypoint_path_name required_14061_01_mangos_command bit;

DELETE FROM command WHERE name IN ('bot add', 'bot self');

INSERT INTO `command`(`name`, `security`, `help`) VALUES
('bot add',0,'Syntax: .bot add [$botname]\r\nAdd bot to world.'),
('bot self',2,'Syntax: .bot self\r\nEnable or disable playerbot AI on current logged player. Client side only.');