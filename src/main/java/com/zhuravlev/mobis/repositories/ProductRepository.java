package com.zhuravlev.mobis.repositories;

import com.zhuravlev.mobis.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository <Product, Long> {
    List<Product> findByTitle(String title);
}
