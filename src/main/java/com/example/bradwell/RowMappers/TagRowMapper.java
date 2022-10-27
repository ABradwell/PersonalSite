package com.example.bradwell.RowMappers;

import com.example.bradwell.Models.Project;
import com.example.bradwell.Models.Tag;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class TagRowMapper implements RowMapper<Tag> {

    @Override
    public Tag mapRow(ResultSet rs, int rowNum) throws SQLException {
        Tag tag = new Tag();
        tag.setTag_id(rs.getInt("tag_id"));
        tag.setTag_value(rs.getString("tag_value"));
        return tag;
    }
}