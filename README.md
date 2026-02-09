# innopharma 
# innopharma
 Web application that allows registered pharmacies to self-register their medecine availablity and enables patients to search and locate pharmacies that stock their medecine.
Pharmacies will register on the innopharma platform and will submit documents like their Business registration documents, their tax receipts, and the images of their pharmacy.
The users of the platform will also have to create accounts and submit their personal documents and a proof of address to become verified.
Technologies:

We will use the following softwares installed locally:
 * Node.js (LTS Version 18+): Includes the Node Package Manager (npm) for installing dependencies.
 * MongoDB: The database server must be running either locally or via a cloud service (e.g., MongoDB Atlas).
 * Git: For cloning the repository.

Installation and Setup Steps:
To setup our project locally;
we Started by downloading the source code: 
git clone https://github.com/koumbo-ryans/innopharma
cd innopharma
In the next weeks,we will have to
2. Configure the Database
   - Ensure your MySQL database has a `users` table with the following fields:
     - `user_id` (INT, PRIMARY KEY, AUTO_INCREMENT)
     - `username` (VARCHAR, UNIQUE)
     - `email` (VARCHAR, UNIQUE)
     - `password_hash` (VARCHAR)
     - `full_name` (VARCHAR)
     - `phone` (VARCHAR)
     - `address` (VARCHAR)
     - `profile` (JSON) -- for flexible user profile/settings storage
     - `role` (VARCHAR, default 'user') -- for RBAC
     - `is_verified` (BOOLEAN, default false)
     - `created_at` (TIMESTAMP, default CURRENT_TIMESTAMP)
     - `updated_at` (TIMESTAMP, auto-update)
   - Example SQL:
     ```sql
     CREATE TABLE users (
       user_id INT AUTO_INCREMENT PRIMARY KEY,
       username VARCHAR(50) NOT NULL UNIQUE,
       email VARCHAR(100) NOT NULL UNIQUE,
       password_hash VARCHAR(255) NOT NULL,
       full_name VARCHAR(100),
       phone VARCHAR(20),
       address VARCHAR(255),
       profile JSON,
       role VARCHAR(20) DEFAULT 'user',
       is_verified BOOLEAN DEFAULT FALSE,
       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
       updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
     );
     ```
## Backend Security & Architecture Notes

- Passwords are hashed with bcrypt (cost factor 12).
- JWT is used for authentication; store the token securely (e.g., HTTP-only cookie or Authorization header).
- Role-based access control (RBAC) is implemented for admin/user separation.
- User profile/settings are stored as flexible JSON in the `profile` field.
- All profile updates are partial (PATCH) and validated server-side.
- Use HTTPS in production and keep your JWT secret safe (set `JWT_SECRET` in environment variables).
3. Install Dependencies
4. Run the Application
# Innovapharma Landing Page

##  Project Overview
A collaborative project to practice Git, GitHub, HTML, and CSS while building the Innovapharma landing page.

##  Project Structure

| File/Folder | Purpose |
|-------------|----------|
| index.html | Main page |
| styles/style.css | CSS stylesheet |
| assets/ | Images & resources |
| README.md | Project documentation |

##  Git Branch Workflow

| Branch | Use |
|--------|-----|
| main | Final production version |
| dev | Development/testing |
| feature-* | Individual member tasks |

## How to Contribute

1. Clone repo  
   ```bash
   git clone <repo-url>
   
   Usage and Testing READmd
This section details the basic steps to access and verify the core functionality of the running pharmacy tracking system(innopharma).
How to Run and Access
 * Open the Web App: Once the front-end (React) server is running, access the main interface at:
   http://localhost:3000

 * Verify Backend Connection: The home screen should successfully load initial medication data from the API endpoint.
Basic Usage Examples
1. Checking the API Status
Use a browser or a tool like Postman/cURL to confirm the Node.js server is online and responding:
# Check if the server's pharmacy endpoint is reachable
curl http://localhost:5000/api/status 

(The expected response should be a JSON object like {"status": "API running"})
2. Adding a New Record
Navigate to the "New Admission" page and submit a new patient entry. Verify that the new data appears in the main patient list view.
Running Tests
Execute the automated tests located in the server directory to ensure all back-end functions (like data validation and API routes) are stable:
cd server
npm test

(This command runs all unit tests defined in the server code.)

## Docker Deployment

Follow these steps to build and run the app with Docker Compose (backend + MySQL + frontend):

- Create a `.env` file from `.env.example` and set secure passwords and DB credentials.
- From the repository root, build and start the stack:

```bash
docker compose build
docker compose up -d
```

- Check status and logs:

```bash
docker compose ps
docker compose logs -f backend
docker compose logs -f db
docker compose logs -f frontend
```

- Sanity checks:

```bash
curl http://localhost:5000/api/test-db
# open the frontend in your browser at http://localhost:5173
```

- Stop and remove the stack (including named volumes):

```bash
docker compose down -v
```

Troubleshooting tips
- "Can't connect to database": confirm `.env` values match compose file and `DB_HOST` is set to `db`; run `docker compose logs db` to view MySQL errors.
- "Backend shows dependency or npm errors": try rebuilding without cache: `docker compose build --no-cache backend`.
- "Frontend shows blank page": inspect `frontend` build logs and container logs: `docker compose logs frontend`; verify the React build succeeded and files are served by nginx.

