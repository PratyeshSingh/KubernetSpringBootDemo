package com.demoapp.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController
import org.springframework.web.client.RestTemplate

@RestController
class DemoController {

    private val restTemplate = RestTemplate()

    @GetMapping("/welcome")
    fun welcome(): String {
        val welcomeMessage = StringBuilder()
        welcomeMessage.appendLine("Congratulation you successfully deployed your application to kubernetes !!")

        // process product service communication
        val startTime = System.currentTimeMillis()
        val productResponse = restTemplate.getForObject("http://product-provider-service:8080/product", String::class.java)
        welcomeMessage.appendLine(productResponse)
        val endTime = System.currentTimeMillis()
        welcomeMessage.appendLine("Load Time := ${(endTime - startTime)/1000.0} second")

        return welcomeMessage.toString()
    }
}