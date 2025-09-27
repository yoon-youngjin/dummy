package dev.yoon.dummy

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class SystemController {
    @GetMapping("/health")
    fun health(): String {

        
        return "test..!"
    }
}
