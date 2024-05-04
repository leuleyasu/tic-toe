const express = require("express");
const http = require("http");
const mongoose = require("mongoose");
const socketIO = require("socket.io");

const app = express();
const Db = "mongodb+srv://leuleyasu7:WvQlOYJh5FioLX01@cluster0.josc8r8.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";
mongoose
  .connect(Db)
  .then(() => {
    console.log("connected successfully the DB ");
  })
  .catch((e) => {
    console.log("Something went wrong in the Db connection");
  });

const port = process.env.PORT || 3000;
const server = http.createServer(app);
const io = socketIO(server); // Initialize Socket.IO after creating the server

io.on("connection", (socket) => { // Use lowercase "connection"
  console.log("socket connected");

  socket.on("createRoom", (nickname) => { // Properly define the callback
    console.log(nickname);
  });
});

// Middleware
app.use(express.json());

server.listen(port, "192.168.1.5", () => {
  console.log(`Server started on port ${port}`);
});
