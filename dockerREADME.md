# Student Registration Web App  
**By:** Mahesh Karki  
**Student ID:** 1063667  

---

##  Overview  
A lightweight **student registration system** built with HTML/CSS and containerized using Docker. The app provides a frontend interface for collecting student details (name, email, age) and is deployed on Docker Hub for easy sharing.  

**Key Features:**  
 Simple, responsive UI  
 Dockerized for portability  
 Ready-to-run on any system with Docker  

---

##  Technologies Used  
- **Frontend:** HTML5, CSS3  
- **Containerization:** Docker, Nginx (web server)  
- **Hosting:** Docker Hub  

---

#Build The Docker
docker build -t student-registration-app .

##  How to Run  
docker run -d -p 8080:80 --name student-app student-registration-app

### Prerequisites  

- Docker installed ([Download Docker](https://www.docker.com/products/docker-desktop))  
 student-app/
├── index.html          # Frontend form (HTML)
├── style.css           # Styling (CSS)
├── Dockerfile          # Docker configuration
└── README.md           # This file





Docker Hub username:maheshk77