import React from "react"
import authService from "../service/auth.service"


const Footer = () =>
    <footer style={{

        marginBottom:"-2000px",padding: "6px",position:"sticky", width: '100%', textAlign:"center",
        color: '#6c757d',
        backgroundColor: "#005f73"
        
    }} className="page-footer font-small blue pt-4 navbar-bg">
        <div className="footer-copyright text-center py-3" style={{color: "white", letterSpacing: "6px" }}>&copy; Copyright reserved to <span style={{color: "white", fontWeight: "bold", letterSpacing: "1px" }}>Team 36</span>. All Rights Reserved
        </div>
        {/* <p className="text-center pb-3" style={{ fontWeight: "bold", letterSpacing: "3px", fontStyle: "italic" }}>Page designed by:<span>Team 36</span></p> */}
    </footer>

export default Footer