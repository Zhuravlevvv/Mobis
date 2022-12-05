package com.zhuravlev.mobis.repositories;

import com.zhuravlev.mobis.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
