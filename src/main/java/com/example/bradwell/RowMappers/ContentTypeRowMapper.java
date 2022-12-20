package com.example.bradwell.RowMappers;


import com.example.bradwell.Models.Blurb;
import com.example.bradwell.Models.Content_Type;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ContentTypeRowMapper implements RowMapper<Content_Type> {

    @Override
    public Content_Type mapRow(ResultSet rs, int rowNum) throws SQLException {
        Content_Type content_type = new Content_Type();
        content_type.setContent_type_id(rs.getInt("content_type_id"));
        content_type.setcontent_type_value(rs.getString("content_type_value"));

        return content_type;
    }
}