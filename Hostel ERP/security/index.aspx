﻿<%@ Page Title="" Language="C#" MasterPageFile="~/security/security.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Hostel_ERP.security.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Security Profile</title>
    <script type="text/javascript">
        function showSuccess()
        {
            swal("Success", "Profile Updated", "success")
        }
        function showError()
        {
            swal("An Error accured")
        }
    </script>
    <style>
        .form-left {
            font-weight:600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- Security Profile Module --%>
    <main class="mt-5 pt-3">
        <div class="container-fluid">
            <div class="row justify-content-center card-header mb-3">
                <div class="col-md-3">
                    <h4 class="fw-bold">Security Profile</h4>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="row justify-content-center">
                            <asp:Image ID="imgSecurity" CssClass="rounded-circle" alt="avtar" ImageUrl="~/security/images/avtar.png" height="200" width="230" runat="server" />
                            </div>
                            <div class="row">
                            <asp:Label ID="lblNameSecurity1" CssClass="m-2" runat="server" Text="Security Name" Font-Bold="True" Font-Size="Larger"></asp:Label>
                            </div>
                            Security
                        </div>
                    </div>
                </div>
            
                <div class="col-md-8">
                    <div class="card border-1 border-dark alert-secondary mb-3">
                        <div class="card-header bg-dark text-light">
                            <i style="font-size: 22px;" class="far fa-user">&nbsp;&nbsp;&nbsp;Personal Details</i>
                        </div>
                        <div class="card-body">
                            
                            <div class="row p-3">
                                <div class="col fw-bold">
                                    Registration Number
                                </div>
                                <div class="col">
                                    <asp:Label ID="lblRegistrationNo" runat="server" Text="Security Name"></asp:Label>
                                </div>
                            </div>
                            
                            <div class="row p-3">
                                <div class="col fw-bold">
                                    Full Name
                                </div>
                                <div class="col">
                                    <asp:Label ID="lblNameSecurity2" runat="server" Text="Security Name"></asp:Label>
                                </div>
                            </div>
                            
                            <div class="row p-3">
                                <div class="col fw-bold">
                                    Gender
                                </div>
                                <div class="col">
                                    <asp:Label ID="lblGender" runat="server" Text="Security Gender"></asp:Label>
                                </div>
                            </div>


                            <div class="row p-3">
                                <div class="col fw-bold">
                                    Date of Birth
                                </div>
                                <div class="col">
                                    <asp:Label ID="lblDOB" runat="server" Text="Security DOB"></asp:Label>
                                </div>
                            </div>

                            <div class="row p-3">
                                <div class="col fw-bold">
                                    Blood Group
                                </div>
                                <div class="col">
                                    <asp:Label ID="lblBlood" runat="server" Text="Security BloodGroup"></asp:Label>
                                </div>
                            </div>

                            <div class="row p-3">
                                <div class="col fw-bold">
                                    Mobile Number
                                </div>
                                <div class="col">
                                    <asp:Label ID="lblContact" runat="server" Text="Security Contact"></asp:Label>
                                </div>
                            </div>

                            <div class="row p-3">
                                <div class="col fw-bold">
                                    City
                                </div>
                                <div class="col">
                                    <asp:Label ID="lblCity" runat="server" Text="Rector Aadhar"></asp:Label>
                                </div>
                            </div>
                            
                            <div class="row p-3">
                                <div class="col fw-bold">
                                    State
                                </div>
                                <div class="col">
                                    <asp:Label ID="lblState" runat="server" Text="Rector Aadhar"></asp:Label>
                                </div>
                            </div>
                            
                            <div class="row p-3">
                                <div class="col fw-bold">
                                    Address
                                </div>
                                <div class="col">
                                    <asp:Label ID="lblAddress" runat="server" Text="Rector Aadhar"></asp:Label>
                                </div>
                            </div>

                            <div class="d-grid gap-2 d-md-flex justify-content-md-end mt-3">
                                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                  Update Profile
                                </button>
                            </div>

                            <%-- Update Profile Modal --%>

                            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                              <div class="modal-dialog modal-dialog-scrollable">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <h5 class="modal-title" id="staticBackdropLabel">Update Profile</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                  </div>
                                  <div class="modal-body">
                                    
                                      <%-- Update Info Start--%>
                                        <div class="row">
                                            <h6 class="text-danger mb-3 mt-3">Personal Information</h6>
                                        </div>
                                
                                        <div class="row p-0 mb-3">
                                            <p class="form-left p-0">Full Name :</p>
                                            <div class="col">
                                                <div class="row">
                                                    <asp:TextBox ID="txtFullName" placeholder="Full Name" CssClass="border-1 border-dark form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                      
                                        <div class="row p-0 mb-3">
                                            <p class="form-left p-0">Date of Birth :</p>
                                            <div class="col">
                                                <div class="row">
                                                    <asp:TextBox ID="dateofBirth" CssClass="btn border-1 border-dark" type="date" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                
                                        <div class="row p-0 mb-3">
                                            <p class="form-left p-0">Contact No :</p>
                                            <div class="col">
                                                <div class="row">
                                                    <asp:TextBox ID="txtContactNo" placeholder="Contact Number" CssClass="border-1 border-dark form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                      
                                      <div class="row p-0 mb-3">
                                            <p class="form-left p-0">City :</p>
                                            <div class="col">
                                                <div class="row">
                                                    <asp:TextBox ID="txtCity" placeholder="City" CssClass="border-1 border-dark form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                      <div class="row p-0 mb-3">
                                            <p class="form-left p-0">State :</p>
                                            <div class="col">
                                                <div class="row">
                                                    <asp:TextBox ID="txtState" placeholder="State" CssClass="border-1 border-dark form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                      
                                      <div class="row p-0 mb-3">
                                            <p class="form-left p-0">Address :</p>
                                            <div class="col">
                                                <div class="row">
                                                    <asp:TextBox ID="txtAddress" TextMode="MultiLine" placeholder="Address" CssClass="border-1 border-dark form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                      </div>
                                      
                                        <div class="row p-0 mb-3">
                                            <p class="form-left p-0">Blood Group :</p>
                                            <div class="col">
                                                <div class="row">
                                                    <asp:DropDownList ID="DropDownListBlood" CssClass="btn border-1 border-dark dropdown-toggle" runat="server">
                                                            <asp:ListItem Value="">Select Blood Group</asp:ListItem>
                                                            <asp:ListItem Value="O+">O+</asp:ListItem>
                                                            <asp:ListItem Value="O-">O-</asp:ListItem>
                                                            <asp:ListItem Value="A+">A+</asp:ListItem>
                                                            <asp:ListItem Value="A-">A-</asp:ListItem>
                                                            <asp:ListItem Value="B+">B+</asp:ListItem>
                                                            <asp:ListItem Value="B-">B-</asp:ListItem>
                                                            <asp:ListItem Value="AB+">AB+</asp:ListItem>
                                                            <asp:ListItem Value="AB-">AB-</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row p-0 mb-3">
                                            <p class="form-left p-0">Profile Photo :</p>
                                            <div class="col">
                                                <div class="row">
                                                    <asp:FileUpload ID="profilePhoto" runat="server" />
                                                </div>
                                            </div>
                                        </div>

                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <asp:Button ID="btnSaveChanges" OnClick="btnSaveChanges_Click" CssClass="btn btn-danger" runat="server" Text="Save Changes" />
                                  </div>
                                </div>
                              </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </main>
</asp:Content>
