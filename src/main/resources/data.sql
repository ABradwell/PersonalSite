
INSERT INTO CONTENT_TYPE(content_type_value) VALUES
('EMPLOYMENT'), ('PROJECT'), ('ARTICLE') ;
--
--INSERT INTO TAG(tag_value) VALUES
--('Website Development'), ('Image Processing'), ('Backend / Terminal'), ('Interactive'), ('Graphics'), ('Robotic'),
--('CO-OP'), ('Government'), ('Private Sector'), ('Public Sector'), ('Research'), ('Project Design'), ('Architecture');
--

INSERT INTO EMPLOYMENT(company_name, position_title, job_description, location, start_date, end_date, image_src) VALUES
    ('Government of Canada, Department of Fisheries and Oceans', 'Website Development Project Lead', 'Oversaw internal-facing shared-development platform for department members to share their projects. Used SQL, Spring Boot, Java, JavaScript, CSS, HTML5, Azure Devops', 'Ottawa, Ontario, Canada', 'May 2022', 'August 2022', 'work_logos/canada-logo.png'),
    ('Microchip Semiconductor Inc.', 'Embedded Software Developer (CO-OP Position)', 'Redesigned and implemented testing platform for integrating timing microchips. Used TCL, Python, PyVisa, GPIB, Embedded Engineering Bits, Robot Framework', 'Kanata, Ontario, Canada', 'January 2021', 'August 2021', 'work_logos/microchip-round-logo.png'),
    ('National Research Council', 'Computer Vision Student Researcher (CO-OP Position)', 'Experimented with eye-tracking using a RGB webcam to detect early signs of Alzheimer’s Disease Used Java, Python, PyGaze, PyGame, Tensorflow', 'Ottawa, Ontario, Canada', 'May 2020', 'August 2020', 'work_logos/nrc-logo.png'),
    ('Discover Year', 'Website Management', 'Manage website design, updates, and development for a young upstart in the Ottawa area. Used HTML5, CSS, JavaScript', 'Ottawa, Ontario, Canada (VIRTUAL)', 'May 2021', 'Present', 'work_logos/discover-year-logo-2.png'),
    ('MentorU', 'Website Management', 'Manage website design, updates, and development for a young upstart in the Ottawa area. Used HTML5, CSS, JavaScript', 'Ottawa, Ontario, Canada (VIRTUAL)', 'March 2020', 'Present', 'work_logos/mentor-u-logo-2.png'),
    ('University of Ottawa', 'Regional Mentor', 'Assisted first-year students with their transition into the University of Ottawa community.Abilities Gained:</b> Public speaking, Presentation Development, Interdepartmental Relations', 'Ottawa, Ontario, Canada', 'May 2019', 'April 2020', 'work_logos/uottawa-logo.png');

INSERT INTO PROJECT(project_name , project_sub_title, project_image_str, project_github_str, highlighted) VALUES
('Python-Tensorflow Number Recognition', 'Neural Network trained to detect consistent-font numbers amongst large dataset complex images.', 'logo/number_recognition_logo.png', 'ABradwell/Number_recognition', TRUE),
('OpenCV Live Hand-Tracker', 'Live OpenCV-Webcam live hand detection and motion tracking application.', 'logo/hand_tracker_logo.png', 'ABradwell/Hand_Tracking', FALSE),
('Live-Feed Image Processor', 'Laptop webcam image processor, allowing user to stack filters to see combined post-proccessing results.', 'logo/video_morph_logo.png', 'ABradwell/Webcam_OpenCv_morph', TRUE),
('Simple Evolution', 'Single cell organisms battle for surival, using their randomly generated qualities to proove whose best!', 'logo/Evolution_logo.png', 'ABradwell/SingleCellSurvival', FALSE),
('Randomized Map Generation', 'Python-based 8-bit map generation, equipped with a little dog to live on the new land!', 'logo/map_generation_logo.png', 'ABradwell/Automated-Creatures', FALSE),
('Automated Snake Game', 'Python3 based implementation using nylon graphics of an automated-snake game', 'logo/snake_game_logo.png', 'ABradwell/SnakeGame', TRUE),
('Lights Out', 'Java implementation of the classic lights out game.', 'logo/lights_off_logo.png', 'ABradwell/Portfolio', FALSE),
('Walk-In Clinic Android App', 'Android studio-created app implementing firebase authentication and login', 'logo/walk_in_clinic_logo.png', 'ABradwell/Pear_Studios', FALSE);

INSERT INTO PROJECT_TAG(project_id, project_tag_value) VALUES
    (1, 'Python'), (1, 'TensorFlow'), (1, 'Computer Vision'), (1, 'OpenCV'),
    (2, 'Python'), (2, 'Movement Tracker'), (2, 'Computer Vision'), (2, 'OpenCV'),
    (3, 'Python'), (3, 'OpenCV'), (3, 'Webcam Processing'), (3, 'Interactive'),
    (4, 'Java'), (4, 'Probability & Stats'), (4, 'Simulation'),
    (5, 'Python'), (5, 'Simulation'), (5, 'PyGame'), (5, 'Interactive'),
    (6, 'Python'), (6, 'PyGame'), (6, 'Automation'),
    (7, 'Java'), (7, 'Java Graphics'), (7, 'Interactive'),
    (8, 'Java'), (8, 'Software Design'), (8, 'Firebase Database');

INSERT INTO PROJECT_SCREENSHOT(project_id, image_str) VALUES
    (1, 'number_recog/partA_example.gif'), (1, 'number_recog/training_numbers.png'), (1, 'number_recog/network_structure.png'), (1, 'number_recog/second_training.png'), (1, 'number_recog/25650.png'), (1, 'number_recog/25650.png'), (1, 'number_recog/38472.png'), (1, 'number_recog/39354.png'),
    (2, 'hand_tracking/result.gif'), (2, 'hand_tracking/partB_example.gif'),
    (3, 'live_video/animation.gif'),
    (4, 'single_unit/Energy_unit_0.png'), (4, 'single_unit/Energy_unit_1.png'), (4, 'single_unit/Energy_unit_3.png'),
    (5, 'map_gen/menu.png'), (5, 'map_gen/map_animal.png'), (5, 'map_gen/map_arrows.png'),
    (6, 'snake/animation.gif'),
    (7, 'lightsout/backend.png'), (7, 'lightsout/board.png'), (7, 'lightsout/board_w_solution.png'), (7, 'lightsout/victory.png'),
    (8, 'clinic/ss_admin.png'), (8, 'clinic/ss_database.png'), (8, 'clinic/ss_employee.png'), (8, 'clinic/ss_loggin.png'), (8, 'clinic/ss_patient_presearch.png'), (8, 'clinic/ss_schedule.png');


INSERT INTO BLURB_TYPE(type_value) VALUES
('PURE_TEXT'), ('LEFT_IMAGE'), ('RIGHT_IMAGE');

INSERT INTO BLURB(title, blurb_content, blurb_type_id, project_id) VALUES
('Network Training Data',
'<table class="w-100"><tbody><tr><th>Class</th><th># of Training Images</th></tr><tr><td>Zero</td><td>1368</td></tr><tr><td>One</td><td>588</td></tr><tr><td>Two</td><td>144</td></tr><tr><td>Three</td><td>109</td></tr><tr><td>Four</td><td>105</td></tr><tr><td>Five</td><td>184</td></tr><tr><td>Six</td><td>119</td></tr><tr><td>Seven</td><td>324</td></tr><tr><td>Eight</td><td>558</td></tr><tr><td>Nine</td><td>493</td></tr></tbody></table>',
1, 1),
('Network Structure',
'<table class="w-100"><tbody><tr><th>Layer #</th><th>Specific Type</th><th>Settings</th></tr><tr><td>0</td><td>Random Flip</td><td></td></tr><tr><td>1</td><td>Random Rotation</td><td></td></tr><tr><td>2</td><td>Random Zoom</td><td></td></tr><tr><td>3</td><td>Rescaling</td><td></td></tr><tr><td>4</td><td>2D Convolutional</td><td><ul><li>16 filters, 3 kernel size</li><li>Relu activation</li></ul></td></tr><tr><td>5</td><td>2D Max Pooling</td><td></td></tr><tr><td>6</td><td>2D Convolutional</td><td><ul><li>32 filters, 3 kernel size</li><li>Relu activation</li></ul></td></tr><tr><td>7</td><td>2D Max Pooling</td><td></td></tr><tr><td>8</td><td>2D Convolutional</td><td><ul><li>64 filters, 3 kernel size</li><li>Relu activation</li></ul></td></tr><tr><td>9</td><td>2D Max Pooling</td><td></td></tr><tr><td>10</td><td>Dropout</td><td><ul><li>Rate of 0.2</li></ul></td></tr><tr><td>11</td><td></td><td><ul><li>128 units</li><li>Relu activation</li></ul></td></tr><tr><td>12</td><td></td><td><ul><li>10 units</li><li>Relu activation</li></ul></td></tr></tbody></table>',
1, 1),
('Training Stages',
'Initial Training:<br>Initially, the algorithm was applied to separate all number within the image (as determined by the strongest found contours).<br><br>Self-supported Training:<br>With a functional, yet inaccurate network running, a classification was run on all images in the set. <br>The results were then manually filtered, creating a significantly large set of accurate data.<br>The neural network training is run on this larger dataset, creating a significantly higher accuracy.',
1, 1),
('Algorithm',
'<ol><li>User provides a file-name (in the form of a number).</li><li>Image is opened, and preprocessed using a combination of Gaussian Blur, Canny Edge Detection, External Edge Detection</li><li>Take the four largest contours (most likely the numbers on the image)</li><li>For each contour, Blur, grayscale, and convert to Network Image required sizes</li><li>Neural Network run for each number, and value is concatenated and returned</li>',
1, 1),
('Limitations',
'Correctly Identify all 4 numbers: 1294/1324 (97.734%)<br>Correctly Identify all 4 non-corrupted numbers: 1300/1324 (98.187%)<br>With the accuracy of the neural network, it appears that the error lies in incorrectly canny-edged images. Different threshvalues or a blurring method may provide an increase in accuracy',
1, 1),


('External Recognition',
'External Code for preparing the program take from https://techvidvan.com/tutorials/hand-gesture-recognition-tensorflow-opencv/<br>Provided pretrained hand-recognition TensorFlow network, implemented through Google Mediapipe<br>From this tutorial, the pretrained network was taken.<br><br>No author information nor git information provided',
1, 2),
('Hand Detection',
'Hand detection is executed using Google Mediapipe, with the pretrained hand-skeleton detection network.<br>From this skeleton, a box is drawn around the user’s hand and displayed on the screen.',
1, 2),
('Motion Tracking',
'As the hands more, the palm of the hand is measured and recorded. As the last 50 points are displayed on the screen, a post process filters connected points only. If two points are too far apart (which occurs when the hands become swapped or another hand appears abruptly), a line is not draw. This provides a cleaner output of motion tracking for a maximum of two hands.',
1, 2),
('Algorithm',
'Input video and output video handlers<br>Initialize 2 empty lists, to store previous hand-positions<br>For each frame grabbed:<br><ol><li>Convert frame to RBG</li><li>Using pretrained hand-detection mp_hand_gesture, detect hands in frame</li><li>Detect palm of hand, and add to appropriate hand-list</li><li>Add point to curve of detected hand</li><li>Draw curve of previous palm-locations</li><li>Limit size of these lists to 75 data-points per hand</li><li> Two points are considered sequential if they are within 75px of each other</li><li> Display and Save Frame for output</li></ol>',
1, 2),

('Graphical Interface',
'The application includes a button bank, where each filter includes 3 options. The user is able to <br><ol><li> Add a filter to of this kind queue</li><li> Remove most recently added filter of this kind</li><li> Remove all filters of this kind</li></ol>',
1, 3),
('Reading & Displaying Webcam',
'There exists two classes in this program, one for reading the webcam and one for displaying then filtered result. These two classes work in tandem, using threading in python. Both share a common frame-queue, where the VideoReader loads frames and VideoShower pulls them. The VideoShower then send the loaded frame into a FrameFilter class (initialized at program-launch)',
1, 3),
('Filtering Image',
'The FrameFilter class is a locally implemented queue class, which stores the filters for each frame to pass through. All possible filters are stored as functions within this class. These include...<br><br><br>Threshold<br>Sharpen<br>Emboss<br>Edge detection (canny)<br>Blur (Normal/Median/Gaussian)<br>Lighten<br>Darken',
1, 3),
('Adjusting Blur Setting',
'here exists 8 radio-buttons, where the user can choose one of 5 kernel sizes from...<br><br>1<br>3<br>5<br>7<br>9<br>and 3 where the user can choose Normal, Median, or Gaussian blur methods<br><br>Intention is to add further adjustments for each filter',
1, 3),

('Creatures',
'<h1>Creatures</h1><p>The creatures have a simple goal: Gain enough SIZE to be able to split into two.<br><br>Moving takes up <b>ENERGY</b><br>Creatures must move to the <b>FOOD</b> to gain <b>SIZE</b> &amp; regain <b>ENERGY</b><br>Larger creatures require less <b>ENERGY</b> to move the same distance as a smaller creature<br>Larger creatures require more <b>FOOD</b> than smaller creatures to <b>SPLIT</b> (Thus why they are larger)<br><br><br>Creatures will be spawned with some combination of the following parameters</p><table class="w-100"><tbody><tr><th><h3>TRAIT</h3></th><th><h3>RANGE</h3></th></tr><tr><td><b>Splitting factor</b></td><td>[18, 50]</td></tr><tr><td><b>Speed</b></td><td>[0.5, 2]</td></tr><tr><td><b>Size</b></td><td>[2, 100]</td></tr><tr><td><b>Energy</b></td><td>[0, 1000] </td></tr></tbody></table>',
1, 4),
('Doubling // Splitting',
'When a creature reaches its Splitting-Factor Size, it will divide itself into the next generation.<br>The first draft will maintain the exact genetics of the creatures predecessor<br>Future drafts will allow for minor mutations',
1, 4),
('Food Sources',
'<table class="cute_table"><tbody><tr><th><h3>Food Type</h3></th><th><h3>Spawn Chance</h3></th><th><h3>Size Given</h3></th><th><h3>Energy Given</h3></th></tr><tr><td><b>Survival</b></td><td>(s_chance %)</td><td>+1 Size</td><td>1/4 refill energy</td></tr><tr><td><b>Beneficial</b></td><td>(b_chance %)</td><td>+2 Size</td><td>1/2 refill energy</td></tr><tr><td><b>Nutrutious</b></td><td>(n_chance %)</td><td>+4 Size</td><td>Full refill energy</td></tr></tbody></table>',
1, 4),
('Energy Drain & Movement Mapping',
'<div class="info_section "><h1>Energy Drain &amp; Movement Mapping</h1><p> Each creature is hunting <b>one specific food object</b>. <br>This object will appear far away to small creatures, and close to large creatures.<br>This is implemented by creating a <b>Relative Energy Unit</b> to each creature.</p><br><br><h3>Relative Energy Unit</h3><table style="width:100%"><tbody><tr><td><img style="width:100%; max-width: 450px" alt="" src="../Resources/Images/Energy_unit_0.png"><p class="sub_image">Each creature is assigned their own energy-unit size.</p></td><td style="padding-left:50px">For each creature, the distance between them and the food is converted into "how much energy is needed"<br>In this situation, energy is a relative percentage drained (larger creatures SHOULD use more to move and have to move less, however that is not taken into account in this version of the program)<br>One energy unit is the equivalent to the length of the diagonal of a triangle with...<br><br><table class="w-100"><tbody><tr><td>Length -&gt;</td><td>CREATURE SIZE</td></tr><tr><td>Height -&gt;</td><td>CREATURE SIZE</td></tr></tbody></table><br>Therefore, the length of one Energy Unit is the equivalent to <b>SQRT( SIZE^2 + SIZE^2 )</b></td></tr><tr><td><img style="width:100%; max-width: 450px" alt="" src="../Resources/Images/Energy_unit_1.png"><p class="sub_image">The Enegery unit is the hypotenuse of a creatures hitbox</p></td><td style="padding-left:50px">Creating a hitbox around the creature (a square with length of creature size and a height of creature size), <br>A diagonal is calculated between the bottom-left &amp; top right corners.<br>The length of this diagonal is the equivilent of one energy unit.<br><br>All distaces between a creature and a food object are converted into these units, and each step drains the appropriate energy from the creature.<br>If the creature runs out of energy without reaching a food obejct, it will die.</td></tr></tbody></table><div style="text-align:center;width:100%"><img style="max-height: 500px; border:solid 1px black;" alt="" src="../Resources/Images/Energy_unit_3.png"><p class="sub_image">An example of two creatures racing for the same piece of food.</p></div></div>',
1, 4),
('Conclusions',
'Interestingly, finding the relation between these variables has been odd. Below is a test design to find a connection between the variables.<br>The intention of this is to find some combination of starting creatures-starting food, energy formula, etc which creates a useful program.<br>(If everytime the program runs, all animals survive, then the program is essentially null/void)<br><br>**DATA IN PROGRESS OF COLLECTION**',
1, 4),

('Menu System',
'Designed using click-fields hard coded into the graphics. Each click returns an (x,y) point which is then analyzed to determine if it was within a field. Each click leaves a crosshair on the background, to confirm that while the click did not activate the program, it was received.<br><br><br>The ratio determines the # of cubes placed on the screen, resulting in smaller cubes the higher larger the selected map.',
1, 5),
('Map Generation',
'The map generator algorithm fills the map from left to right, using its knowledge of the surrounding map-pieces to create land masses, instead of a map of small and isolated slivers of land. This allows for the animal to traverse the land, and creates a more visually appealing map.<br><br><br>The map always fills the same window size, but adjusts the cube-size to fill with the requested number of pieces. The odds of placing a piece which is harmonious with its surrounding pieces is significantly higher than the odds of it placing a non-homogenous piece.',
1, 5),
('Animal Spawning',
'The program finally spawns a creature to roam the map, with the creature’s size being comparative to the map’s cube sizes. The creature is a random walker, staying on the land pieces and avoiding the water. It has a tendency to walk upwards. On to better things, I guess!',
1, 5),


('Back-end',
'The system stores a list of cubes (1 for each piece of food eaten). The first cube in the list is considered the head of the snake. The head of the snake finds the fastest root to the next food pellet, and beings its pursuit. As it travels forward, it marks the directional array with the direction it traveled on it. Each body part then moves forward, in the same direction as marked on their underlying-array location.',
1, 6),
('Visuals',
'Included in this repository is the graphics.py file, which in its entirety belongs to the developers of nylon graphics. Unfortunatly, nylon graphics was refusing to install through pip during development, resulting in this work around.',
1, 6),


('Back End',
'Using two 2d arrays of boolean values, one representing the lights states, and the other where to click to solve the puzzle. The first array is reflected by the light grid, and is what the player is directly interacting with. The other is an underlying array, which implements the breadth-first algorithm to calculate the least amount of buttons t click to turn all the lights on.',
1, 7),
('Game Board',
'Taking two integers as input, the game launces a UI composed of two parts. The Game Board, and the Button Holder. Initially, the game board is initialized to off, and the user can interact with it, attempting to turn all lights on by themselves. If the player finds this too difficult, they are able to turn on the Solution overlay, which directs them to a fully-on grid.',
1, 7),
('Randomize',
'This randomly generates a board for the player to begin with, assuring that any board given is guaranteed have at least one solution to turn it on. Any generated boards which are insolvable are discarded.',
1, 7),
('Solution',
'Creating an overlay on the board, this button projects the quickest solution onto the board until the player disables it. Each time the player clicks, a new solution is generated so a mis-click does not interfere with a desired quick-solution.',
1, 7),
('Randomize',
'Upon winning, a player is presented with a pop-up which reveals the number of clicks required for them to do so. They are presented with the option to begin again.',
1, 7),


('Firebase Authentication & Storage',
'Each login is authenticated through the FireStone FireBase Authentication System, which affirms that an entered email is valid, and then creates a registered account attached to it. The data for these accounts, as well as for all attributes of the app, are then stored in a custom database system. Skills Used: Authentication Implementation, App Design, Android Studio, Database Design and Implementation',
1, 8),
('Admin Functionality',
'With an immutable admin account, the application allows for one to remove or add potential services, as well as manage and remove users from the database. It includes an updated list of all Users and Clinics, taken from the online database system',
1, 8),
('Clinic Functionality',
'A clinic registers with its information, and can then actively adjust which services they offer, as well as the times which patients can book in with a doctor. They have a rating, and a current wait time, and are actively updated in the search results based on their name and service they offer.',
1, 8),
('Patient Functionality',
'A patient has the ability to search for clinics, book an appointment in their available slots, and leave a rating for the clinic after doing so. The patient’s database contains stored appointments that they have made.',
1, 8);


INSERT INTO ARTICLE(article_title, article_subtitle, article_link, article_image_str, highlighted) VALUES
('Estimating and Analyzing Gaze Points Using RGB Laptop Webcams', 'End-term report from my 4 month placement with the National Research Council of Canada.', 'articles/300064655_Summer_2020_Report.pdf', 'article_images/rgb.jpg', TRUE),
('A Cross Cultural Analysis of Dry Sex in the Afro-Surinamese', 'A Cross Cultural Analysis of Dry Sex in the Afro-Surinamese', 'articles/Dry_Sex_in_the_Afro_Surinamese_People.pdf', 'article_images/suriname.jpg', TRUE),
('Fears of Mother-Child Transmission Amongst HIV Positive Biological Women', 'A brief look at some of the pressures experienced by HIV positive women, with regards to childbirth and relationships.', 'articles/Relational_Pressures_of_HIV_Positive_Women.pdf', 'article_images/hiv_mother.jpg', FALSE),
('Research Proposal: Measuring Self-esteem & Self-doubt Through Emotionally Charged Digital Surveys', 'A detailed proposal for an undergraduate research paper, where multiple choice questions are used to measure a participants self-esteem.', 'articles/Research_Proposal_Doubt_And_Self_Esteem.pdf', 'article_images/report.jpg', FALSE),
('The Dangers of Under-Trained and Overconfident Programmers', 'A warning piece on the direction of the computer science job market in the modern age.', 'https://www.linkedin.com/pulse/dangers-under-trained-over-confident-programmers-aiden-bradwell/', 'article_images/undertrained.jpg', TRUE),
('Object-Oriented Programming; The (Im)Perfect Layman’s Code', 'A warning on the abundant reliance of object-oriented code.', 'https://www.linkedin.com/pulse/object-oriented-programming-imperfect-laymans-code-aiden-bradwell/', 'article_images/oop.jpg', FALSE);


