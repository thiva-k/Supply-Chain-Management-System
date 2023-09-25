import axios from "axios";

// const API_URL = "/auth";
// const API_URL = "/auth";


const signup = async (email, first_name, last_name, password, confirmpassword, phone_num) => {
    try{
    const response = await axios.post("http://localhost:3001/signup", { email, first_name, last_name, password, confirmpassword, phone_num });

    } catch (err) {
        alert(err); window.location = '/signup';
    }
};

const login = async (email, password) => {
    try {
        const response = await axios.post('http://localhost:3001/login', { email, password });
        if (response.data.accessToken) {

            localStorage.setItem('user', JSON.stringify(response.data));
        } else {
            alert("Wrong Username or Password wrong");
            window.location = '/login';
        }
    } catch (err) {
        alert('Username or Password wrong'); window.location = '/login';
    }

};

const logout = async() => {
    localStorage.removeItem("user");

};

const getCurrentUser = () => {
    return JSON.parse(localStorage.getItem("user"));
};

const authService = {
    signup,
    login,
    logout,
    getCurrentUser,
};

export default authService;
