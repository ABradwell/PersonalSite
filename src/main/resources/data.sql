
INSERT INTO CONTENT_TYPE(content_type_value) VALUES
('ARTICLE'), ('PROJECT'), ('EMPLOYMENT');


INSERT INTO PROJECT(project_name, project_sub_title, project_image_str) VALUES
('Personal Website',
'The current site being viewed! Backend coded with Spring Boot Java, with Thymeleaf template engine dynamically loading this very content.',
'upcoming2.jpg'),
('Personal Website',
'The current site being viewed! Backend coded with Spring Boot Java, with Thymeleaf template engine dynamically loading this very content.',
'upcoming3.jpg');

INSERT INTO EMPLOYMENT(company_name, position_title, job_description, location, start_date, end_date, image_src) VALUES
    ('Government of Canada, Department of Fisheries and Oceans', 'Website Development Project Lead', 'TBD', 'Ottawa, Ontario, Canada', 'May 2022', 'August 2022', 'canada-logo.jpg'),
    ('Microchip Semiconductor Inc.', 'Embedded Software Developer (CO-OP Position)', 'TBD', 'Kanata, Ontario, Canada', 'January 2021', 'August 2021', 'microchip-round-logo.png'),
    ('National Research Council', 'Computer Vision Student Researcher (CO-OP Position)', 'TBD', 'Ottawa, Ontario, Canada', 'May 2020', 'August 2020', 'nrc-logo.png'),
    ('Discover Year', 'Website Management', 'TBD', 'Ottawa, Ontario, Canada (VIRTUAL)', 'May 2021', 'Present', 'discover-year-logo-2.png'),
    ('MentorU', 'Website Management', 'TBD', 'Ottawa, Ontario, Canada (VIRTUAL)', 'March 2020', 'Present', 'mentor-u-logo-2.png'),
    ('University of Ottawa', 'Regional Mentor', 'TBD', 'Ottawa, Ontario, Canada', 'May 2019', 'April 2020', 'uottawa-logo.png');