VERSION 5.00
Begin VB.Form register 
   BackColor       =   &H00C0E0FF&
   Caption         =   "Form1"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   FillStyle       =   0  'Solid
   BeginProperty Font 
      Name            =   "Courier New"
      Size            =   14.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   WindowState     =   2  'Maximized
   Begin VB.TextBox txt_area 
      Height          =   435
      Left            =   11760
      TabIndex        =   29
      Top             =   6120
      Width           =   2175
   End
   Begin VB.TextBox txt_street 
      Height          =   435
      Left            =   7320
      TabIndex        =   28
      Top             =   6120
      Width           =   2655
   End
   Begin VB.TextBox txt_city 
      Height          =   435
      Left            =   3360
      TabIndex        =   27
      Top             =   6120
      Width           =   1815
   End
   Begin VB.TextBox txt_lname 
      Height          =   435
      Left            =   4440
      TabIndex        =   26
      Top             =   5400
      Width           =   4335
   End
   Begin VB.TextBox txt_fname 
      Height          =   435
      Left            =   4440
      TabIndex        =   25
      Top             =   4680
      Width           =   4335
   End
   Begin VB.Frame fra_menu 
      BackColor       =   &H00404080&
      BorderStyle     =   0  'None
      Caption         =   "Frame2"
      Height          =   495
      Left            =   0
      TabIndex        =   11
      Top             =   1920
      Width           =   15255
      Begin VB.Label lbl_menuhome 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Home"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   15
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   375
         Left            =   240
         TabIndex        =   19
         Top             =   120
         Width           =   1095
      End
      Begin VB.Label lbl_menuabtus 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "About Us"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   375
         Left            =   1680
         TabIndex        =   18
         Top             =   120
         Width           =   1455
      End
      Begin VB.Label lbl_menubks 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Books"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   375
         Left            =   3480
         TabIndex        =   17
         Top             =   120
         Width           =   1215
      End
      Begin VB.Label lbl_menusearch 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Search"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   375
         Left            =   5040
         TabIndex        =   16
         Top             =   120
         Width           =   1215
      End
      Begin VB.Label lbl_menulogin 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Login"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   375
         Left            =   6480
         TabIndex        =   15
         Top             =   120
         Width           =   1215
      End
      Begin VB.Label lbl_menureg 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Register"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   375
         Left            =   7920
         TabIndex        =   14
         Top             =   120
         Width           =   1335
      End
      Begin VB.Label lbl_menuviewcart 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "View Cart"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   375
         Left            =   9600
         TabIndex        =   13
         Top             =   120
         Width           =   1575
      End
      Begin VB.Label lbl_menucontact 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Contact"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   375
         Left            =   11520
         TabIndex        =   12
         Top             =   120
         Width           =   1215
      End
   End
   Begin VB.TextBox txt_mob 
      Height          =   435
      Left            =   4440
      TabIndex        =   10
      Top             =   9000
      Width           =   4335
   End
   Begin VB.TextBox txt_email 
      Height          =   435
      Left            =   4440
      TabIndex        =   8
      Top             =   8280
      Width           =   4335
   End
   Begin VB.TextBox txt_pswd 
      Height          =   435
      IMEMode         =   3  'DISABLE
      Left            =   4440
      PasswordChar    =   "*"
      TabIndex        =   4
      Top             =   7560
      Width           =   4335
   End
   Begin VB.TextBox txt_uname 
      Height          =   435
      Left            =   4440
      TabIndex        =   3
      Top             =   6840
      Width           =   4335
   End
   Begin VB.Label Label12 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Area : "
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   10320
      TabIndex        =   24
      Top             =   6120
      Width           =   975
   End
   Begin VB.Label Label11 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Street : "
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5640
      TabIndex        =   23
      Top             =   6120
      Width           =   1215
   End
   Begin VB.Label Label10 
      BackColor       =   &H00C0E0FF&
      Caption         =   "City : "
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1920
      TabIndex        =   22
      Top             =   6120
      Width           =   975
   End
   Begin VB.Label Label9 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Last name : "
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1920
      TabIndex        =   21
      Top             =   5400
      Width           =   1815
   End
   Begin VB.Label Label8 
      BackColor       =   &H00C0E0FF&
      Caption         =   "First name : "
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1920
      TabIndex        =   20
      Top             =   4680
      Width           =   1815
   End
   Begin VB.Image Image1 
      Height          =   1965
      Left            =   0
      Picture         =   "Register.frx":0000
      Top             =   0
      Width           =   17250
   End
   Begin VB.Label Label7 
      BackColor       =   &H00C0E0FF&
      Caption         =   " Phone  :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1920
      TabIndex        =   9
      Top             =   9000
      Width           =   1935
   End
   Begin VB.Label Label6 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Email  id :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1920
      TabIndex        =   7
      Top             =   8280
      Width           =   1815
   End
   Begin VB.Line Line5 
      BorderStyle     =   3  'Dot
      X1              =   14280
      X2              =   14280
      Y1              =   10320
      Y2              =   4080
   End
   Begin VB.Label lbl_register 
      Alignment       =   2  'Center
      BackColor       =   &H00404080&
      Caption         =   "Register"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   12000
      TabIndex        =   6
      Top             =   9360
      Width           =   1575
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      FillColor       =   &H00404080&
      FillStyle       =   0  'Solid
      Height          =   615
      Left            =   11760
      Shape           =   4  'Rounded Rectangle
      Top             =   9240
      Width           =   2055
   End
   Begin VB.Line Line4 
      BorderStyle     =   3  'Dot
      X1              =   1200
      X2              =   14280
      Y1              =   10320
      Y2              =   10320
   End
   Begin VB.Line Line3 
      BorderStyle     =   3  'Dot
      X1              =   1200
      X2              =   1200
      Y1              =   4080
      Y2              =   10320
   End
   Begin VB.Line Line2 
      BorderStyle     =   3  'Dot
      X1              =   1200
      X2              =   1680
      Y1              =   4080
      Y2              =   4080
   End
   Begin VB.Line Line1 
      BorderStyle     =   3  'Dot
      X1              =   5400
      X2              =   14280
      Y1              =   4080
      Y2              =   4080
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackColor       =   &H00404080&
      Caption         =   "Create  New  Account"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   1680
      TabIndex        =   5
      Top             =   3840
      Width           =   3735
   End
   Begin VB.Label Label3 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Password :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1920
      TabIndex        =   2
      Top             =   7560
      Width           =   1815
   End
   Begin VB.Label Label2 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Username :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1920
      TabIndex        =   1
      Top             =   6840
      Width           =   1815
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Register"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404080&
      Height          =   615
      Left            =   1200
      TabIndex        =   0
      Top             =   2760
      Width           =   2535
   End
End
Attribute VB_Name = "register"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs, rs1 As ADODB.Recordset
Dim cn As ADODB.Connection
Dim id As String


Private Sub Form_Load()
   
    id = 0
    Set cn = New ADODB.Connection
    cn.Open "dsn=connect;uid=b70;pwd=cummins"
    txt_fname.Text = userid
    lbl_menuhome.ForeColor = &HE0E0E0
    lbl_menuabtus.ForeColor = &HE0E0E0
    lbl_menubks.ForeColor = &HE0E0E0
    lbl_menusearch.ForeColor = &HE0E0E0
    lbl_menulogin.ForeColor = &HE0E0E0
    lbl_menureg.ForeColor = &H80C0FF
    lbl_menuviewcart.ForeColor = &HE0E0E0
    lbl_menucontact.ForeColor = &HE0E0E0
End Sub
Private Sub lbl_menuabtus_Click()
    contact.Hide
    register.Hide
    bk_det.Hide
    myaccount.Hide
    books.Hide
    home.Hide
    mycart.Hide
    searchbk.Hide
    aboutus.WindowState = 2
    aboutus.Show
End Sub

Private Sub lbl_menubks_Click()
    contact.Hide
    register.Hide
    myaccount.Hide
    aboutus.Hide
    bk_det.Hide
    home.Hide
    mycart.Hide
    searchbk.Hide
    books.WindowState = 2
    books.Show
End Sub

Private Sub lbl_menucontact_Click()
    register.Hide
    myaccount.Hide
    books.Hide
    aboutus.Hide
    bk_det.Hide
    home.Hide
    mycart.Hide
    searchbk.Hide
    contact.WindowState = 2
    contact.Show
End Sub

Private Sub lbl_menuhome_Click()
    contact.Hide
    register.Hide
    bk_det.Hide
    myaccount.Hide
    books.Hide
    aboutus.Hide
    mycart.Hide
    searchbk.Hide
    home.WindowState = 2
    home.Show
End Sub

Private Sub lbl_menulogin_Click()
    contact.Hide
    register.Hide
    books.Hide
    aboutus.Hide
    bk_det.Hide
    mycart.Hide
    searchbk.Hide
    home.Hide
    myaccount.WindowState = 2
    myaccount.Show
End Sub

Private Sub lbl_menureg_Click()
    contact.Hide
    myaccount.Hide
    books.Hide
    aboutus.Hide
    home.Hide
    bk_det.Hide
    mycart.Hide
    searchbk.Hide
    register.WindowState = 2
    register.Show
End Sub

Private Sub lbl_menusearch_Click()
    contact.Hide
    myaccount.Hide
    books.Hide
    aboutus.Hide
    bk_det.Hide
    home.Hide
    register.Hide
    mycart.Hide
    searchbk.WindowState = 2
    searchbk.Show
End Sub

Private Sub lbl_menuviewcart_Click()
    contact.Hide
    myaccount.Hide
    books.Hide
    aboutus.Hide
    bk_det.Hide
    home.Hide
    register.Hide
    searchbk.Hide
    mycart.WindowState = 2
    mycart.Show
End Sub


Private Sub lbl_register_Click()
    Set rs = New ADODB.Recordset
    rs.Open "select * from user_db where role='u'", cn, adOpenDynamic, adLockOptimistic
    
    If (txt_uname.Text = "" Or txt_pswd.Text = "" Or txt_email.Text = "" Or txt_mob.Text = "" Or txt_fname.Text = "" Or txt_lname.Text = "" Or txt_city.Text = "" Or txt_street.Text = "" Or txt_area.Text = "") Then
        MsgBox "All fields are mandatory!", , "Error"
    End If
    rs.MoveFirst
    While (Not rs.EOF)
        If (rs(1) = txt_fname.Text And rs(2) = txt_lname.Text And rs(8) = txt_email.Text And rs(10) = txt_mob.Text And rs(6) = txt_uname.Text And rs(7) = txt_pswd.Text And rs(3) = txt_city.Text And rs(4) = txt_street.Text And rs(5) = txt_area.Text) Then
            MsgBox "You have already registered !", , "Error"
            Exit Sub
        Else
            rs.MoveNext
        End If
    Wend
    rs.MoveFirst
    While (Not rs.EOF)
        If (rs(6) = txt_uname.Text) Then
            MsgBox "Enter any other username!", , "Error"
            Exit Sub
        Else
            rs.MoveNext
        End If
    Wend
    Set rs1 = New ADODB.Recordset
    rs1.Open "select * from user_db where userid in(select max(userid) from books)", cn, adOpenDynamic, adLockOptimistic
    id = rs1(0) + 1
    rs1.Close
    cn.Execute "insert into user_db values('" + id + "','" + txt_fname.Text + "','" + txt_lname.Text + "','" + txt_city.Text + "','" + txt_street.Text + "','" + txt_area.Text + "','" + txt_uname.Text + "','" + txt_pswd.Text + "','" + txt_email.Text + "','u','" + txt_mob.Text + "')"
    MsgBox "Regitration is done successfully."
    rs.Close
    txt_lname.Text = ""
    txt_fname.Text = ""
    txt_city.Text = ""
    txt_street.Text = ""
    txt_area.Text = ""
    txt_mob.Text = ""
    txt_email.Text = ""
    txt_uname.Text = ""
    txt_pswd.Text = ""
End Sub


Private Sub txt_email_KeyPress(KeyAscii As Integer)
If (KeyAscii = Asc("@")) Then
    If (InStr(txt_email.Text, "@")) Then
        KeyAscii = 0
    End If
End If
End Sub

Private Sub txt_mob_KeyPress(KeyAscii As Integer)
If (KeyAscii < 48 Or KeyAscii > 57) Then
    If (KeyAscii <> 8) Then
        KeyAscii = 0
        MsgBox "Enter only numbers.", vbOKOnly
    End If
End If
End Sub
