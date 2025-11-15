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
3. Install Dependencies
4. Run the Application
# Innovapharma Landing Page

##  Project Overview
A collaborative project to practice Git, GitHub, HTML, and CSS while building the Innovapharma landing page.

##  Team Tasks

| Task | Description | Assigned To |
|------|-------------|-------------|
| 1 | Recall of Git & GitHub uses | Samuel |
| 2 | Install & configure Git | Samuel |
| 3 | Git commands & definitions | Anob |
| 4 | Git command implementation | Lorna |
| 5 | Collaboration using branches & PRs | Etienne |
| 6 | Build landing page (HTML/CSS) | Ryan |

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
