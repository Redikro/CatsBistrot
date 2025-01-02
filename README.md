Applied Technologies:

- HTML, CSS, JavaScript: for the frontend.
- Node.js with Express: for the backend.
- PostgreSQL: for the database.
- dotenv: to manage environment variables.
- pg: for interacting with the PostgreSQL database.
- cross-env: for managing environment variables in a cross-platform way.
- ngrok: to expose the server locally to the internet (optional).

Prerequisites:

- Node.js (version 14 or higher).
- PostgreSQL (version 12 or higher).
- Git (to clone the repository).
- ngrok (optional, if you want to expose the server to the internet).
- A text editor like VS Code (recommended).


1) Install PostgreSQL without Stack Builder.
2) Launch PgAdmin 4.
3) Create a new role by right-clicking on "Role" in the left dropdown and rename it to "Redikro".
4) Create a new database assigned to the "Redikro" role called "CatsBistrot".
5) Download the file "catsbistrotdump.sql" and execute this command in the command prompt: pg_restore -U Redikro -h localhost -p 5432 -d CatsBistrot catsbistrotdump.sql
6) Download the zip file from GitHub and extract it.
7) Install Node.js.
8) In the command prompt, type: cd Desktop/CatsBistrot/public/backend.
9) In the command prompt, type: node app.
10) The server will start, and a message will appear. Now, by pressing CTRL + left-click, you can open the link.
11) If you want a public IP, download ngrok and, while the server is running, type in a second command prompt: ngrok http 3000.

