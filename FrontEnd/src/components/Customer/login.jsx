import React, { Component } from "react";

import authService from "../service/auth.service";

class Login extends Component {
  state = {
    email: "",
    password: "",
  };
  handleEmailChange = (e) => {
    this.setState({ email: e.target.value });
  };
  handlePasswordChange = (e) => {
    this.setState({ password: e.target.value });
  };
  onFormSubmit = async (e) => {
    if (!this.state.email) {
      alert("Enter Email");
      return;
    }
    if (!this.state.password) {
      alert("Enter password");
      return;
    }
    e.preventDefault();
    try {
      await authService.login(this.state.email, this.state.password).then(
        () => {
          if (this.state.email.startsWith("supplypro")) {
            window.location = "/store";
          } else {
            window.location = "/";
          }
          // console.log(res);
          // console.log(req)
          // window.location.reload();
        },
        (error) => {
          console.log(error);
          window.location = "/";
        }
      );
    } catch (err) {
      console.log(err);
      window.location = "/";
    }
    // await Axios.post('http://localhost:3001/login', { email: this.state.email, password: this.state.password })
    //     .then((response) => {
    //         if (response.data.accessToken) {
    //             console.log(response.data)
    //             localStorage.setItem('user', JSON.stringify(response.data));
    //             // window.location = '/';

    //         } else {
    //         }
    //     })
    //     .catch(err => alert('Something went wrong'))
    // .then(window.location.reload())
  };

  render() {
    if (authService.getCurrentUser()) {
      window.location = "/";
    }
    return (
      <div
        style={{
          marginTop: "10px",
          marginBottom: "10px",
          fontFamily: "times new roman",
        //   backgroundImage:url("supply-chain-management.jpg"),
        }}
      >
        <div className="d-flex justify-content-center">
          <div className="card" style={{ margin: "100px", width: "50%"}}>
            <div className="card-body">
              <div className="card-title">
                <h1 className="text-primary">Log In</h1>
              </div>
              <div className="card-body">
                <form action="">
                  <div className="mb-3">
                    <label htmlFor="" className="form-label">
                      Email
                    </label>
                    <input
                      type="text"
                      className="form-control"
                      placeholder="Enter the Email"
                      value={this.state.email}
                      onChange={this.handleEmailChange}
                    />
                  </div>
                  <div className="mb-3">
                    <label htmlFor="" className="form-label">
                      Password
                    </label>
                    <input
                      type="password"
                      className="form-control"
                      placeholder="Enter the Password"
                      value={this.state.password}
                      onChange={this.handlePasswordChange}
                    />
                  </div>
                  <button
                    type="submit"
                    onClick={this.onFormSubmit}
                    className="btn btn-primary mt-4"
                  >
                    Log In
                  </button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default Login;
