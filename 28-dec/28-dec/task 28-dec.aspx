<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task 28-dec.aspx.cs" Inherits="_28_dec.task_28_dec" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Styles/sweetalert.css" rel="stylesheet" />
    <script src="Scripts/sweetalert-dev.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <section style="background-color: #d94125;">
  <div class="container my-5 py-5 text-dark">
    <div class="row d-flex justify-content-center">
      <div class="col-md-10 col-lg-8 col-xl-6">
        <div class="card">
          <div class="card-body p-4">
            <div class="d-flex flex-start w-100">
              <img class="rounded-circle shadow-1-strong me-3"
                src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(21).webp" alt="avatar" width="65"
                height="65" />
              <div class="w-100">
                <h5>Add a comment</h5>
              

                  <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                      <ContentTemplate>
                                          <div class="form-outline">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                              <asp:RequiredFieldValidator ControlToValidate="TextBox1" ValidationGroup="comment" runat="server" ErrorMessage="please fill this field" ForeColor="red"></asp:RequiredFieldValidator>

               
                  <label class="form-label" for="textAreaExample">What is your view?</label>
                </div>
                    <div class="d-flex justify-content-between mt-3">
                    <asp:Button ID="Button1" runat="server" ValidationGroup="comment" class="fas fa-long-arrow-alt-right ms-1" Text="send" OnClick="Button1_Click" />
                </div>
                                      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                      </ContentTemplate>
                  </asp:UpdatePanel>

               
                     <script type="text/javascript">
                         function successalert() {
                             swal({
                                 title: 'Congratulations!',
                                 text: 'Your message has been succesfully sent',
                                 type: 'success'
                             });
                         }

                     </script>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
