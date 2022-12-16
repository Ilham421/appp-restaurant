import axios from "axios";

window.axios = axios
axios.defaults.withCredentials = false

let backendUrl = "https://backendrestaurant-production.up.railway.app/api"
axios.defaults.baseURL = backendUrl
