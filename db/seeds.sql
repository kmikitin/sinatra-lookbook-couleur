INSERT INTO users (name, username, password_digest, email, palette_id) VALUES ('Kait Mikitin', 'kmikitin', 'kait', 'kait.mikitin@gmail.com', 12);
INSERT INTO users (name, username, password_digest, email, palette_id) VALUES ('Kayla Ancrum', 'kancrum', 'kayla', 'indie_bindi@hotmail.com', 6);




INSERT INTO palettes (name) VALUES ('Light Spring');
INSERT INTO palettes (name) VALUES ('Clear Spring');
INSERT INTO palettes (name) VALUES ('Warm Spring');
INSERT INTO palettes (name) VALUES ('Light Summer');
INSERT INTO palettes (name) VALUES ('Soft Summer');
INSERT INTO palettes (name) VALUES ('Cool Summer');
INSERT INTO palettes (name) VALUES ('Deep Autumn');
INSERT INTO palettes (name) VALUES ('Soft Autumn');
INSERT INTO palettes (name) VALUES ('Warm Autumn');
INSERT INTO palettes (name) VALUES ('Deep Winter');
INSERT INTO palettes (name) VALUES ('Clear Winter');
INSERT INTO palettes (name) VALUES ('Cool Winter');


--spring light
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Deep Sky Blue', '#5DADEC', 1);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Granny Smith Green', '#A8E4A0', 1);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Pink', '#F78FA7', 1);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Light Grey', '#D3D3D3', 1);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Light Red', '#E58E73', 1);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Turquoise', '#40E0D0', 1);
--spring clear 
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Navy Blue', '#1B03A3', 2);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Golden Yellow', '#FFDF00', 2);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Dark Grey', '#808080', 2);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Salmon Pink', '#D7837F', 2);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Medium Green', '#4CBB17', 2);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Strawberry', '#FF404C', 2);
--spring warm
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Coral', '#CA7E65', 3);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Dark Coral', '#CA5B53', 3);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Muted Forest Green', '#6E8444', 3);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Medium Blue', '#31868B', 3);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Warm Brown', '#5A3927', 3);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Carmel', '#CB9343', 3);
--summer light
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Sky Blue', '#A1E9F2', 4);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Dark Lavender', '#8170D0', 4);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Medium Turquoise', '#4FBB88', 4);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Steel Blue', '#6078C7', 4);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Mauve', '#A994DC', 4);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Soft Steel', '#B6C5CD', 4);
--summer soft
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Deep Lavender', '#704E8B', 5);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Sea Green', '#3F7B54', 5);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Muted Burgundy', '#8B636A', 5);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Steel Sky Blue', '#689494', 5);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Neutral Gold', '#F4E794', 5);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Pink Coral', '#b96693', 5);
--summer cool
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Dark Plum', '#5A3D6D', 6);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Aqua', '#65C4BB', 6);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Maroon', '#672940', 6);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Dark Navy Blue', '#282B57', 6);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Seaweed', '#3F8469', 6);
INSERT INTO colors (color_name, hex, palette_id) VALUES ('Gray', '#929293', 6);
--autumn deep
INSERT INTO colors (color_name, palette_id) VALUES ('Dark Carmel', '#DB943F', 7);
INSERT INTO colors (color_name, palette_id) VALUES ('Muted Maroon', '#933F3B', 7);
INSERT INTO colors (color_name, palette_id) VALUES ('Metallic Blue', '#2B3863', 7);
INSERT INTO colors (color_name, palette_id) VALUES ('Dark Violet', '#320B3E', 7);
INSERT INTO colors (color_name, palette_id) VALUES ('Dark Leafy Green', '#043311', 7);
INSERT INTO colors (color_name, palette_id) VALUES ('Steel Leaf', '#56614A', 7);
--autumn soft
INSERT INTO colors (color_name, palette_id) VALUES ('Dark Mauve', '#76607F', 8);
INSERT INTO colors (color_name, palette_id) VALUES ('Blush Mauve', '#B07870', 8);
INSERT INTO colors (color_name, palette_id) VALUES ('Steel Aqua', '#6CA5A7', 8);
INSERT INTO colors (color_name, palette_id) VALUES ('Silver Blue', '#30597D', 8);
INSERT INTO colors (color_name, palette_id) VALUES ('Muted Dark Green', '#2D492D', 8);
INSERT INTO colors (color_name, palette_id) VALUES ('Beige Pink', '#C9AC99', 8);
--autumn warm
INSERT INTO colors (color_name, palette_id) VALUES ('Red Brown', '#913221', 9);
INSERT INTO colors (color_name, palette_id) VALUES ('Algae', '#405925', 9);
INSERT INTO colors (color_name, palette_id) VALUES ('Sand Beige', '#A28263', 9);
INSERT INTO colors (color_name, palette_id) VALUES ('Beige Coral', '#A66753', 9);
INSERT INTO colors (color_name, palette_id) VALUES ('Sand', '#BE9A73', 9);
INSERT INTO colors (color_name, palette_id) VALUES ('Cappuccino', '#603311', 9);
--winter deep
INSERT INTO colors (color_name, palette_id) VALUES ('Dark Purple', '#452E5F', 10);
INSERT INTO colors (color_name, palette_id) VALUES ('Fuchsia', '#9B427E', 10);
INSERT INTO colors (color_name, palette_id) VALUES ('Navy Green', '#043734', 10);
INSERT INTO colors (color_name, palette_id) VALUES ('Mute Fuchsia', '#6E3343', 10);
INSERT INTO colors (color_name, palette_id) VALUES ('Silver Navy', '#28344E', 10);
INSERT INTO colors (color_name, palette_id) VALUES ('Metal', '#454D4E', 10);
--winter clear
INSERT INTO colors (color_name, palette_id) VALUES ('Light Lavender', '#D7D3F2', 11);
INSERT INTO colors (color_name, palette_id) VALUES ('Lego Blue', '#3071A4', 11);
INSERT INTO colors (color_name, palette_id) VALUES ('Mute Emerald', '#3B935D', 11);
INSERT INTO colors (color_name, palette_id) VALUES ('Royal Blue', '#000963', 11);
INSERT INTO colors (color_name, palette_id) VALUES ('Barbie Pink', '#D84A83', 11);
INSERT INTO colors (color_name, palette_id) VALUES ('Black Green', '#002908', 11);
--winter cool
INSERT INTO colors (color_name, palette_id) VALUES ('Mute Sapphire', '#22488F', 12);
INSERT INTO colors (color_name, palette_id) VALUES ('Blue Turquoise', '#417EA3', 12);
INSERT INTO colors (color_name, palette_id) VALUES ('Silver Violet', '#9082A0', 12);
INSERT INTO colors (color_name, palette_id) VALUES ('Dark Turquoise', '#11493F', 12);
INSERT INTO colors (color_name, palette_id) VALUES ('Mauve Lavender', '#5E3247', 12);
INSERT INTO colors (color_name, palette_id) VALUES ('Cotton Candy Pink', '#F2DAE3', 12);



