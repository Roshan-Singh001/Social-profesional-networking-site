<%@ Page Language="C#" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server"  Height="26px" Width="251px" type="Password"></asp:TextBox>        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        <asp:Image ID="Image1" runat="server" Height="38px" ImageUrl="~/sh1.png" />
    </div>
          <script type="text/javascript">
              function show() {
                  
                  if (document.getElementById("TextBox1").type == "password") {
                      document.getElementById("TextBox1").type = "text";
                  }
                  else {
                      document.getElementById("TextBox1").type = "password";
                  }
              }
              var btn = document.getElementById("Image1");
              btn.addEventListener("click", show);
    </script>
    </form>
  
</body>
</html>
