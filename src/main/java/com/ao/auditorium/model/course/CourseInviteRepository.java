package com.ao.auditorium.model.course;

import org.springframework.data.repository.CrudRepository;
import java.util.UUID;
import java.util.Optional;

public interface CourseInviteRepository extends CrudRepository<CourseInvite, Long> {
    Optional<CourseInvite> findByUuid(UUID uuid);
}