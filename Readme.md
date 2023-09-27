
# Django Application Setup (Docker)

**Note:** Please ensure that Docker is installed on your system before proceeding with the following steps.

## Step 1: Clone the Project

Clone the project repository into your desired folder


## Step 2: Build the Docker Image

Open a terminal in the project folder and execute the following command to build the Docker image:

```

make build
```

This step may take some time as it installs the necessary dependencies.


## Step 3: Start the Django Application

After the image is successfully built, start the Django application by running the following command:

```
make up
```

Wait for a moment. You should see a message indicating that the development server is running, like this:

```
Starting development server at http://0.0.0.0:8000/
Quit the server with CONTROL-C.

```


If you don't see this message, press `Ctrl + C` to stop the command and run `make up` again.

**Note:** Consider opening a new terminal in the project folder for further commands.


## Step 4: Perform Various Actions

Here are some useful commands to manage and work with your Django application:

* **Start the Server:**

  ```
  make start
  ```
* **Stop the Server:**

  ```
  make stop
  ```
* **Restart the Server:**

  ```
  make restart
  ```
* **Migrate Database:**

  To create and apply database migrations, use:

  ```
  make migrate
  ```
* **Format the Code:**

  ```
  make format
  ```
* **Lint the Code:**

  ```
  make lint
  ```
* **Create a Superuser:**

  ```
  make superuser

  ```


These commands will help you manage your Django project efficiently.

That's it! Your Django application should now be up and running using Docker. Enjoy developing!
