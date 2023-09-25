function findPercentage(new_, old) {
    return (new_ - old) / old * 100;
}

function today() {
    const today = new Date();
    const dae = today.getDate() + "-" + today.getMonth() + "-" + today.getFullYear();
    return dae;
}

module.exports = ({ name, totalProducts }) => {

    // const today = new Date();
    console.log(today())
    return `
 <!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <title>PDF Result Template</title>
    <style>
        .invoice-box {
            max-width: 800px;
            height: 1035px;
            margin: auto;
            padding: 30px;
            border: 5px solid rgb(32, 29, 29);
            box-shadow: 0 0 10px rgba(0, 0, 0, .15);
            font-size: 22px;
            line-height: 24px;
            font-family: 'Helvetica Neue', 'Helvetica';
            background-color: #black;
            color: #555;
        }

        label {
            color: black;
        }

        .column {
            float: left;
            width: 18%;
            color: black;
            padding: 10px 10px 0 0;
            /* border: #000 solid 3px; */
            /* text-align-last: center; */
        }

        .row:after {
            content: "";
            display: table;
            clear: both;

        }
    </style>
</head>

<body bgcolor:'#eee';>
    <div class="invoice-box">
        <div>
            <!-- <img src={require('../../Images/' + this.props.item.img)} alt="adsakk" style={{ width: '100%', height: '100%', objectFit: 'cover' }} /> -->
            <img src="https://upload.wikimedia.org/wikipedia/en/d/da/supplyproLogo.png" alt="100" style="width:40%;height:auto;">
            <!-- <img src="logo.jpeg> -->

            <div style="margin-top: -5%;"><label style="margin-left: 550px; padding-top: -150px;">Date: ${today()}</label>
            </div>
        </div>
      <div style="margin-left: 15%;">
            <h2 style="margin-left:6%; margin-top: 6%; text-indent:2em;">Quartely Sales Report</h2>
            <div style="margin-top: 8%;">
                <label style="margin-right: 40px;">Quartely Sales Report Period :</label>
            </div>

            <div style="margin-top: 6%;">
                <label>Total Product Sold<span style="margin-left: 110px; margin-right: 40px;">:</span>400</label>
            </div>
            <div style="margin-top: 6%;">
                <label>Total Collection<span style="margin-left: 140px;margin-right: 40px;">:</span></label>
            </div>
            <div style="margin-top: 6%;">
                <label>Most Sold Order<span style="margin-left: 129px;margin-right: 40px;">:</span></label>
            </div>
            <div style="margin-top: 6%;">
                <label>Least Sold Order<span style="margin-left: 124px;margin-right: 40px;">:</span></label>
            </div>
            <div style="margin-top: 6%;">
                <label>Most Engaged Store<span style="margin-left: 89px;margin-right: 40px;">:</span></label>
            </div>
            <div style="margin-top: 6%;">
                <label>Total Shipments<span style="margin-left: 133px;margin-right: 40px;">:</span></label>
            </div>
        </div>

        <div class="row" style="font-size: 16px; margin-top: 100px; margin-left:-10px">
            <div class="column">ORDERS</div>
            <div class="column">WORKING HOURS</div>
            <div class="column">TRAIN TRANSPORTS</div>
            <div class="column">TRUCK TRANSPORTS</div>
            <div class="column">PRODUCT SALES</div>
        </div>

        <div class="row" style="font-size: 16px; font-weight: bold;margin-top: 15px;  margin-left:-10px;">
            <div class="column">14K</div>
            <div class="column">2.0K</div>
            <div class="column">1.650K</div>
            <div class="column">76.0</div>
            <div class="column">${totalProducts[0]['count']}</div>
            <!-- <div class="column">2</div>
            <div class="column">2.6M</div> -->
        </div>

        <div class="row" style="font-size: 16px; font-weight: bold;  margin-top:10px; margin-left:-10px;">
            <div class="column">&#8593; 37.2%</div>
            <div class="column">&#8593; 19.1%</div>
            <div class="column">&#8593; 21.0%</div>
            <div class="column">&#8593; 35.7%</div>
            <div class="column" style="color:green">&#8593; ${findPercentage(totalProducts[0]['count'], totalProducts[1]['count'])}%</div>
            <!-- <div class="column">&#8593; N/A</div>
            <div class="column">&#8593; 2.3%</div> -->
        </div>
    </div>

</body>

</html>
   `;
};