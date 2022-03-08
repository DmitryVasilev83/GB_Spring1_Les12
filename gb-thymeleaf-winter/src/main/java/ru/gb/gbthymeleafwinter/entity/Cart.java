package ru.gb.gbthymeleafwinter.entity;


import lombok.*;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity
@Table(name = "cart")
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String status = "not empty";

    @ManyToMany(fetch = FetchType.EAGER, cascade = {CascadeType.DETACH, CascadeType.REFRESH, CascadeType.MERGE})
    @JoinTable(name = "cart_product",
    joinColumns = @JoinColumn(name = "cart_id"),
    inverseJoinColumns = @JoinColumn(name = "product_id"))

    private List<Product> products = new ArrayList<>();

    public boolean addProduct(Product product) {
        return products.add(product);
    }

    public void deleteProduct(Product product) {
        int itemp = -1;
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId().equals(product.getId())){
                itemp = i;
                break;
            }
        }
        products.remove(itemp);
    }

    public List<Product> getProducts(){
        return products;
    }
}
