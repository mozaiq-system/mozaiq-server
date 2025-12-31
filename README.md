# Mozaiq Server

This is the server for the Mozaiq Service, a Spring Boot project written in Kotlin.

## Technologies Used

*   **Framework:** Spring Boot 4.0.1
*   **Language:** Kotlin 2.2.20
*   **Database:** PostgreSQL
*   **Database Migration:** Flyway
*   **Database Access:** jOOQ
*   **Authentication:** Spring Security with OAuth2
*   **Build Tool:** Gradle

## Getting Started

### Prerequisites

*   Java 21
*   Docker and Docker Compose

### Running the application

1.  **Start the database:**

    Use Docker Compose to start the PostgreSQL database.

    ```bash
    docker-compose up -d
    ```

2.  **Run the application:**

    You can run the application using the Gradle wrapper.

    ```bash
    ./gradlew bootRun
    ```

    The server will start on the default port (8080).

## Database

The application uses a PostgreSQL database. The schema is managed by Flyway.

*   **Database Name:** `mozaiqdb`
*   **Username:** `mozaiq`
*   **Password:** `mozaiq`

## Configuration

Application configuration is managed in `src/main/resources/application.yaml`. You can override the default database connection details using environment variables:

*   `DB_HOST`: Database host (default: `localhost`)
*   `DB_PORT`: Database port (default: `5432`)
*   `DB_NAME`: Database name (default: `mozaiqdb`)
*   `DB_USER`: Database username (default: `mozaiq`)
*   `DB_PASSWORD`: Database password (default: `mozaiq`)
