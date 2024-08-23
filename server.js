const express = require('express');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;

// Connect to MongoDB
mongoose.connect('mongodb://localhost:27017/mydatabase', {
  useNewUrlParser: true,
  useUnifiedTopology: true,
});

const userSchema = new mongoose.Schema({
  fname: String,
  password: String,
  email: String,
  city: String,
  phone: String,
});

const User = mongoose.model('User', userSchema);

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.post('/save', async (req, res) => {
  const { fname, password, email, city, phone } = req.body;

  const newUser = new User({
    fname,
    password,
    email,
    city,
    phone,
  });

  try {
    await newUser.save();
    res.send('User saved successfully!');
  } catch (err) {
    res.status(500).send('Error saving user');
  }
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
