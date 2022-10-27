
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


    public List<Blurb> getAllBlurbsByTypeAndId(String type, Integer id) {

        String SQL_CMD = String.format("SELECT * FROM blurb " +
                "INNER JOIN content_blurb ON blurb.blurb_id = content_blurb.blurb_id " +
                "INNER JOIN content_type ON content_type.content_type_id = content_blurb.content_type_id " +
                "WHERE content_blurb.content_id = %d AND content_type.content_type_value = '%s'", id, type);

        return jdbcTemplate.query(SQL_CMD, new BlurbRowMapper());
    }


}
