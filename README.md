# Complete CI/CD Web Application Deployment on K8s ⚡

![Blank diagram (1)](https://github.com/Mahfouz98/CI-CD-Application-Deployment/assets/145352617/9bacf556-522b-4e07-9194-65f4d02f05e1)

## Description ☀️

**Board Game Database Full-Stack Web Application.**
This web application displays lists of board games and their reviews. While anyone can view the board game lists and reviews, they are required to log in to add/ edit the board games and their reviews. The 'users' have the authority to add board games to the list and add reviews, and the 'managers' have the authority to edit/ delete the reviews on top of the authorities of users.  

## Technologies 🛠️

- Terraform
- Ansible
- Java
- Docker
- Spring Boot
- Thymeleaf
- Thymeleaf Fragments
- HTML5
- CSS
- JavaScript
- Spring MVC
- JDBC
- H2 Database Engine (In-memory)
- JUnit test framework
- Spring Security
- Twitter Bootstrap
- Maven

## Features ☁️

- Full-Stack Application
- UI components created with Thymeleaf and styled with Twitter Bootstrap
- Authentication and authorization using Spring Security
  - Authentication by allowing the users to authenticate with a username and password
  - Authorization by granting different permissions based on the roles (non-members, users, and managers)
- Different roles (non-members, users, and managers) with varying levels of permissions
  - Non-members only can see the boardgame lists and reviews
  - Users can add board games and write reviews
  - Managers can edit and delete the reviews
- Deployed the application on AWS EC2
- JUnit test framework for unit testing
- Spring MVC best practices to segregate views, controllers, and database packages
- JDBC for database connectivity and interaction
- CRUD (Create, Read, Update, Delete) operations for managing data in the database
- Schema.sql file to customize the schema and input initial data
- Thymeleaf Fragments to reduce redundancy of repeating HTML elements (head, footer, navigation)

## Steps for Project 🚀

- Clone the Repo  `git clone https://github.com/Mahfouz98/CI-CD-Application-Deployment`
- Create SonarQube Server
  - Create EC2 Instance
  - Install docker on the machine, Save that Code on a file and `chmod +x <file_name>` and run it as a script 
    
 ```
      # Add Docker's official GPG key:
      sudo apt-get update
      sudo apt-get install ca-certificates curl
      sudo install -m 0755 -d /etc/apt/keyrings
      sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
      sudo chmod a+r /etc/apt/keyrings/docker.asc

      # Add the repository to Apt sources:
      echo \
        "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
        $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
        sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
      sudo apt-get update
```

- Run sonarqube container `docker run -d -p 9000:9000 --name Sonarserver sonarqube` First credentials is user:admin, pass:admin
- Create a dockerhub account to Push Your image in
- Add your credentials in github secret

![Screenshot from 2024-05-12 21-36-44](https://github.com/Mahfouz98/CI-CD-Application-Deployment/assets/145352617/3ae35e83-9748-436c-8774-7640ffe89ee5)


- Don't forget to Create S3 Bucket for backend statefile of terraform


### Run Pipeline, Everything Else is Automated

![Screenshot from 2024-05-13 05-20-59](https://github.com/Mahfouz98/CI-CD-Application-Deployment/assets/145352617/44ed79ab-4e54-4d34-9828-c99c4eef6421)

- As long as i'm using K8s Cluster using EC2 instances not EKS nor IAM roles, I can't get LoadBalancer external IP
- To Check your Website Access it By    ` <NODE_IP>:<NODE_PORT>`   , In my case it was   `<Worker1>:<31102>`

  ![Screenshot from 2024-05-13 04-18-17](https://github.com/Mahfouz98/CI-CD-Application-Deployment/assets/145352617/05b076be-3d2f-4b11-abc7-05c0d2f07bdf)

## How to Run

- To use initial user data, use the following credentials.
  - username: bugs    |     password: bunny (user role)
  - username: daffy   |     password: duck  (manager role)
- You can also sign-up as a new user and customize your role to play with the application! 😊

## 🎉 Acknowledgements

Thank you for taking the time to explore this project. Your interest and feedback are greatly appreciated. If you have any questions or suggestions, please feel free to open an issue or submit a pull request. Happy coding!

