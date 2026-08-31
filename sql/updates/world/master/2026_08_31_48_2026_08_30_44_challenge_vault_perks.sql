CREATE TABLE IF NOT EXISTS `perks_program_vendor_item` (
  `vendor_item_id` INT NOT NULL,
  `item_id` INT NOT NULL DEFAULT 0,
  `price` INT NOT NULL DEFAULT 100,
  `mount_id` INT NOT NULL DEFAULT 0,
  `battle_pet_species_id` INT NOT NULL DEFAULT 0,
  `transmog_set_id` INT NOT NULL DEFAULT 0,
  `toy_id` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`vendor_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `perks_program_vendor_item` (`vendor_item_id`, `item_id`, `price`, `mount_id`, `battle_pet_species_id`, `transmog_set_id`, `toy_id`) VALUES
(1, 138019, 100, 0, 0, 0, 0),
(2, 44178, 250, 0, 0, 0, 0),
(3, 52200, 250, 0, 0, 0, 0),
(4, 79771, 150, 0, 0, 0, 0),
(5, 128311, 200, 0, 0, 0, 0),
(6, 163121, 200, 0, 0, 0, 0)
ON DUPLICATE KEY UPDATE `price` = VALUES(`price`);
