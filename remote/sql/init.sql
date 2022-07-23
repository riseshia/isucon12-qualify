DELETE FROM tenant WHERE id > 100;
DELETE FROM visit_history WHERE created_at >= '1654041600';
UPDATE id_generator SET id=2678400000 WHERE stub='a';
ALTER TABLE id_generator AUTO_INCREMENT=2678400000;

-- ALTER TABLE `tenant` ADD INDEX `idx_tenant_name` (`name`);
-- ALTER TABLE `visit_history` ADD INDEX `idx_history_tid_cid_cat` (`tenant_id`, `competition_id`, `created_at`);

DROP TABLE IF EXISTS `billing_report`;
CREATE TABLE `billing_report` (
  `tenant_id` BIGINT NOT NULL,
  `competition_id` VARCHAR(255) NOT NULL,
  `competition_title` TEXT NOT NULL,
  `player_count` INT NOT NULL,
  `visitor_count` INT NOT NULL,
  `billing_player_yen` INT NOT NULL,
  `billing_visitor_yen` INT NOT NULL,
  `billing_yen` INT NOT NULL,
  INDEX `idx_tid_cid` (`tenant_id`, `competition_id`)
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8mb4;
