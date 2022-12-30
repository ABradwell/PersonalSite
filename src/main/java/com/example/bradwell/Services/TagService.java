package com.example.bradwell.Services;

import com.example.bradwell.Models.Tag;
import com.example.bradwell.RowMappers.TagRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class TagService {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Autowired
    ContentService contentService;

    public List<Tag> getAllTags(){

        String SQL_CMD = "SELECT project_tag_value FROM project_tag";
        List<Tag> tags = null;
        try {
            tags = jdbcTemplate.query(SQL_CMD, new TagRowMapper());
        } catch (Exception e) {
            System.out.println("No Tags in Database.");
        }
        return tags;
    }

    public Tag getProjectTagById(int tag_id) {

        String SQL_CMD = "GET project_tag_value FROM project_tag WHERE project_tag_id = " + tag_id;

        Tag tag = null;

        try {
            tag = jdbcTemplate.queryForObject(SQL_CMD, new TagRowMapper());
        } catch (Exception e) {
            System.out.println("No Tags with TAG_ID = " + tag_id + " in Database.");
        }

        return tag;
    }

    public List<String> getAllTagValuesByProjectId(int project_id) {


        List<String> tags = new ArrayList<>();
        Integer content_type_id = contentService.getContentTypeIdByString("PROJECT");


        String SQL_CMD = String.format("SELECT project_tag_value FROM project_tag WHERE project_id = %d", project_id);
        System.out.println(SQL_CMD);

        try {
            tags = jdbcTemplate.queryForList(SQL_CMD, String.class);
        } catch (Exception e) {
            System.out.println("Error finding tags for given project id = " + project_id + "(" + e.getMessage() + ")");
        }

        return tags;
    }
}
