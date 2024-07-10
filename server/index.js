const express = require("express");
const http = require("http");
const mongoose = require("mongoose");

const app = express();
const port = process.env.PORT || 4000;
const server = http.createServer(app);
const io = require("socket.io")(server);
const Room = require("./models/room.js");

app.use(express.json());

const DB =
  "mongodb+srv://rathaurkaushik015:test123@cluster0.kaaczqx.mongodb.net/myDatabase?retryWrites=true&w=majority&appName=Cluster0";

io.on("connection", (socket) => {
  console.log("Connected");
  socket.on("createRoom", async ({ nickname }) => {
    console.log(nickname);
    //room is created
    try {
      let room = new Room();
      let player = {
        socketID: socket.id,
        nickname,
        playerType: "X",
      };
      room.players.push(player);
      room.turn = player;
      await room.save();
      console.log(room);
      const roomId = room._id.toString();

      socket.join(roomId);
      // io -> send data foreveryone
      //socket -> sending data to yourself
      io.to(roomId).emit("create\roomSucess", room);
    } catch (e) {
      console.log(e);
    }
  });
});

mongoose
  .connect(DB, {})
  .then(() => {
    console.log("MongoDB connected successfully!");
  })
  .catch((err) => {
    console.error("Error connecting to MongoDB:", err.message);
  });

server.listen(port, "0.0.0.0", () => {
  console.log(`Server is running on port ${port}`);
});
