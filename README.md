# Student Registration System

## 📌 Project Purpose
A full-stack web application for managing student registrations, featuring:
- **Frontend**: Responsive HTML/CSS form
- **Backend**: Node.js/Express server
- **Database**: MySQL (AWS RDS)
- **Deployment**: Docker containerization & AWS cloud integration

## 🚀 Key Features
- User-friendly registration interface
- Secure data persistence in cloud database
- Real-time submission feedback
- Scalable architecture

## 🛠️ Technologies Used
| Component       | Technology Stack |
|----------------|------------------|
| Frontend       | HTML5, CSS3, JavaScript |
| Backend        | Node.js, Express |
| Database       | MySQL (AWS RDS)  |
| Infrastructure | Docker, AWS (S3, RDS) |

## 💡 Challenges & Lessons Learned
1. **Form Data Handling**  
- I gave a lot of time in AWS S3 to make it lunchable in public because of restrictions applied in using ACL (Access Control List). Then, I used the object link method using Inbound rule by adding rule.
- I had multiple errors in fetching frontend data to backend and to mySQL database.
   - Initial `req.body undefined` errors taught me  the importance of:  
     - Proper middleware ordering (`app.use(express.urlencoded())` before routes)  
     - Correct `enctype="application/x-www-form-urlencoded"` in HTML forms 
     - Finally, my project was successful that whatever I read/write in S3 object URL, it now be stored in my database. 

2. **AWS Security**  
   - Learned to:  
     - Never hardcode credentials (use `.env` files)  
     - Restrict RDS security groups to specific IPs  
     - Implement CORS policies properly  

3. **Debugging Techniques**  
   - Found these invaluable:  
     - `console.log(req.body)` for request inspection  
     - Browser DevTools' Network tab for API call analysis  
     - `SELECT * FROM registrations` for database verification  

## 🖥️ How to Run the Project
- Open Power Shell
type: cd C:\Users\mahes\Documents\student-backend
type: node server.js

Then, Open index.html file in browser
@
D:\student-app

click - index.html


### Prerequisites
- Node.js (v18+)
- MySQL client
- Docker (optional)

### Local Development
1. **Start Backend**:
   ```bash
   cd backend
   npm install
   cp .env.example .env  
   node server.js


Launch Frontend:

bash
cd frontend
npx http-server
Access at: http://localhost:8080

Docker Deployment

bash
docker build -t student-registration .
docker run -p 3000:3000 student-registration
AWS Setup
Frontend: Upload index.html/style.css to S3 bucket

Backend: Deploy server.js to EC2

Database: Use existing RDS MySQL instance

Docker Link: https://hub.docker.com/repository/docker/maheshk77/student-registration-app/tags

