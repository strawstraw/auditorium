package com.ao.auditorium.model.mentor;


import com.ao.auditorium.model.course.Course;
import com.ao.auditorium.model.user.User;

import javax.persistence.*;

@Entity
public class CourseMentor {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;

    @ManyToOne
    @JoinColumn(name="course_id")
    private Course course;
    @ManyToOne
    @JoinColumn(name="mentor_id")
    private User mentor;

    public CourseMentor(){}

    public CourseMentor(Course course, User mentor){
        this.course = course;
        this.mentor = mentor;
    }

    public User getMentor() {
        return mentor;
    }
}
