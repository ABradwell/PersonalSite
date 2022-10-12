package com.example.bradwell.RowMappers;


import com.example.bradwell.Models.Employment;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class EmploymentRowMapper implements RowMapper<Employment> {

    @Override
    public Employment mapRow(ResultSet rs, int rowNum) throws SQLException {
        Employment position = new Employment();
        position.setCompany_name(rs.getString("company_name"));
        position.setJob_description(rs.getString("job_description"));
        position.setPosition_title(rs.getString("position_title"));
        position.setLocation(rs.getString("location"));
        position.setStart_date(rs.getString("start_date"));
        position.setEnd_date(rs.getString("end_date"));
        position.setImage_src(rs.getString("image_src"));

        return position;
    }
}