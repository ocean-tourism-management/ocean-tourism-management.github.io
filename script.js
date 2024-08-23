// Import the functions you need from the SDKs you need
import { initializeApp } from "https://www.gstatic.com/firebasejs/10.12.4/firebase-app.js";
import { getDatabase, ref, set, get, child  } from "https://www.gstatic.com/firebasejs/10.12.4/firebase-getDatabase.js";


// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
apiKey: "AIzaSyC4cq5On0oRSAqp7vaS8tnedIZrDUoydzU",
authDomain: "ocean-tourism-management.firebaseapp.com",
projectId: "ocean-tourism-management",
storageBucket: "ocean-tourism-management.appspot.com",
messagingSenderId: "989577435763",
appId: "1:989577435763:web:341bdd346ef4ee7c14e806",
measurementId: "G-K61R7KM5RL"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);

//get ref to database services
const db = getDatabase(app);
document.getElementById("submit").addEventListener('click',function(e){
    e.preventDefault();
    set(ref(db, 'user/' + document.getElementById("username").value),
    {
        username: document.getElementById("username").value,
        password: document.getElementById("password").value
    });
        alert("Login Successfull !");

})

