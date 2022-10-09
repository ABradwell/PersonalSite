
DROP TABLE IF EXISTS ARTICLE;
CREATE TABLE ARTICLE (

    article_id INT AUTO_INCREMENT PRIMARY KEY,
    article_title VARCHAR,
    article_subtitle VARCHAR,
    article_content VARCHAR,
    article_image_str VARCHAR
);

DROP TABLE IF EXISTS BLURB;
CREATE TABLE BLURB (
    blurb_id INT AUTO_INCREMENT PRIMARY KEY,

    title VARCHAR,
    blurb_content VARCHAR
);

DROP TABLE IF EXISTS PROJECT;
CREATE TABLE PROJECT (
    project_id INT AUTO_INCREMENT PRIMARY KEY,

    project_name VARCHAR,
    project_sub_title VARCHAR,
    project_image_str VARCHAR
);

DROP TABLE IF EXISTS EMPLOYMENT;
CREATE TABLE EMPLOYMENT (
  employment_id INT AUTO_INCREMENT PRIMARY KEY,
  company_name VARCHAR NOT NULL,
  job_description VARCHAR,
  location VARCHAR,
  start_date DATE,
  end_date DATE,
  image_src VARCHAR
);

DROP TABLE IF EXISTS CONTENT_TYPE;
CREATE TABLE CONTENT_TYPE (
    content_type_id INT AUTO_INCREMENT PRIMARY KEY,
    content_type_value VARCHAR

);

DROP TABLE IF EXISTS TAG;
CREATE TABLE TAG (
    tag_id INT AUTO_INCREMENT PRIMARY KEY,
    tag_value VARCHAR
);

DROP TABLE IF EXISTS EMPLOYMENT_TAG;
CREATE TABLE EMPLOYMENT_TAG (
    employment_tag_id INT AUTO_INCREMENT PRIMARY KEY,

    tag_id INT,
    employment_id INT
);



DROP TABLE IF EXISTS CONTENT_TAG;
CREATE TABLE CONTENT_TAG (
    content_tag_id INT AUTO_INCREMENT PRIMARY KEY,

    content_id INT,
    tag_id INT
);

DROP TABLE IF EXISTS CONTENT_BLURB;
CREATE TABLE CONTENT_BLURB (
    content_blurb_id INT AUTO_INCREMENT PRIMARY KEY,

    content_type_id INT,
    blurb_id INT,
    content_id INT

);

