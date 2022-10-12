package com.example.bradwell.Services;

import com.example.bradwell.Models.Employment;
import com.example.bradwell.Models.Project;
import com.example.bradwell.RowMappers.EmploymentRowMapper;
import com.example.bradwell.RowMappers.ProjectRowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Employment_Service {

    @Autowired
    JdbcTemplate jdbcTemplate;


    public List<Employment> getAllEmployment() {


        String SQL_CMD = "SELECT * FROM employment";
        List<Employment> employments = null;
        try {
            employments = jdbcTemplate.query(SQL_CMD, new EmploymentRowMapper());
        } catch (Exception e) {
            System.out.println("No Work Experience in Database. (" + e.getMessage() + ")");
        }
        return employments;
    }

    public Employment getEmploymentById(int id) {

        String SQL_CMD = "SELECT * FROM employment WHERE employment_id = " + id;
        Employment past_employment = null;

        try {
            past_employment = jdbcTemplate.queryForObject(SQL_CMD, Employment.class);

        } catch (DataAccessException e) {
            System.out.println("No previous employment found for id: " + id + " RETURNING NULL.");
        }

        return past_employment;
    }



}
