package ru.gb.gbthymeleafwinter.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.gb.gbthymeleafwinter.entity.Product;


public interface CartDao extends JpaRepository<Product, Long> {

}
