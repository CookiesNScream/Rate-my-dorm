const mongoose = require("mongoose");

const userSchema = mongoose.Schema({
    username: {
        type: String,
        required: [true, "Please add user name"],
        unique: [true, "Username already taken"]
    },
    school: {
        type: String,
        //required: [true, "Please add the user email address"],
        //unique: [true, "Email address already taken"]
    },
    password: {
        type: String,
        required: [true, "Please add the user password"],
    },
}, {
    Timestamp : true,
})

module.exports = mongoose.model("User", userSchema);