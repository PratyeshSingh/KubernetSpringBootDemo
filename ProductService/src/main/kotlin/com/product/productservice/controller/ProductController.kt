package com.product.productservice.controller

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
class ProductController {

    @GetMapping("/product")
    fun getProduct(): String {
        return "Hello from Product Service !!"
    }
}