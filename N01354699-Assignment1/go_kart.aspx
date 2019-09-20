<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="go_kart.aspx.cs" Inherits="N01354699_Assignment1.go_kart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Assignment 1</title>
    
    <style>
        .group {
            position: relative;
            margin-bottom: 25px;
        }

        .animate_input_field {
            font-size: 18px;
            padding: 10px 10px 10px 5px;
            display: block;
            width: 100%;
            border: none;
            color:#aaaaaa;
            border-bottom: 1px solid #757575;
        }

            .animate_input_field:focus {
                outline: none;
            }

        /* active */
        input:focus ~ .mylabel, input:valid ~ .mylabel {
            top: -20px;
            font-size: 14px;
            color: #5264AE;
        }

        /* bottom bars */
        .bar {
            position: relative;
            display: block;
            width: 100%;
        }

            .bar:before, .bar:after {
                content: '';
                height: 2px;
                width: 0;
                bottom: 1px;
                position: absolute;
                background: #5264AE;
                transition: 0.9s ease all;
                -moz-transition: 0.9s ease all;
                -webkit-transition: 0.9s ease all;
            }

            .bar:before {
                left: 50%;
            }

            .bar:after {
                right: 50%;
            }

        /* active */
        input:focus ~ .bar:before, input:focus ~ .bar:after {
            width: 50%;
        }
        /* highlighter */
        .highlight {
            position: absolute;
            height: 60%;
            width: 200px;
            top: 25%;
            pointer-events: none;
            opacity: 0.5;
        }

        /* active */
        input:focus ~ .highlight {
            -webkit-animation: inputHighlighter 1.3s ease; 
            -moz-animation: inputHighlighter 1.3s ease;
            animation: inputHighlighter 1.3s ease;
        }

        /* animation for text */
        @-webkit-keyframes inputHighlighter {
            from {
                background: #5264AE;
            }

            to {
                width: 0;
                background: transparent;
            }
        }

        @-moz-keyframes inputHighlighter {
            from {
                background: #5264AE;
            }

            to {
                width: 0;
                background: transparent;
            }
        }

        @keyframes inputHighlighter {
            from {
                background: #5264AE;
            }

            to {
                width: 0;
                background: transparent;
            }
        }
        /* LABEL ================== */
        .mylabel {
            color: #999;
            font-size: 18px;
            font-weight: normal;
            position: absolute;
            pointer-events: none;
            left: 5px;
            top: 10px;
            transition: 0.2s ease all;
            -moz-transition: 0.9s ease all;
            -webkit-transition: 0.9s ease all;
        }

        .main_container {
            box-shadow: 0px 0px 5px 0px grey;
            width: 50%;
            margin: 0 auto;
            border-radius: 4px;
            padding: 2em 3em 1em 1em;
        }
        .group p,label {
            color: #999999;
            text-shadow: 4px 2px 6px #8eb7d3;
            font-family: Lucida Bright;
        }

        .group select {
            width: 69%;
            font-size: 16px;
            border-width: 2px;
            padding: 5px 0px 5px 195px;
            border-radius: 5px;
            color: #aaa;
        }

        .text-area {
            resize: none;
            border: 2px solid #a9a9a9;
            font-size: 18px;
            width: 100%;
            border-radius: 5px;
        }

        .gokart_heading {
            text-align: center;
            color: #5264AE;
            text-shadow: 3px 8px 6px #aaa;
        }

        .submit {
            width: 40%;
            margin: auto;
            display: block;
            padding: 5px 0 5px 0px;
            font-size: 14px;
            background-color: #5a262636;
            border-radius: 12px;
        }
    </style> 
</head>
<body>
    <form id="form1" method="post" action="https://postman-echo.com/post" runat="server">
            <h1 class="gokart_heading">Go Kart Incident report</h1>
        <div class="main_container">
            <div class="group">
                 <asp:TextBox ID="firstname" runat="server" class="animate_input_field" required="true"></asp:TextBox>
                <span class="highlight"></span>
                <span class="bar"></span>
                <label class="mylabel">Enter your Full Name</label>
            </div>
            <div class="group">
                <asp:TextBox ID="phone_number" class="animate_input_field" runat="server" TextMode="Number" required="true"></asp:TextBox>
                <span class="highlight"></span>
                <span class="bar"></span>
                <label class="mylabel">Enter your Phone number</label>
            </div>
            <div class="group">
                <p>Date of Incident</p>
                <asp:TextBox TextMode="Date" runat="server" ID="date_incident" class="animate_input_field" required="true"></asp:TextBox>
                <span class="highlight"></span>
                <span class="bar"></span>
            </div>
            <div class="group">
                <p>Time of Incident</p>
                <asp:TextBox runat="server" TextMode="Time" min="0" max="23" ID="time_incident" class="animate_input_field" required="true"></asp:TextBox>
                <span class="highlight"></span>
                <span class="bar"></span>
            </div>
            <div class="group">
                <strong> <label>Please specify your Gender</label></strong>
                    <asp:DropDownList runat="server" ID="gender">
                            <asp:ListItem Text="Select Gender" Value="" selected="true" disabled="true"></asp:ListItem>
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                     </asp:DropDownList>
            </div>
            <div class="group">
                <strong> <p>Type of Injury occured : </p></strong>
                    <asp:CheckBoxList runat="server" ID="type_of_injury">
                            <asp:ListItem Text="Minor Injury" Value="minor_injury"></asp:ListItem>
                            <asp:ListItem Text="Fracture" Value="fracture"></asp:ListItem>
                            <asp:ListItem Text="Neck pain" Value="neck_pain"></asp:ListItem>
                            <asp:ListItem Text="Muscle Spasm" Value="muscle_spasm"></asp:ListItem>
                            <asp:ListItem Text="Burns on Body parts" Value="burns"></asp:ListItem>
                     </asp:CheckBoxList>
              
            </div>
            <div class="group">
               <strong><p>Precautions : </p></strong> 

                <p> Oil and fuel were properly filled or not ?</p>
                <section>
                    <asp:RadioButtonList runat="server" ID="RadioButtonList2">
                          <asp:ListItem Text="Yes" Value="oil_fuel_yes"></asp:ListItem>
                          <asp:ListItem Text="No " Value="oil_fuel_no"></asp:ListItem>
                        </asp:RadioButtonList>
                    
                </section>

                <p> Fire Extinguisher was present in cart or not ?</p>
                <section>
                         <asp:RadioButtonList runat="server" ID="RadioButtonList3">
                            <asp:ListItem Text="Yes" Value="fire_extinguisher_yes"></asp:ListItem>
                            <asp:ListItem Text="No " Value="fire_extinguisher_no"></asp:ListItem>
                        </asp:RadioButtonList>
                    
                </section>
                        
            </div>
            <div class="group">
                <label>
                    <strong>Problem with part of kart</strong>
                    <asp:DropDownList runat="server" ID="problem_kart">
                            <asp:ListItem Text="Select problem" Value="" selected="true" disabled="true"></asp:ListItem>
                            <asp:ListItem Text="Steering" Value="Steering"></asp:ListItem>
                            <asp:ListItem Text="Engine" Value="Engine"></asp:ListItem>
                            <asp:ListItem Text="Brake" Value="Brake"></asp:ListItem>
                            <asp:ListItem Text="Accelerator" Value="Accelerator"></asp:ListItem>
                            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                        </asp:DropDownList>

                </label>
            </div>
            <div class="group">
                <p>Saftey Equipments rider was wearing : </p>
                <asp:CheckBoxList runat="server" ID="CheckBoxList1">
                            <asp:ListItem Text="Helmet" Value="helmet"></asp:ListItem>
                            <asp:ListItem Text="Eye Protection" Value="eye_protection"></asp:ListItem>
                            <asp:ListItem Text="Neck Brace" Value="neck_brace"></asp:ListItem>
                            <asp:ListItem Text="Safety Belts" Value="safety_belts"></asp:ListItem>
                            <asp:ListItem Text="Gloves" Value="gloves"></asp:ListItem>
                            <asp:ListItem Text="Racing Shoes" Value="racing_shoes"></asp:ListItem>
                 </asp:CheckBoxList>
            </div>
            <asp:TextBox  TextMode="multiline"  class="text-area" rows="5" id="summary" placeholder="Summary" runat="server"></asp:TextBox>

            <input type="submit" value="Submit" class="submit" />
        </div>
    </form>
</body>
</html>

