package com.model.mapper;

import com.model.Student;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by Administrator on 2017/3/1.
 */
public interface StudentMapper {
    @Select("select * from student")
    public List<Student> query();
}
