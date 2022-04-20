
INSERT INTO `species` (`id`, `name`) VALUES
(1,	'Chat'),
(2,	'Chien'),
(3,	'Lapin'),
(4,	'Rongeurs');

INSERT INTO `department` (`id`, `number`, `name`) VALUES		
(1,	'0',	'01 - Ain'),
(2,	'0',	'02 - Aisne'),
(3,	'0',	'03 - Allier'),
(4,	'0',	'04 - Alpes-de-Haute-Provence'),
(5,	'0',	'05 - Hautes-alpes'),
(6,	'0',	'06 - Alpes-maritimes'),
(7,	'0',	'07 - Ardèche'),
(8,	'0',	'08 - Ardennes'),
(9,	'0',	'09 - Ariège'),
(10,	'0',	'10 - Aube'),
(11,	'0',	'11 - Aude'),
(12,	'0',	'12 - Aveyron'),
(13,	'0',	'13 - Bouches-du-Rhône'),
(14,	'0',	'14 - Calvados'),
(15,	'0',	'15 - Cantal'),
(16,	'0',	'16 - Charente'),
(17,	'0',	'17 - Charente-maritime'),
(18,	'0',	'18 - Cher'),
(19,	'0',	'19 - Corrèze'),
(20,	'0',	'2A - Corse-du-sud'),
(21,	'0',	'2B - Haute-Corse'),
(22,	'0',	'21 - Côte-d\'Or'),
(23,	'0',	'22 - Côtes-d\'Armor'),
(24,	'0',	'23 - Creuse'),
(25,	'0',	'24 - Dordogne'),
(26,	'0',	'25 - Doubs'),
(27,	'0',	'26 - Drôme'),
(28,	'0',	'27 - Eure'),
(29,	'0',	'28 - Eure-et-loir'),
(30,	'0',	'29 - Finistère'),
(31,	'0',	'30 - Gard'),
(32,	'0',	'31 - Haute-garonne'),
(33,	'0',	'32 - Gers'),
(34,	'0',	'33 - Gironde'),
(35,	'0',	'34 - Hérault'),
(36,	'0',	'35 - Ille-et-vilaine'),
(37,	'0',	'36 - Indre'),
(38,	'0',	'37 - Indre-et-loire'),
(39,	'0',	'38 - Isère'),
(40,	'0',	'39 - Jura'),
(41,	'0',	'40 - Landes'),
(42,	'0',	'41 - Loir-et-cher'),
(43,	'0',	'42 - Loire'),
(44,	'0',	'43 - Haute-loire'),
(45,	'0',	'44 - Loire-atlantique'),
(46,	'0',	'45 - Loiret'),
(47,	'0',	'46 - Lot'),
(48,	'0',	'47 - Lot-et-garonne'),
(49,	'0',	'48 - Lozère'),
(50,	'0',	'49 - Maine-et-loire'),
(51,	'0',	'50 - Manche'),
(52,	'0',	'51 - Marne'),
(53,	'0',	'52 - Haute-marne'),
(54,	'0',	'53 - Mayenne'),
(55,	'0',	'54 - Meurthe-et-moselle'),
(56,	'0',	'55 - Meuse'),
(57,	'0',	'56 - Morbihan'),
(58,	'0',	'57 - Moselle'),
(59,	'0',	'58 - Nièvre'),
(60,	'0',	'59 - Nord'),
(61,	'0',	'60 - Oise'),
(62,	'0',	'61 - Orne'),
(63,	'0',	'62 - Pas-de-calais'),
(64,	'0',	'63 - Puy-de-dôme'),
(65,	'0',	'64 - Pyrénées-atlantiques'),
(66,	'0',	'65 - Hautes-Pyrénées'),
(67,	'0',	'66 - Pyrénées-orientales'),
(68,	'0',	'67 - Bas-rhin'),
(69,	'0',	'68 - Haut-rhin'),
(70,	'0',	'69 - Rhône'),
(71,	'0',	'70 - Haute-saône'),
(72,	'0',	'71 - Saône-et-loire'),
(73,	'0',	'72 - Sarthe'),
(74,	'0',	'73 - Savoie'),
(75,	'0',	'74 - Haute-savoie'),
(76,	'0',	'75 - Paris'),
(77,	'0',	'76 - Seine-maritime'),
(78,	'0',	'77 - Seine-et-marne'),
(79,	'0',	'78 - Yvelines'),
(80,	'0',	'79 - Deux-sèvres'),
(81,	'0',	'80 - Somme'),
(82,	'0',	'81 - Tarn'),
(83,	'0',	'82 - Tarn-et-Garonne'),
(84,	'0',	'83 - Var'),
(85,	'0',	'84 - Vaucluse'),
(86,	'0',	'85 - Vendée'),
(87,	'0',	'86 - Vienne'),
(88,	'0',	'87 - Haute-vienne'),
(89,	'0',	'88 - Vosges'),
(90,	'0',	'89 - Yonne'),
(91,	'0',	'90 - Territoire de belfort'),
(92,	'0',	'91 - Essonne'),
(93,	'0',	'92 - Hauts-de-seine'),
(94,	'0',	'93 - Seine-Saint-Denis'),
(95,	'0',	'94 - Val-de-marne'),
(96,	'0',	'95 - Val-d\Oise'),
(97,	'0',	'971 - Guadeloupe'),
(98,	'0',	'972 - Martinique'),
(99,	'0',	'973 - Guyane'),
(100,	'0',	'974 - La réunion'),
(101,	'0',	'976 - Mayotte');




INSERT INTO `association`(`id`,`name`,`description`,`siren`,`street`,`zip_code`,`city`,`phone_number`,`email`,`active`) VALUES (1,'O\’Refuge','Toute jeune association, recueillant les petits compagnons de notre fine équipe, de leurs camarades, et aussi de leur corps enseignant.','598211735','67 Rue Henri Dunant','92700','Colombes','0147200001','contact@orefuge.fr',0);
INSERT INTO `association`(`id`,`name`,`description`,`siren`,`street`,`zip_code`,`city,phone_number`,`email`,`active`) VALUES (2,'1000 Moustaches','L\’association 1000 Moustaches œuvre depuis mars 2020 au bien être animal à son échelle. Nous prenons en charge les animaux abandonnés pour les proposer à l’adoption, une fois vaccinés, stérilisés et identifiés. Nous menons, en parallèle, diverses actions de sensibilisation du public sur le bien-être, l’environnement et la santé des chiens, chats et autres NACs.','882620628','37 rue des Colverts','44118','La Chevrollière','0781525455','1000moustaches@gmail.com',0);
INSERT INTO `association`(`id`,`name`,`description`,`siren`,`street`,`zip_code`,`city,phone_number`,`email`,`active`) VALUES (3,'SPA Brugeas','L\'association Société protectrice des animaux est, en France, la plus ancienne des sociétés de protection des animaux, sociétés œuvrant dans le domaine de la protection animale.','775691991','9 bis La Boucharde','03700','Brugheas','0470324342','brugheas@la-spa.fr',0);



INSERT INTO `user` (`id`, `pseudo`, `email`, `password`, `active`, `roles`, `association_id`) VALUES
(1,	'admin',	'admin@admin.com',	'$2y$13$rI53W6ngwXU7RKhRKcheUu3VeByV8LcY3FKMLeKkXlFlpGUDN0mPu',	1,	'[\"ROLE_ADMIN\"]',	NULL),
(2,	'association',	'association@association.com',	'$2y$13$Wwo6UdqNiPtch/xI7Dg9bOGkeaiWwvp/BIYrQH1GLCFqBYpouYTvy',	1,	'[\"ROLE_ASSOCIATION\"]',	NULL),
(3,	'user',	'user@user.com',	'$2y$13$s5XZoIFczj/24jOvze/B4.M2FrJw02JmQZ4Z2o559u6B/WZcnuevS',	1,	'[\"ROLE_USER\"]',	NULL);




INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (1,'Baudelaire',1,'Baudelaire1160422.jpeg',6,0,0,0,0,'lapin nain câlin mais avec un sacré caractère (il a le coup de patte mécontent assez facile). Il vit uniquement pour la nourriture.',93,3,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (2,'Rorschach',1,'Rorschach1160422.jpg',2,0,0,0,1,'Jeune lapin sociable et avenant avec l''humain qui pourra cohabiter avec des enfants respectueux. Nous ne connaissons pas ses ententes avec les autres animaux. Il pourra vivre en maison ou en appartement.',93,3,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (3,'Caramel',1,'Caramel1190422.jpg',2,0,0,1,0,'Véritable peluche, il se laisse porter et câliner sans difficulté ! D''une gourmandise sans fin, faites attention a ne rien laisser tomber sinon il y a de grandes chances qu''il en fasse son festin :) Il s''entend très bien avec d''autres lapins et il n''a pas peur des enfants qui eux vont sans doute l''adorer ! Il apprécie grandement d''être hors de sa cage, et aussi à l''extérieur.',93,3,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (4,'Fripouille',1,'Fripouille1190422.jpg',2,1,0,1,0,'Sous ses airs mignons ce lapins tête de lion est un grognon dans l''âme. Plutôt sauvage, vous aurez de grandes difficultés à l''attraper pour lui faire des câlins, mais une fois dans les bras il y reste quand même un peu... Sans être agressif, il n''est pas forcément conseillé pour les enfants qui préférerons un animal plus calin.',93,3,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (5,'Maëstro',1,'lapin1.jpg',3,0,0,1,0,'Acheté dans une animalerie...mais malheureusement ma maitresse est tombée allergique de moi! Je suis donc à la recherche d''un foyer qui me donnera de l''amoure. Je suis très sage, je me laisse manipuler, j''ai un poil très doux, je connais les chiens, chats et enfants.',45,3,2);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (6,'Jeannot',1,'lapin2.jpg',4,0,0,0,0,'Lapin très curieux, un peu timide. Il aura besoin d’une liberté totale (ou cage ouverte en permanence) avec accès à l’extérieur si possible.',45,3,2);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (7,'Hunter',0,'lapin3.jpg',2,1,1,1,0,'Sensible et timide. Elle aura besoin d''un foyer doux et calme afin de la mettre en confiance. Un brossage quotidien sera nécessaire.',45,3,2);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (8,'Caerbannog',0,'lapin4.jpg',3,1,1,0,1,'Gentille petite lapine abandonnée directement au refuge car ses propriétaires n''étaient pas en mesure de la garder ! Elle recherche donc la famille en mesure de l''assumer pour la vie',45,3,2);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (9,'Kisscool',0,'lapin5.jpg',4,1,0,0,0,'C''est un  lapin gentil, il vivait en appartement mais avait l''habitude d''une vie en semi liberté. Par contre il a tendance a charger nos pieds, on évitera donc les jeunes enfants.',45,3,2);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (10,'Duracell',1,'lapin6.jpg',1,1,1,1,0,'Duracell est indépendant et aime le calme, car il reste craintif.',04,3,3);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (11,'Bugs',1,'Lapin7.jpg',5,0,0,1,1,'Petit malicieux, il adore les pâtes crues, mais aussi les cables électriques.',04,3,3);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (12,'Tiketak',1,'rongeurs1.jpg',2,1,1,1,1,'Petit compagnon super sympa et affectueux.',04,4,3);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (13,'Mimi',0,'rongeurs2.jpg',1,0,0,1,0,'Jeune souris née en 2021. Un peu timide mais se laisse manipuler',04,4,3);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (14,'Hamsterzilla',1,'rongeurs3.jpg',2,1,1,1,0,'Quelque peu caractériel, il n''aime pas beaucoup que l''on le réveille de sa sieste.',04,4,3);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (15,'Bruce',1,'Bruce1160422.jpg',1,0,0,0,0,'Très calme, peureux, mais joueur, il tient dans la poche mais comme la mini : il a tout d''un grand !',93,2,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (16,'Groo',1,'Groo1160422.png',1,1,0,0,0,'Vous êtes sportif ? Vous vivez en maison ? Vous avez beaucoup de temps à consacrer à votre future compagnon ? Venez rencontrer notre petit clown aux yeux tendres !',93,2,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (17,'Jungle',0,'Jungle1160422.jpg',8,0,0,1,1,'Péteuse invétérée et peureuse comme tout.',93,2,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (18,'Seika',0,'Seika1160422.jpg',1,0,0,0,0,'Adorable, n''écoute rien, gourmande, inépuisable.',93,2,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (19,'Snö',1,'Snö1160422.jpg',12,0,1,1,0,'Un papi de 12 ans qui adore les grasses mat, le soleil et MANGER (lui aussi c''est de famille) ... ^^il est très câlin :) Il n''est pas DU TOUT sociable avec les autres chiens parce qu''il s''est fait attaquer une fois . Les enfants calmes ça passe et les chats ça dépend ... Il lui faut une période d''adaptation :-D',93,2,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (20,'Zelda',0,'Zelda1160422.jpg',15,0,0,1,0,'Croisée Border / Porte et Fenêtre, elle s''avère d''un calme olympien et est trés sociable. Elle n''est néanmoins pas très joueuse.',93,2,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (21,'Nikki',0,'Nikki1190422.jpg',4,0,0,1,1,'Petit Spitz, sa joyeuse présence ne passe pas inaperçue dans la maison. Tour à tour joueuse ou câline, elle ravit toute la famille. Elle est plus réservée envers les étrangers. Elle aime faire de longues promenades.',93,2,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (22,'Sisi',0,'Sisi1190422.jpg',1,0,1,1,0,'Très sociable avec les adultes comme avec les enfants, elle aura besoin de beaucoup se dépenser au vu de son tempéremment  hyperactive.',93,2,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (23,'Orengo',1,'chien1.jpg',3,1,0,0,0,'Ce gros chien aura besoin d''espace mais aussi de beaucoup d''amour qu''il pourra vous donner en retour .',04,2,3);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (24,'Pif',1,'chien2.jpg',7,0,0,0,0,'Malgré une opération suite à un accident, Sparow est joueur et dynamique, et pourra faire des balades dans des limites raisonnables.',45,2,2);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (25,'Snoupy',1,'chien3.jpg',9,0,0,0,0,'Retrouvé divaguant sur la voie publique, Snoupy aura besoin d''un adoptant aguerri, qui lui donnera des bases d''éducation positive. Nous avons pu voir des progrès au sein du refuge déjà. Méfiant au premier abord, puis quand il donne sa confiance, il est à l''écoute et souhaite nous faire plaisir. Il devient alors affectueux et extrêmement joueur.',45,2,2);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (26,'Rintintin',1,'chien4.jpg',3,0,0,0,0,'Rintintin s’épanouira avec des maîtres adeptes de sports et activités canines, suffisamment présents quotidiennement.',45,2,2);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (27,'Rex',0,'chien5.jpg',5,0,0,0,1,'Dynamique, sociable avec les autres chiens, il connait aussi les chats. Habituée également à vivre avec des enfants.',04,2,3);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (28,'Milou',1,'chien6.jpg',4,1,1,1,0,'Petit chien malin et aventureux.',04,2,3);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (29,'Alonzo',1,'Alonzo1160422.jpg',3,0,0,0,0,'Jeune chat à la curiosité exacerbée, Alonzo ne laissera pas un coin de votre maison inexplorée. Hyper sociable, il s''entend avec les autres chats (autres animaux non testés) et les humains de tout âge et ne reste pas séparé d''eux par une porte bien longtemps!',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (30,'André La Goutte',1,'André1160422.jpeg',4,0,1,1,1,'Quand il est content, il ronronne très fort et il bave (d’où son nom). Il adore les câlins et est un peu gros. Très pratique en tant que support d’iPad pour regarder sa série préférée en toute tranquillité.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (31,'Arthur',1,'Arthur1160422.jpg',8,1,0,1,1,'Aime manger, dormir, manger, jouer avec les proies des autres chats, dormir sur les humains et miauler juste pour faire savoir qu''il est là. Avenant mais peureux, fier mais complètement maladroit.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (32,'Floki',1,'Floki1160422.jpg',4,0,0,0,0,'C''est un chat très docile, très gentil, il n''a jamais griffé personne et se laisse manipuler très facilement. En revanche, il n''est pas très câlin, il est toujours près de nous mais il évite les contacts directs. C''est un chat d''intérieur mais il adore sortir dans le jardin et supporte très bien le harnais. Il est sociable avec les autres chats et les chiens.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (33,'Floyd',0,'Floyd1160422.png',6,1,1,1,0,'La pauvre avait été abandonnée. Elle adore manger et n''aime pas trop jouer ^^ elle préfère la sieste. Elle aime bien les chiens sûrement parce qu''elle vit avec Snö mais n''aime pas trop les autres chats et les enfants',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (34,'Gipsy',0,'Gipsy1160422.jpg',1,1,0,0,0,'Petite boule noire trouvée abandonnée au pied d''une gouttière, son nom lui vient de l''araignée d''une comptine pour enfant. Nourrie au biberon les premiers jours, elle est vite passée aux croquettes après en avoir croqué toutes les tétines! Elle aura besoin d''un chat bien dans ses pattounes pour finaliser son sevrage.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (35,'Hector',1,'Hector1160422.jpg',10,1,0,0,0,'Il a peur de tous sauf des chiens, et n''aime pas trop les câlins sauf quand il faut le brosser, là il bave partout tellement il aime ça ; et les boulettes de papier aussi il aime ça.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (36,'Iron',1,'Iron1160422.jpeg',1,1,1,1,1,'Monsieur très craintif, il refuse pour le moment le contact avec les humains, il aura besoin d''un environnement calme sans enfants.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (37,'June',0,'June1160422.jpg',10,1,0,1,0,'Quelque peu sauvage et craintive, mais néanmons câline une fois sa confiance obtenue. Elle est un peu sensible aux changements et n''hésietra pas à démontrer son mécontentement.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (38,'Kim',0,'Kim1160422.jpg',11,0,0,1,0,'Une vraie pot de colle et chamallow. Elle passe son temps à réclamer des câlins et qu''on la rejoigne au lit par des petits roucoulements. Elle adore les barbes.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (39,'Kimy',0,'Kimy1160422.jpg',8,0,0,1,0,'Passe-temps favoris : dormir et manger. Adore les grattouilles sur le ventre et le cou. Très câline et communicative, elle répond quand on lui parle et s''adresse à nous quand elle veut nous faire comprendre quelque chose. Joueuse, adore jouer à cache cache avec ses humains favoris.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (40,'Kiwi',0,'Kiwi1160422.jpg',8,1,1,0,1,'Chatte de 8 ans confiée à l''asso car elle se faisait martyriser par les autres chats.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (41,'Leeloo',0,'Leeloo1160422.jpg',5,0,1,0,0,'Elle aime bien raler aussi mais par contre adore les calins et jouer avec des rubans (la galere a Noël je vous jure). Elle a aussi une malformation a la pate gauche (les coussinets ont fusionés, elle n''a que 2 doigts).',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (42,'Leïa',0,'Leïa1160422.jpg',5,1,0,1,0,'Elle râle tout le temps et n''aime les câlins que quand elle a envie, elle fait des high-five et après elle mordille.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (43,'Machine',0,'Machine1160422.jpg',8,0,0,1,1,'Machine est une chatte adorable qui vivait auprès d''une personne senior. Elle est calme, affectueuse et super sympa. Elle adore être sur les genoux pour faire des câlins. Elle devrait pouvoir s''acclimater à une vie en appartement.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (44,'Mimi',0,'Mimi1160422.jpg',1,1,1,1,1,'Arrivée chez moi depuis dimanche et planquée dans mon faux-plafond depuis 2 jours...',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (45,'Nell',0,'Nell1160422.jpg',6,0,0,1,1,'Petite minette qui adore boire au robinet et s''ébouriffe à la moindre caresse.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (46,'Note',0,'Note1160422.jpg',5,0,0,1,0,'Adorable, très bonne escaladeuse (on ne compte pas la descente sur son esclave via l''escabot). Sinon, elle aime être câlinée, et est très joueuse.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (47,'Ostrogadski',0,'Ostrogadski1160422.jpg',3,1,1,1,0,'Grosse mémère d''appartement qui se prend pour un chat sauvage.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (48,'Souiri',1,'Souiri1160422.jpg',1,1,0,0,0,'Chaton gris souris, Souiri à l''énergie de son âge et ne reste pas en place. Sociable, il aime jouer avec ses congénères... Qu''ils en aient envie ou non ! S''il n''aime pas être porté éveillé, il viendra profiter de la chaleur de vos genoux pour faire un petit somme.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (49,'Virgile',1,'Virgile1160422.jpg',15,0,0,1,0,'Gros Matou tout doux ! Le petit père est habitué à une vie de pacha. Peu enclin à l''étonnement de par son expérience, il n''hésite pas à venir réclamer quelques gratouilles, mais aussi et surtout des croquettes.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (50,'Houppy',0,'Houppy1190422.jpg',9,0,1,1,0,'Une grosse madame, câline, mais seulement quand elle veut notamment le matin. Elle adore qu''on lui gratte la tête et miaule beaucoup.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (51,'Snow',1,'Snow1190422.jpg',1,0,0,0,1,'Chat du Bengale albinos. C''est un chat affectueux, et très joueur. Il a besoin d''être beaucoup stimulé pour ne pas s''ennuyer. Un extérieur est indispensable à son bien-être.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (52,'Aéris',0,'Aéris1190422.jpg',7,0,0,0,0,'Aéris est très câline et curieuse, elle aime passer du temps avec ses colocataires, c''est une très bonne compagne pour le télétravail. Elle a besoin d''un extérieur, elle aime chasser.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (53,'Flocon',1,'Flocon1190422.jpg',7,1,0,1,0,'Chat très affectueux avec qui saura prendre du temps pour gagner sa confiance. Il n''est pas recommandé avec des enfants en bas âge pour son bien être car il peut avoir peur de trop de bruit ou d''agitation.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (54,'Nano',0,'Nano1190422.jpg',3,0,1,1,0,'Elle est très câline, très collante, elle suit son frère partout, et passe des demies journées entières à dormir sur moi en ronronnant. Elle est collante avec tous les humains, en revanche elle est peureuse avec les autres animaux. Mais elle tolère la présence d''autres chiens et chats, même si elle ne les approche pas, elle peut rester dans la même pièce.',93,1,1);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (55,'Hercule',1,'chat1.jpg',12,1,1,0,0,'Hercule est un chat très craintif de l''homme, sa sociabilisation sera à faire en douceur. Pour son bien être il devra pouvoir avoir un accès à l''extérieur.',45,1,2);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (56,'Garfield',1,'chat2.jpg',9,1,1,1,1,'Garfield est un matou câlin avec son petit caractère, monsieur n''aime pas toujours être contrarié !',45,1,2);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (57,'Sylvestre',1,'chat3.jpg',5,0,1,0,0,'C''est un chat très affectueux qui s''adaptera facilement dans nouveau foyer.',04,1,3);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (58,'Tom',1,'chat4.jpg',7,0,1,0,0,'Balou est un chat calin mais qui aime sa tranquillité. il ne devra pas vivre avec de jeunes enfants car il a le coup de patte facile.',04,1,3);
INSERT INTO animal(id,name,gender,image_name,age,child_compatibility,other_animal_compatibility,garden_needed,status,description,department_id,species_id,association_id) VALUES (59,'Mad',0,'chat5.jpg',14,1,1,1,0,'Chatte très craintive. Elle ne se laisse pas approcher, il lui faut une famille très patiente.',04,1,3);





