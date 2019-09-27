<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="go_kart.aspx.cs" Inherits="N01354699_Assignment1.go_kart" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Assignment 1</title>
    
    <style>
        .group {
            position: relative;
            margin-bottom: 5px;
        }

        .animate_input_field {
            font-size: 18px;
            padding: 10px 10px 10px 5px;
            display: block;
            width: 100%;
            border: none;
            color:#5a5757;
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
            height: 43%;
            width: 200px;
            top: 13%;
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
                background: none;
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
            color: #5a5757;
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
            color: #5a5757;
            text-shadow: 4px 2px 6px #8eb7d3;
            font-family: Lucida Bright;
        }
        .group label p strong{
            display:block;
        }
        .styling_text {
            color: #5a5757;
            text-shadow: 4px 2px 6px #8eb7d3;
            font-family: Lucida Bright;
            float:left;
            padding-top: 2%
        }

        .group select {
            width: 69%;
            font-size: 16px;
            border-width: 2px;
            padding: 5px 0px 5px 195px;
            border-radius: 5px;
            color: #5a5757;
            font-family: Lucida Bright;
            font-weight: 700;
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
        #displaybox {
           margin: 2em 0 0 0px;
           padding: 10px 0 8px 1em;
           font-family: Cambria Math;
           border: 2px solid #e4e1e136;
           border-radius: 22px;
           text-shadow: 3px 3px 5px #5264ae;
        }
    </style> 

</head>
<body>
    <form id="form1" method="post" runat="server">
            <h1 class="gokart_heading">Go Kart Incident report</h1>
        <div class="main_container">
            <div class="group">
                <asp:TextBox ID="victim_firstname" runat="server" required="true" class="animate_input_field"></asp:TextBox>
                <span class="highlight"></span>
                <span class="bar"></span>
                <label class="mylabel">Enter your Full Name</label>
                    <asp:RegularExpressionValidator ID="RegexpressionValidate" runat="server" 
                       ErrorMessage="Please enter only Text" ControlToValidate="victim_firstname" 
                       ValidationExpression="^[a-zA-Z ]*$" style="color:#f00; text-shadow:2px 4px 3px #aaa"></asp:RegularExpressionValidator>
                <!--- https://stackoverflow.com/questions/13814340/i-need-a-regular-expression-that-only-accepts-text-characters-with-spaces-allowe 
                    date access 23 sept 2019-->
            </div>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript= "true"
                        ErrorMessage="Please enter your first name" ControlToValidate="victim_firstname"></asp:RequiredFieldValidator>
           

            <div class="group">
                <asp:TextBox ID="victim_phone_number" class="animate_input_field" runat="server" required="true"></asp:TextBox>
                <span class="highlight"></span>
                <span class="bar"></span>
                <label class="mylabel">Enter your Phone number</label>
                    <asp:RegularExpressionValidator ID="expressionValidator_phone" runat="server" 
                       ErrorMessage="Enter valid Phone number" style="color:#f00; text-shadow:2px 4px 3px #aaa" ControlToValidate="victim_phone_number" 
                       ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$" ></asp:RegularExpressionValidator>
            </div>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript= "true"
                        ErrorMessage="Please enter your Phone Number" ControlToValidate="victim_phone_number"></asp:RequiredFieldValidator>
            <!-- Used phone number validation usig regular expression -->
                    

            <!-- DATE OF INCIDENT SHOULD BE BEFORE PRESENT DATE -->
            <span class="styling_text">Date of Incident</span>
            <div class="group">                
                <asp:TextBox TextMode="Date" runat="server" ID="date_incident" class="animate_input_field" required="true"></asp:TextBox>
                <span class="highlight"></span>
                <span class="bar"></span>
            </div>
                 <asp:RangeValidator ID="rangeValidator_of_incident" runat="server" ControlToValidate="date_incident" Type="Date" MinimumValue="01/01/2000" 
                    ErrorMessage="Please enter valid date" style="color:#f00; text-shadow:2px 4px 3px #aaa;margin: 0 0px 0px 0em;display: block;"></asp:RangeValidator>
                 
            <span class="styling_text">Time of Incident</span>   
            <div class="group">
                <asp:TextBox runat="server" TextMode="Time" ID="time_incident" class="animate_input_field"></asp:TextBox>
                <span class="highlight"></span>
                <span class="bar"></span>
            </div>
                <asp:RequiredFieldValidator runat="server" EnableClientScript= "true"
                    ErrorMessage="Please enter time of Incident" ControlToValidate="time_incident"></asp:RequiredFieldValidator>

            <!-- VICTIM SHOULD NOT BE 1St OPTION -->
            <div class="group">
                <strong> <label>Please specify your Gender</label></strong>
                    <asp:DropDownList runat="server" ID="victim_gender">
                            <asp:ListItem Text="Select Gender" Value=""></asp:ListItem>
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                    </asp:DropDownList>
            </div>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true"
                   ControlToValidate="victim_gender" ErrorMessage="Enter select your gender"
                   style="color:#f00; text-shadow:2px 4px 3px #aaa;margin: 0 0px 0px 0em;display:block;"> </asp:RequiredFieldValidator>

            <!-- VICTIM SHOULD SELECT AT LEAST ONCE -->
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
                <!-- VICTIM SHOULD SELECT ATLEAST ONE RADIO BUTTON-->
                <p> Oil and fuel were properly filled ?</p>
                <section>
                    <asp:RadioButtonList runat="server" ID="oil_fuel_radio_btn">
                          <asp:ListItem Text="Yes" Value="properly"></asp:ListItem>
                          <asp:ListItem Text="No " Value="not properly"></asp:ListItem>
                    </asp:RadioButtonList>    
                </section>

                    <asp:RequiredFieldValidator ID="required_oil_fuel" runat="server" 
                         ControlToValidate="oil_fuel_radio_btn" ErrorMessage="Please select an option"
                         style="color:#f00; text-shadow:2px 4px 3px #aaa;margin: 0 0px 0px 0em;display:block;"></asp:RequiredFieldValidator>

                 <!-- VICTIM SHOULD SELECT ATLEAST ONE RADIO BUTTON-->
                <p> Fire Extinguisher was present in cart ?</p>
                <section>
                        <asp:RadioButtonList runat="server" ID="extinguisher_in_cart_radio">
                            <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                            <asp:ListItem Text="No " Value="No"></asp:ListItem>
                        </asp:RadioButtonList>
                </section>      
                    <asp:RequiredFieldValidator ID="extinguisher_validation" runat="server" 
                         ControlToValidate="extinguisher_in_cart_radio" ErrorMessage="Please select an option"
                         style="color:#f00; text-shadow:2px 4px 3px #aaa;margin: 0 0px 0px 0em;display:block;"></asp:RequiredFieldValidator>
            </div>
            <!-- VICTIM SHOULD SELECT ANY OPTION LEAVING 1ST-->
            <div class="group">
                <label>
                    <p style="display:inline-block;"><strong>Problem with part of kart</strong></p>
                    <asp:DropDownList runat="server" ID="problem_kart">
                            <asp:ListItem Text="Select problem" Value="" selected="true"></asp:ListItem>
                            <asp:ListItem Text="Steering" Value="Steering"></asp:ListItem>
                            <asp:ListItem Text="Engine" Value="Engine"></asp:ListItem>
                            <asp:ListItem Text="Brake" Value="Brake"></asp:ListItem>
                            <asp:ListItem Text="Accelerator" Value="Accelerator"></asp:ListItem>
                            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                     </asp:DropDownList>

                </label>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true"
                        ControlToValidate="problem_kart" ErrorMessage="Kindly select the problem of kart"
                        style="color:#f00; text-shadow:2px 4px 3px #aaa;margin: 0 0px 0px 0em;display:block;"> </asp:RequiredFieldValidator>
            </div>
            <!-- VICTIM SHOULD SELECT AT LEAST ONE CHECKBoX -->
            <div class="group">
                <p>Saftey Equipments rider was wearing : </p>
                <asp:CheckBoxList runat="server" ID="safety_checklist">
                            <asp:ListItem Text="Helmet" Value="helmet"></asp:ListItem>
                            <asp:ListItem Text="Eye Protection" Value="eye_protection"></asp:ListItem>
                            <asp:ListItem Text="Neck Brace" Value="neck_brace"></asp:ListItem>
                            <asp:ListItem Text="Safety Belts" Value="safety_belts"></asp:ListItem>
                            <asp:ListItem Text="Gloves" Value="gloves"></asp:ListItem>
                            <asp:ListItem Text="Racing Shoes" Value="racing_shoes"></asp:ListItem>
                 </asp:CheckBoxList>
            </div>

            <asp:TextBox TextMode="multiline" class="text-area" rows="5" id="summary" placeholder="Summary(optional)" runat="server"></asp:TextBox>

            <section>
                <asp:ValidationSummary runat="server" ShowSummary="true" style="color:#f00; text-shadow:2px 4px 3px #aaa;margin: 0 0px 0px 0em;display:block;"/>
            </section>
                
            <input type="submit" value="Submit" class="submit" />
           
                  <section id="displaybox" runat="server"></section>
             
        </div>
    </form>
    
</body>
</html>

