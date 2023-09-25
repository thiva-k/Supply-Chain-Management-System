import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';
import 'font-awesome/css/font-awesome.css';
import 'bootstrap/dist/css/bootstrap.css';
import "bootstrap/dist/js/bootstrap.js";
import { BrowserRouter } from 'react-router-dom';
import Footer from './components/footer/Footer';
// import "bootstrap/js/src/collapse.js";


ReactDOM.render(
  <BrowserRouter>
    <App />
  </BrowserRouter>,

  document.getElementById('root')
);
ReactDOM.render(
  <BrowserRouter>
    <Footer />
  </BrowserRouter>,

  document.getElementById('constant-footer')
);

reportWebVitals()