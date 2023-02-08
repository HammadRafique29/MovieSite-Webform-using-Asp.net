<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="MoviesHUB.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        #form1{
            width:100%; height:100%; background-color:#B63131; padding:10px; border-radius:10px
        }
        #container{
            height:97%; border-radius:10px; background-color:#D9D9D9; padding:10px;
        }
        #messageContainer1{
            width:100%; height:10%; background-color:#D9D9D9; display:flex; justify-content:center; align-items: center;
        }
        #authenticationLabel{
            width:50%;  background-color:#0B0A0A; color:white; font-size:24pt; padding:0px 15px 0px 15px; border-radius:10px; display:flex; justify-content:center;
        }
        .loginOptionsStyle{
            width: 50px;height: 50px;margin: 0px 10px 0px 10px;
        }
        #LoginButton{
            width: 250px; height: 40px; background-color: #070707; color: white; font-size: 12pt; font-family: arial; font-weight: bold; border-radius: 10px;
        }
        #LoginButton:hover{
            width: 250px; height: 44px; background-color: #070707; color: white; font-size: 13pt; font-family: arial; font-weight: bold; border-radius: 10px; border:1px solid; border-color:white;
        }
    </style>


</head>
<body style="width:660px; height:640px;">
    <form id="form1" runat="server">
    <div id="container">
        <div id="messageContainer1"">
            <label id="authenticationLabel" style="">Authentication</label>
        </div>
        <div id="imageContainer" style="width:100%; height:100px; display:flex; justify-content:center;">
            <img src="/img/icons/lock.gif" style="width: 100px; height: 100%; border-radius: 10px;margin-top: 15px;"/>
        </div>
        <div>
            <table style="margin:40px 0px 0px 30px">
                <tr><td><label style="font-size:12pt; font-weight:bold; font-family:Arial">Username: </label></td></tr>
                <tr><td style="display: flex; background-color: white; border-radius: 5px;"><img src="/img/icons/email.png" style="width: 32px;height: 35px;margin: 0px 10px 0px 10px;"/><input type="text" style="width: 100%;border: none;border-radius: 5px;height: 35px;" value="Enter your username ..."/></td></tr>
                <tr style="height:20px"></tr>
                <tr><td><label style="font-size:12pt; font-weight:bold; font-family:Arial;">Password: </label></td></tr>
                <tr><td style="display: flex; background-color: white; border-radius: 5px;"><img src="/img/icons/password_icon.png" style="width: 32px;height: 35px;margin: 0px 10px 0px 10px;"/><input type="text" style="width: 450px;border: none;border-radius: 5px;height: 35px;"  value="Enter your Password ..."/><button style="margin-left: 10px;border: none;background-color: transparent;"><img src="/img/icons/showPassword.png" style="width: 25px;height: 25px;margin: 0px 10px 0px 10px; align-self:center"/></button></td></tr>
                <tr><td style="height:50px;"><button style=" margin-left:20px">Forgot your Passowrd ?</button></td></tr>
                <tr><td style="display: flex;justify-content: center;"><button><img src="/img/icons/google.png" class="loginOptionsStyle"/></button><button><img src="/img/icons/twitter2.png" class="loginOptionsStyle"/></button><button><img src="/img/icons/facebook2.png" class="loginOptionsStyle"/></button></td></tr>
                <tr><td style="display: flex;justify-content: center;"><button id="LoginButton" type="submit">Login</button></td></tr>
                <tr style="display: flex;justify-content: center;align-items: center;height: 100px;"><td><label>Create an Account: </label><button id="SignButton" runat="server">SignUp</button></td></tr>
            
            </table>
        </div>


    </div>
    </form>
</body>
</html>
