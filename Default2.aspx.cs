using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            CommunityAssistEntities cae = new CommunityAssistEntities();
            Person p = new Person();
            p.FirstName = txtFirstname.Text;
            p.LastName = txtLastName.Text;
            cae.People.Add(p);

            PersonAddress pa = new PersonAddress();
            pa.Person = p;
            pa.Street = txtAddress.Text;
            pa.City = txtCity.Text;
            pa.State = txtState.Text;
            pa.Zip = txtZipCode.Text;
            cae.PersonAddresses.Add(pa);

            PersonContact pc = new PersonContact();
            pc.Person = p;
            pc.ContactInfo = txtEmail.Text;
            pc.ContactTypeKey = 6;
            cae.PersonContacts.Add(pc);

            PersonContact phone = new PersonContact();
            phone.Person = p;
            phone.ContactInfo = txtHomePhone.Text;
            phone.ContactTypeKey = 1;
            cae.PersonContacts.Add(phone);

            Donation d = new Donation();
            d.DonationDate = DateTime.Now;
            d.Person = p;
            d.DonationAmount = decimal.Parse(txtDonation.Text);
            cae.Donations.Add(d);

            cae.SaveChanges();

            txtError.Text = "Donation Submitted";
        }
        catch (Exception ex)
        {
            txtError.Text = ex.Message;
        }
    }
}