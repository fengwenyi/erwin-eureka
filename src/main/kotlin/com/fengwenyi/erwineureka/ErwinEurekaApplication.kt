package com.fengwenyi.erwineureka

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer

@SpringBootApplication
@EnableEurekaServer
class ErwinEurekaApplication

fun main(args: Array<String>) {
    runApplication<ErwinEurekaApplication>(*args)
}
