package com.example.bradwell.RowMappers;


import com.example.bradwell.Models.Blurb;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BlurbRowMapper implements RowMapper<Blurb> {

    @Override
    public Blurb mapRow(ResultSet rs, int rowNum) throws SQLException {
        Blurb blurb = new Blurb();
        blurb.setBlurb_content(rs.getString("blurb_content"));
        blurb.setBlurb_id(rs.getInt("blurb_id"));
        blurb.setTitle(rs.getString("title"));

        return blurb;
    }
}