package ru.gb.gbthymeleafwinter.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ru.gb.gbthymeleafwinter.entity.Product;
import ru.gb.gbthymeleafwinter.service.ProductService;

@Controller
@RequiredArgsConstructor
@RequestMapping("/product")
public class ProductController {

    private final ProductService productService;

    @GetMapping("/all")
    @PreAuthorize("hasAuthority('product.read')")
    public String getProductList(Model model) {
        model.addAttribute("products", productService.findAll());
        return "product-list";
    }

    @GetMapping("/{productId}")
    @PreAuthorize("hasAuthority('product.read')")
    public String info(Model model, @PathVariable(name = "productId") Long id) {
        Product product;
        if (id != null) {
            product = productService.findById(id);
        } else {
            return "redirect:/product/all";
        }
        model.addAttribute("product", product);
        return "product-info";
    }

    @GetMapping
    @PreAuthorize("hasAnyAuthority('product.create', 'product.update')")
    public String showForm(Model model, @RequestParam(name = "id", required = false) Long id) {
        Product product;

        if (id != null) {
            product = productService.findById(id);
        } else {
            product = new Product();
        }
        model.addAttribute("product", product);
        return "product-form";
    }

    @PostMapping
    @PreAuthorize("hasAnyAuthority('product.create', 'product.update')")
    public String saveProduct(Product product) {
        productService.save(product);
        return "redirect:/product/all";
    }

    @GetMapping("/delete")
    @PreAuthorize("hasAnyAuthority('product.delete')")
    public String deleteById(@RequestParam(name = "id") Long id) {
        productService.deleteById(id);
        return "redirect:/product/all";
    }

    // DZ_12
    @GetMapping("/cart")
    @PreAuthorize("hasAuthority('cart.add')")
    public String getProductListFromCart(Model model){
        model.addAttribute("cartProducts", productService.findAllInCart());
        return "cart-list";
    }

    @GetMapping("/cart/add/{productId}")
    @PreAuthorize("hasAuthority('cart.add')")
    public String addProductToCart(@PathVariable("productId") Long id){
        productService.addProductToCart(id);
        return "redirect:/product/all";
    }

    @GetMapping("/cart/delete/{productId}")
    @PreAuthorize("hasAuthority('cart.add')")
    public String deleteProductFromCartById(@PathVariable("productId") Long id){
        productService.deleteProductFromCart(id);
        return "redirect:/product/cart";
    }


}
