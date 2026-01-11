plugins {
    id("java")
}

group = "com.sigcha"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    testImplementation(platform("org.junit:junit-bom:5.10.0"))
    testImplementation("org.junit.jupiter:junit-jupiter")
    testRuntimeOnly("org.junit.platform:junit-platform-launcher")
    testImplementation("com.intuit.karate:karate-junit5:1.3.1")
}

tasks.test {
    useJUnitPlatform()
}