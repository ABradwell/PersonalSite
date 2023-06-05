
DROP TABLE IF EXISTS CONTENT_TYPE;
CREATE TABLE CONTENT_TYPE (
    content_type_id INT AUTO_INCREMENT PRIMARY KEY,
    content_type_value VARCHAR
);

DROP TABLE IF EXISTS BLURB_TYPE;
CREATE TABLE BLURB_TYPE (
    blurb_type_id INT AUTO_INCREMENT PRIMARY KEY,

    type_value VARCHAR
);

DROP TABLE IF EXISTS ARTICLE;
CREATE TABLE ARTICLE (

    article_id INT AUTO_INCREMENT PRIMARY KEY,
    article_title VARCHAR,
    article_subtitle VARCHAR,
    article_link VARCHAR,
    article_image_str VARCHAR,
    highlighted BOOLEAN
);


DROP TABLE IF EXISTS PROJECT;
CREATE TABLE PROJECT (
    project_id INT AUTO_INCREMENT PRIMARY KEY,

    project_name VARCHAR,
    project_sub_title VARCHAR,
    project_image_str VARCHAR,
    project_github_str VARCHAR,
    highlighted BOOlEAN
);

DROP TABLE IF EXISTS BLURB;
CREATE TABLE BLURB (
  blurb_id INT AUTO_INCREMENT PRIMARY KEY,

  title VARCHAR,
  blurb_content VARCHAR,
  blurb_type_id INT,
  FOREIGN KEY (blurb_type_id) REFERENCES BLURB_TYPE(blurb_type_id),
  project_id INT,
  FOREIGN KEY (project_id) REFERENCES PROJECT(project_id)
);

DROP TABLE IF EXISTS EMPLOYMENT;
CREATE TABLE EMPLOYMENT (
  employment_id INT AUTO_INCREMENT PRIMARY KEY,
  company_name VARCHAR NOT NULL,
  position_title VARCHAR,
  job_description VARCHAR,
  location VARCHAR,
  start_date VARCHAR,
  end_date VARCHAR,
  image_src VARCHAR
);

DROP TABLE IF EXISTS PROJECT_TAG;
CREATE TABLE PROJECT_TAG (
    project_tag_id INT AUTO_INCREMENT PRIMARY KEY,
    project_id INT,
    FOREIGN KEY (project_id) REFERENCES PROJECT(project_id),
    project_tag_value VARCHAR
);

DROP TABLE IF EXISTS PROJECT_SREENSHOT;
CREATE TABLE PROJECT_SCREENSHOT (
  project_screenshot_id INT AUTO_INCREMENT PRIMARY KEY,
  project_id INT,
  FOREIGN KEY (project_id) REFERENCES PROJECT(project_id),
  image_str VARCHAR
);

