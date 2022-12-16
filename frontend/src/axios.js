import axios from "axios";

window.axios = axios
axios.defaults.withCredentials = false
// axios.defaults.baseURL = "http://localhost:8081/api"
let backendUrl = "https://backendrestaurant-production.up.railway.app/api"
axios.defaults.baseURL = backendUrl
