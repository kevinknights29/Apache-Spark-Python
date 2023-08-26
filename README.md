# Apache-Spark-Python

This project applies the concepts learn from the course: Apache Spark Programming in Python for beginners.

Course Link: [link](.udemy.com/course/apache-spark-programming-in-python-for-beginners/learn/)

## Usage

![image](https://github.com/kevinknights29/Apache-Spark-Python/assets/74464814/b86cd77b-9e49-4a8a-9122-8467abc8f862)

1. For first time usage, you need to build the Docker image:

    ```bash
    docker compose build .
    ```

2. After that you can start the container with:

    ```bash
    docker compose up -d
    ```

3. Go to Docker desktop, to retrieve your jupyterlab access URL.

    - Click the container name, to open the logs.
    - Retrive the jupyterlab URL, it should look like: `http://127.0.0.1:8888/lab?token=4150032f3603c85febf54b8b40bb761a2eb46e2fb593d5dc`

    ![image](https://github.com/kevinknights29/Airflow_Docs_LLM_App/assets/74464814/661f3747-2b2e-4387-9c79-64af1d8bc56e)

4. To stop the container, run:

    ```bash
    docker compose down
    ```
