using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace N01354699_Assignment1
{
    public partial class go_kart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            rangeValidator_of_incident.MaximumValue = DateTime.Today.ToShortDateString();
            if (Page.IsPostBack)
            {
                //Re-validates the code on the server side. can never be too careful!
                Page.Validate();
                if (Page.IsValid)
                {
                    //Guest_Fname is the C# variable we just created
                    //guest_lfname is the information pulled from the webform (.aspx) page.
                    string Victim_Fname = victim_firstname.Text.ToString();
                    string Victim_phone_no = victim_phone_number.Text.ToString();
                    string Incident_date = date_incident.Text.ToString();
                    string Incident_time = time_incident.Text.ToString();
                    string Gender_of_victim = victim_gender.SelectedValue.ToString();
                    string Oil_fuel_radio = oil_fuel_radio_btn.SelectedValue.ToString();
                    string Fire_extinguisher_radio = extinguisher_in_cart_radio.SelectedValue.ToString();
                    string Problem_with_cart = problem_kart.SelectedValue.ToString();
                    string Summary_multiline = summary.Text.ToString();

                    displaybox.InnerHtml = "Your incident has been recorded!<br><br>Your Summary is as follows: <br>";

                    displaybox.InnerHtml += " First Name : " + Victim_Fname + "<br>";
                    displaybox.InnerHtml += " Phone Number : " + Victim_phone_no + "<br>";
                    displaybox.InnerHtml += " Date of Incident: " + Incident_date + "<br>";
                    displaybox.InnerHtml += " Date of Incident: " + Incident_time + "<br>";
                    displaybox.InnerHtml += " Victim's Gender : " + Gender_of_victim + "<br>";
                    displaybox.InnerHtml += " Oil and fuel was : " + Oil_fuel_radio + " filled <br>";
                    displaybox.InnerHtml += " Fire Extinguisher was present in cart : " + Fire_extinguisher_radio + " <br>";
                    displaybox.InnerHtml += " The Problem with the cart was " + Problem_with_cart + " <br>";
                    displaybox.InnerHtml += " Summary: " + Summary_multiline + "<br>";

                    if (Problem_with_cart == "Steering" || Problem_with_cart == "Brake" || Problem_with_cart == "Engine")
                    {
                        displaybox.InnerHtml += "<center>---Your problem requires urgent attention---</center> <br>";

                    } else if(Problem_with_cart == "Accelerator" || Problem_with_cart == "Other")
                    {
                        displaybox.InnerHtml += "<center>---Your investigation is pending---</center> <br>";
                    }
                    else if(Oil_fuel_radio == "not properly" || Fire_extinguisher_radio == "No")
                    {
                        displaybox.InnerHtml += "<center>---Your issue is resolved---</center> <br>";
                    }


                }
                

            }
        }
    }
}