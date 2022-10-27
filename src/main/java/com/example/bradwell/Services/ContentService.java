package com.example.bradwell.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class ContentService {

    @Autowired
    JdbcTemplate jdbcTemplate;


    public Integer getContentTypeIdByString(String given_value) {

        String SQL_CMD = "SELECT content_type_id FROM content_type WHERE UPPER(content_type_value) = UPPER('" + given_value + "')";

        Integer found_id = null;
        try {
            found_id = jdbcTemplate.queryForObject(SQL_CMD, Integer.class);
        } catch (Exception e) {
            System.out.println(SQL_CMD);
            System.out.println("Error finding content_type value for str = " + given_value + ". (" + e.getMessage() + ")");
        }

        return found_id;
    }

}
