const mongoose =require('mongoose');
const { Socket } = require('socket.io');

const playersSchema = new mongoose.Schema({
    nickname: {
        type: String,
        trim: true,
    },
    SocketID: {
        type: String,
    },
    points: {
        tyoe: Number,
        default: 0,
    },
    playerType: {
        require: true,
        type: String,
    }

});

module.exports = playersSchema;