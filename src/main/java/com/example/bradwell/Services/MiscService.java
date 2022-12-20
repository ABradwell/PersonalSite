package com.example.bradwell.Services;

import com.example.bradwell.Models.Content_Type;
import com.example.bradwell.Models.Employment;
import com.example.bradwell.Models.Project;
import com.example.bradwell.RowMappers.EmploymentRowMapper;
import com.example.bradwell.RowMappers.ContentTypeRowMapper;

import com.example.bradwell.RowMappers.ProjectRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MiscService {

    @Autowired
    JdbcTemplate jdbcTemplate;


    public List<Content_Type> getAllContentType() {


        String SQL_CMD = "SELECT * FROM content_type";
        List<Content_Type> content_types = null;
        try {
            content_types = jdbcTemplate.query(SQL_CMD, new ContentTypeRowMapper());
        } catch (Exception e) {
            System.out.println("No Content types in Database. (" + e.getMessage() + ")");
        }
        return content_types;

    }

}