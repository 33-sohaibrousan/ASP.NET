 <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="_27_dec.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
   <section class="vh-100">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
          class="img-fluid" alt="Sample image">
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
        
          

          

          <!-- Email input -->
          <div class="form-outline mb-4">
            <input type="email" id="email" runat="server" class="form-control form-control-lg"
              placeholder="Enter a valid email address" />
            <label class="form-label" for="form3Example3">Email address</label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidatoremail"  runat="server" ForeColor="red" ValidationGroup="logingroup"  ControlToValidate="email" ErrorMessage="please fill this field"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidatoremail" ForeColor="red" ValidationGroup="logingroup" ControlToValidate="email" runat="server" ErrorMessage="the email is not correct" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-3">
            <input type="password" id="password" runat="server" class="form-control form-control-lg"
              placeholder="Enter password" />
            <label class="form-label" for="form3Example4">Password</label>
              <asp:RequiredFieldValidator ID="RequiredFieldValidatorpassword" ValidationGroup="logingroup" ForeColor="red" ControlToValidate="password" runat="server" ErrorMessage="please fill this field"></asp:RequiredFieldValidator>
          </div>

          

          <div class="text-center text-lg-start mt-4 pt-2">
             <%-- <input id="Submit1" type="submit" runat="server" value="submit"  ValidationGroup="logingroup"/>
            <button type="button" class="btn btn-primary btn-lg">Login</button>--%>
              <asp:Button ID="Button1" runat="server" Text="Login" ValidationGroup="logingroup" OnClick="Button1_Click" />
            <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="#!"
                class="link-danger">Register</a></p>
          </div>

        
      </div>
    </div>
  </div>
  <div
    class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
    <!-- Copyright -->
    <div class="text-white mb-3 mb-md-0">
      Copyright © 2020. All rights reserved.
    </div>
    <!-- Copyright -->

    <!-- Right -->
    <div>
      <a href="#!" class="text-white me-4">
        <i class="fab fa-facebook-f"></i>
      </a>
      <a href="#!" class="text-white me-4">
        <i class="fab fa-twitter"></i>
      </a>
      <a href="#!" class="text-white me-4">
        <i class="fab fa-google"></i>
      </a>
      <a href="#!" class="text-white">
        <i class="fab fa-linkedin-in"></i>
      </a>
    </div>
    <!-- Right -->
  </div>
</section>

<%--    -----------------------------------------------------------------------------------------%>
<section class="vh-100" style="background-color: #eee;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

             

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">

                      <input type="text" id="yourname" runat="server" class="form-control" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatoryourname" ValidationGroup="signingroup" ControlToValidate="yourname"  runat="server" ErrorMessage="fill this field "></asp:RequiredFieldValidator>
<%--                        <asp:RegularExpressionValidator ID="RegularExpressionValidatoryourname" runat="server" ControlToValidate="yourname" ErrorMessage=""></asp:RegularExpressionValidator>--%>
                        <label class="form-label" for="form3Example1c">Your Name</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="email" id="email1" runat="server" class="form-control" />
                               <asp:RequiredFieldValidator ID="RequiredFieldValidatoremail2" ValidationGroup="signingroup" runat="server" ForeColor="red"  ControlToValidate="email1" ErrorMessage="please fill this field"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidatoremail2" ValidationGroup="signingroup" ForeColor="red" ControlToValidate="email1" runat="server" ErrorMessage="the email is not correct" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <label class="form-label" for="form3Example3c">Your Email</label>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">


                      <input type="password" id="password1" runat="server" class="form-control" />
                      <label class="form-label" for="form3Example4c">Password</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorpass1" ValidationGroup="signingroup" ControlToValidate="password1" ForeColor="red" runat="server" ErrorMessage="fill this field"></asp:RequiredFieldValidator>
<%--                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorpass1" runat="server" ErrorMessage="password not in role"></asp:RegularExpressionValidator>--%>
<%--                        <asp:CompareValidator ID="CompareValidator1" runat="server" ValidationGroup="signingroup" ControlToValidate="password1" ForeColor="red" ErrorMessage=""></asp:CompareValidator>--%>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">


                      <input type="password" id="password2" runat="server" class="form-control" />
                      <label class="form-label" for="form3Example4cd">Repeat your password</label>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidatorpass2" ValidationGroup="signingroup" ControlToValidate="password2" ForeColor="red" runat="server" ErrorMessage="fill this field"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidatorpass2" ValidationGroup="signingroup" runat="server" ControlToCompare="password1" Operator="Equal" ControlToValidate="password2" ForeColor="red" ErrorMessage="the password not match"></asp:CompareValidator>
<%--                        <input id="Submit2" type="submit" value="submit" runat="server" ValidationGroup="signingroup" />--%>
                        
                        </div>
                  </div>

                 

                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">

                   <asp:Button ID="button" runat="server" type="submit" CssClass="btn btn-primary btn-lg" ValidationGroup="signingroup" Text="Register" OnClick="button_Click"></asp:Button>
<%--    <button type="button" runat="server" class="btn btn-primary btn-lg">Register</button>--%>
                  </div>

      

              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
                  
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                  class="img-fluid" alt="Sample image">

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    
    <script>
        function submit1() {
            var email = document.getElementById("TextBox1").value;
            if (email == "") {
                alert("please fill the email");
                event.preventDefault();
            }
        }
    </script>
</asp:Content>
