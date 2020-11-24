CREATE DATABASE homesData;
use homesData;

CREATE TABLE IF NOT EXISTS homes (
    `id` int AUTO_INCREMENT,
    `Sell` VARCHAR(3) CHARACTER SET utf8,
    `List` INT,
    `Living` INT,
    `Rooms` INT,
    `Beds` INT,
    `Baths` INT,
    `Age` INT,
    `Acres` NUMERIC(3, 2),
    `Taxes` INT,
    PRIMARY KEY (`id`)
);
INSERT INTO homes(Sell,List,Living,Rooms,Beds,Baths,Age,Acres,Taxes) VALUES
    ('142', 160, 28, 10, 5, 3,  60, 0.28,  3167),
    ('175', 180, 18,  8, 4, 1,  12, 0.43,  4033),
    ('129', 132, 13,  6, 3, 1,  41, 0.33,  1471),
    ('138', 140, 17,  7, 3, 1,  22, 0.46,  3204),
    ('232', 240, 25,  8, 4, 3,   5, 2.05,  3613),
    ('135', 140, 18,  7, 4, 3,   9, 0.57,  3028),
    ('150', 160, 20,  8, 4, 3,  18, 4.00,  3131),
    ('207', 225, 22,  8, 4, 2,  16, 2.22,  5158),
    ('271', 285, 30, 10, 5, 2,  30, 0.53,  5702),
    (' 89',  90, 10,  5, 3, 1,  43, 0.30,  2054),
    ('153', 157, 22,  8, 3, 3,  18, 0.38,  4127),
    (' 87',  90, 16,  7, 3, 1,  50, 0.65,  1445),
    ('234', 238, 25,  8, 4, 2,   2, 1.61,  2087),
    ('106', 116, 20,  8, 4, 1,  13, 0.22,  2818),
    ('175', 180, 22,  8, 4, 2,  15, 2.06,  3917),
    ('165', 170, 17,  8, 4, 2,  33, 0.46,  2220),
    ('166', 170, 23,  9, 4, 2,  37, 0.27,  3498),
    ('136', 140, 19,  7, 3, 1,  22, 0.63,  3607),
    ('148', 160, 17,  7, 3, 2,  13, 0.36,  3648),
    ('151', 153, 19,  8, 4, 2,  24, 0.34,  3561),
    ('180', 190, 24,  9, 4, 2,  10, 1.55,  4681),
    ('293', 305, 26,  8, 4, 3,   6, 0.46,  7088),
    ('167', 170, 20,  9, 4, 2,  46, 0.46,  3482),
    ('190', 193, 22,  9, 5, 2,  37, 0.48,  3920),
    ('184', 190, 21,  9, 5, 2,  27, 1.30,  4162),
    ('157', 165, 20,  8, 4, 2,   7, 0.30,  3785),
    ('110', 115, 16,  8, 4, 1,  26, 0.29,  3103),
    ('135', 145, 18,  7, 4, 1,  35, 0.43,  3363),
    ('567', 625, 64, 11, 4, 4,   4, 0.85, 12192),
    ('180', 185, 20,  8, 4, 2,  11, 1.00,  3831),
    ('183', 188, 17,  7, 3, 2,  16, 3.00,  3564),
    ('185', 193, 20,  9, 3, 2,  56, 6.49,  3765),
    ('152', 155, 17,  8, 4, 1,  33, 0.70,  3361),
    ('148', 153, 13,  6, 3, 2,  22, 0.39,  3950),
    ('152', 159, 15,  7, 3, 1,  25, 0.59,  3055),
    ('146', 150, 16,  7, 3, 1,  31, 0.36,  2950),
    ('170', 190, 24, 10, 3, 2,  33, 0.57,  3346),
    ('127', 130, 20,  8, 4, 1,  65, 0.40,  3334),
    ('265', 270, 36, 10, 6, 3,  33, 1.20,  5853),
    ('157', 163, 18,  8, 4, 2,  12, 1.13,  3982),
    ('128', 135, 17,  9, 4, 1,  25, 0.52,  3374),
    ('110', 120, 15,  8, 4, 2,  11, 0.59,  3119),
    ('123', 130, 18,  8, 4, 2,  43, 0.39,  3268),
    ('212', 230, 39, 12, 5, 3, 202, 4.29,  3648),
    ('145', 145, 18,  8, 4, 2,  44, 0.22,  2783),
    ('129', 135, 10,  6, 3, 1,  15, 1.00,  2438),
    ('143', 145, 21,  7, 4, 2,  10, 1.20,  3529),
    ('247', 252, 29,  9, 4, 2,   4, 1.25,  4626),
    ('111', 120, 15,  8, 3, 1,  97, 1.11,  3205),
    ('133', 145, 26,  7, 3, 1,  42, 0.36,  3059),
    (' ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);