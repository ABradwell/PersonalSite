
DROP TABLE IF EXISTS ARTICLE;
CREATE TABLE ARTICLE (

    article_id INT AUTO_INCREMENT PRIMARY KEY,
    article_title VARCHAR,
    article_subtitle VARCHAR,
    article_link VARCHAR,
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
    project_image_str VARCHAR,
    highlighted BOOlEAN
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

DROP TABLE IF EXISTS CONTENT_TAG;
CREATE TABLE CONTENT_TAG (
    content_tag_id INT AUTO_INCREMENT PRIMARY KEY,

    content_type_id INT,
    FOREIGN KEY (content_type_id) REFERENCES CONTENT_TYPE(content_type_id),
    content_id INT,
    tag_id INT,
    FOREIGN KEY (tag_id) REFERENCES TAG(tag_id)
);

DROP TABLE IF EXISTS CONTENT_BLURB;
CREATE TABLE CONTENT_BLURB (
    content_blurb_id INT AUTO_INCREMENT PRIMARY KEY,

    content_type_id INT,
    FOREIGN KEY (content_type_id) REFERENCES CONTENT_TYPE(content_type_id),
    blurb_id INT,
    FOREIGN KEY (blurb_id) REFERENCES BLURB(blurb_id),
    content_id INT,
    content_type_id INT,
    FOREIGN KEY (content_type_id) REFERENCES CONTENT_BLURB_TYPE(content_type_id)
);

DROP TABLE IF EXISTS BLURB_TYPE;
CREATE TABLE BLURB_TYPE (
    content_blurb_type_id INT AUTO_INCREMENT PRIMARY KEY,

    type_value VARCHAR
);
