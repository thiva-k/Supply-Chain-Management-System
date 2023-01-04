import React from "react"
import authService from "../service/auth.service"

// // if (authService.getCurrentUser()) { window.location = '/'; } else { window.location = '/auth/login'; }
// const Footer = () =>
//     <footer style={{

//         marginBottom:"0px",position:"fixed", width: '100%',backgroundColor:"#abc7da"
//     }} className="page-footer font-small blue pt-4 navbar-bg">
//         <div className="footer-copyright text-center py-3" style={{ letterSpacing: "6px" }}>&copy; Copyright reserved to <span style={{ fontWeight: "bold", letterSpacing: "1px" }}>DBProjGroup36</span>. All Rights Reserved
//         </div>
//         <p className="text-center pb-3" style={{ fontWeight: "bold", letterSpacing: "3px", fontStyle: "italic" }}>Page designed by:<span>DBProjGroup36</span></p>
//     </footer>


// export default Footer

class Footer extends React.Component {

    render() {
        return (
            <div style={{
                marginBottom:"-2000px",position:"sticky", width: '100%',backgroundColor:"#a0ceed", textAlign:"center"
            }} className="page-footer font-small blue pt-4 navbar-bg">
                <div className="footer-copyright text-center py-3" style={{ letterSpacing: "6px",marginTop:"5px", marginBottom:"5px" }}>
                    &copy;Copyright reserved to 
                    <span style={{ fontWeight: "bold", letterSpacing: "1px" }}>  DBProjGroup36   </span>
                    <div>All Rights Reserved</div>
                </div>
                <div className="text-center pb-3" style={{ fontWeight: "bold", letterSpacing: "3px", fontStyle: "italic", marginBottom:"40px" }}>Page designed by:<span>DBProjGroup36</span></div>
                
            </div>
        );
    }
}

export default Footer;