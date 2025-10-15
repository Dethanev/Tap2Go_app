allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

// Removed custom build directory settings to avoid breaking Gradle tasks
subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
