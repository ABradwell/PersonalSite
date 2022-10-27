
INSERT INTO CONTENT_TYPE(content_type_value) VALUES
('EMPLOYMENT'), ('PROJECT'), ('ARTICLE') ;

INSERT INTO TAG(tag_value) VALUES
('Website Development'), ('Image Processing'), ('Backend / Terminal'), ('Interactive'), ('Graphics'), ('Robotic'),
('CO-OP'), ('Government'), ('Private Sector'), ('Public Sector'), ('Research'), ('Project Design'), ('Architecture');


INSERT INTO EMPLOYMENT(company_name, position_title, job_description, location, start_date, end_date, image_src) VALUES
    ('Government of Canada, Department of Fisheries and Oceans', 'Website Development Project Lead', 'TBD', 'Ottawa, Ontario, Canada', 'May 2022', 'August 2022', 'work_logos/canada-logo.png'),
    ('Microchip Semiconductor Inc.', 'Embedded Software Developer (CO-OP Position)', 'TBD', 'Kanata, Ontario, Canada', 'January 2021', 'August 2021', 'work_logos/microchip-round-logo.png'),
    ('National Research Council', 'Computer Vision Student Researcher (CO-OP Position)', 'TBD', 'Ottawa, Ontario, Canada', 'May 2020', 'August 2020', 'work_logos/nrc-logo.png'),
    ('Discover Year', 'Website Management', 'TBD', 'Ottawa, Ontario, Canada (VIRTUAL)', 'May 2021', 'Present', 'work_logos/discover-year-logo-2.png'),
    ('MentorU', 'Website Management', 'TBD', 'Ottawa, Ontario, Canada (VIRTUAL)', 'March 2020', 'Present', 'work_logos/mentor-u-logo-2.png'),
    ('University of Ottawa', 'Regional Mentor', 'TBD', 'Ottawa, Ontario, Canada', 'May 2019', 'April 2020', 'work_logos/uottawa-logo.png');

INSERT INTO CONTENT_TAG(content_type_id, content_id, tag_id) VALUES
    (1, 1, 1), (1, 1, 1), (1, 1, 1), (1, 1, 1), (1, 1, 1), (1, 1, 1), (1, 1, 1),
    (1, 2, 1), (1, 2, 1), (1, 2, 1), (1, 2, 1), (1, 2, 1), (1, 2, 1), (1, 2, 1),
    (1, 3, 2), (1, 3, 2), (1, 3, 2), (1, 3, 1), (1, 3, 2), (1, 3, 1), (1, 3, 2),
    (1, 4, 3), (1, 4, 3), (1, 4, 3), (1, 4, 1), (1, 4, 3), (1, 4, 1), (1, 4, 3),
    (1, 5, 4), (1, 5, 4), (1, 5, 4), (1, 5, 1), (1, 5, 4), (1, 5, 1), (1, 5, 4),
    (1, 6, 5), (1, 6, 5), (1, 6, 5), (1, 6, 1), (1, 6, 5), (1, 6, 1), (1, 6, 5);

INSERT INTO PROJECT(project_name , project_sub_title, project_image_str, highlighted) VALUES
('Python-Tensorflow Number Recognition', 'Neural Network trained to detect consistent-font numbers amongst large dataset complex images.', 'logo/number_recognition_logo.png', TRUE),
('OpenCV Live Hand-Tracker', 'Live OpenCV-Webcam live hand detection and motion tracking application.', 'logo/hand_tracker_logo.png', FALSE),
('Live-Feed Image Processor', 'Laptop webcam image processor, allowing user to stack filters to see combined post-proccessing results.', 'logo/video_morph_logo.png', TRUE),
('Simple Evolution', 'Single cell organisms battle for surival, using their randomly generated qualities to proove whose best!', 'logo/Evolution_logo.png', FALSE),
('Randomized Map Generation', 'Python-based 8-bit map generation, equipped with a little dog to live on the new land!', 'logo/map_generation_logo.png', FALSE),
('Automated Snake Game', 'Python3 based implementation using nylon graphics of an automated-snake game', 'logo/snake_game_logo.png', TRUE),
('Lights Out', 'Java implementation of the classic lights out game.', 'logo/lights_off_logo.png', FALSE),
('Walk-In Clinic Android App', 'Android studio-created app implementing firebase authentication and login', 'logo/walk_in_clinic_logo.png', FALSE);

INSERT INTO BLURB(title, blurb_content) VALUES
('Info One', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at est a augue condimentum pretium a a magna. Quisque pulvinar, lorem fermentum dignissim placerat, arcu erat sollicitudin magna, nec ullamcorper mauris erat pharetra ante. Cras a posuere diam. Aliquam dui nunc, consectetur vitae diam at, maximus consequat nisl. Suspendisse potenti. Integer ultrices pulvinar nisi. Aliquam eu tempor lacus. Aliquam erat volutpat. Proin scelerisque, magna ut ultricies ornare, libero felis fermentum nunc, non suscipit neque justo gravida augue. Phasellus convallis, lacus eget interdum sagittis, turpis neque consectetur arcu, tristique varius diam nulla nec urna.'),
('Info Two', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at est a augue condimentum pretium a a magna. Quisque pulvinar, lorem fermentum dignissim placerat, arcu erat sollicitudin magna, nec ullamcorper mauris erat pharetra ante. Cras a posuere diam. Aliquam dui nunc, consectetur vitae diam at, maximus consequat nisl. Suspendisse potenti. Integer ultrices pulvinar nisi. Aliquam eu tempor lacus. Aliquam erat volutpat. Proin scelerisque, magna ut ultricies ornare, libero felis fermentum nunc, non suscipit neque justo gravida augue. Phasellus convallis, lacus eget interdum sagittis, turpis neque consectetur arcu, tristique varius diam nulla nec urna.'),
('Info Three', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at est a augue condimentum pretium a a magna. Quisque pulvinar, lorem fermentum dignissim placerat, arcu erat sollicitudin magna, nec ullamcorper mauris erat pharetra ante. Cras a posuere diam. Aliquam dui nunc, consectetur vitae diam at, maximus consequat nisl. Suspendisse potenti. Integer ultrices pulvinar nisi. Aliquam eu tempor lacus. Aliquam erat volutpat. Proin scelerisque, magna ut ultricies ornare, libero felis fermentum nunc, non suscipit neque justo gravida augue. Phasellus convallis, lacus eget interdum sagittis, turpis neque consectetur arcu, tristique varius diam nulla nec urna.'),
('Info Four', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at est a augue condimentum pretium a a magna. Quisque pulvinar, lorem fermentum dignissim placerat, arcu erat sollicitudin magna, nec ullamcorper mauris erat pharetra ante. Cras a posuere diam. Aliquam dui nunc, consectetur vitae diam at, maximus consequat nisl. Suspendisse potenti. Integer ultrices pulvinar nisi. Aliquam eu tempor lacus. Aliquam erat volutpat. Proin scelerisque, magna ut ultricies ornare, libero felis fermentum nunc, non suscipit neque justo gravida augue. Phasellus convallis, lacus eget interdum sagittis, turpis neque consectetur arcu, tristique varius diam nulla nec urna.');

INSERT INTO CONTENT_BLURB(content_type_id, blurb_id, content_id) VALUES
(2, 1, 1), (2, 2, 1), (2, 3, 1), (2, 4, 1);

INSERT INTO CONTENT_TAG(content_type_id, content_id, tag_id) VALUES
    (2, 1, 1), (2, 1, 1), (2, 1, 1), (2, 1, 1), (2, 1, 1), (2, 1, 1), (2, 1, 1),
    (2, 2, 1), (2, 2, 1), (2, 2, 1), (2, 2, 1), (2, 2, 1), (2, 2, 1), (2, 2, 1),
    (2, 3, 1), (2, 3, 1), (2, 3, 1), (2, 3, 1), (2, 3, 1), (2, 3, 1), (2, 3, 1),
    (2, 4, 1), (2, 4, 1), (2, 4, 1), (2, 4, 1), (2, 4, 1), (2, 4, 1), (2, 4, 1),
    (2, 5, 1), (2, 5, 1), (2, 5, 1), (2, 5, 1), (2, 5, 1), (2, 5, 1), (2, 5, 1),
    (2, 6, 1), (2, 6, 1), (2, 6, 1), (2, 6, 1), (2, 6, 1), (2, 6, 1), (2, 6, 1),
    (2, 7, 1), (2, 7, 1), (2, 7, 1), (2, 7, 1), (2, 7, 1), (2, 7, 1), (2, 7, 1),
    (2, 8, 1), (2, 8, 1), (2, 8, 1), (2, 8, 1), (2, 8, 1), (2, 8, 1), (2, 8, 1);

INSERT INTO ARTICLE(article_title, article_subtitle, article_link, article_image_str) VALUES
('Estimating and Analyzing Gaze Points Using RGB Laptop Webcams', 'End-term report from my 4 month placement with the National Research Council of Canada.', '', 'article_images/rgb.png'),
('A Cross Cultural Analysis of Dry Sex in the Afro-Surinamese', 'A Cross Cultural Analysis of Dry Sex in the Afro-Surinamese', '', 'article_images/suriname.png'),
('Fears of Mother-Child Transmission Amongst HIV Positive Biological Women', 'A brief look at some of the pressures experienced by HIV positive women, with regards to childbirth and relationships.', '', 'article_images/hiv_mother.jpg'),
('Research Proposal: Measuring Self-esteem & Self-doubt Through Emotionally Charged Digital Surveys', 'A detailed proposal for an undergraduate research paper, where multiple choice questions are used to measure a participants self-esteem.', '', 'article_images/report.png'),
('The Dangers of Under-Trained and Overconfident Programmers', 'A warning piece on the direction of the computer science job market in the modern age.', '', 'article_images/undertrained.png'),
('Object-Oriented Programming; The (Im)Perfect Layman’s Code', 'A warning on the abundant reliance of object-oriented code.', '', 'article_images/oop.png');

INSERT INTO CONTENT_TAG(content_type_id, content_id, tag_id) VALUES
    (3, 1, 1), (3, 1, 1), (3, 1, 1), (3, 1, 1), (3, 1, 1), (3, 1, 1), (3, 1, 1),
    (3, 2, 1), (3, 2, 1), (3, 2, 1), (3, 2, 1), (3, 2, 1), (3, 2, 1), (3, 2, 1),
    (3, 3, 1), (3, 3, 1), (3, 3, 1), (3, 3, 1), (3, 3, 1), (3, 3, 1), (3, 3, 1),
    (3, 4, 1), (3, 4, 1), (3, 4, 1), (3, 4, 1), (3, 4, 1), (3, 4, 1), (3, 4, 1),
    (3, 5, 1), (3, 5, 1), (3, 5, 1), (3, 5, 1), (3, 5, 1), (3, 5, 1), (3, 5, 1),
    (3, 6, 1), (3, 6, 1), (3, 6, 1), (3, 6, 1), (3, 6, 1), (3, 6, 1), (3, 6, 1);