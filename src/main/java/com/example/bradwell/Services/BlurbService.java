
package com.example.bradwell.Services;

import com.example.bradwell.Models.Blurb;
import com.example.bradwell.Models.Employment;
import com.example.bradwell.RowMappers.BlurbRowMapper;
import com.example.bradwell.RowMappers.EmploymentRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BlurbService {

    @Autowired
    JdbcTemplate jdbcTemplate;


    public List<Blurb> getAllBlurbsByProjectId(Integer project_id) {

        String SQL_CMD = String.format("SELECT * FROM blurb " +
                "INNER JOIN blurb_type ON blurb_type.blurb_type_id = blurb.blurb_type_id " +
                "WHERE project_id = %d", project_id);

        return jdbcTemplate.query(SQL_CMD, new BlurbRowMapper());
    }


}
