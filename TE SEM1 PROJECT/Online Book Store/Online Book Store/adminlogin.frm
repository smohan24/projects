VERSION 5.00
Begin VB.Form adminlogin 
   BackColor       =   &H00C0E0FF&
   Caption         =   "s"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.CheckBox Check1 
      BackColor       =   &H00C0E0FF&
      Caption         =   "   Remember   Me"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   435
      Left            =   5160
      TabIndex        =   6
      Top             =   6600
      Width           =   2535
   End
   Begin VB.TextBox txt_password 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      IMEMode         =   3  'DISABLE
      Left            =   4800
      PasswordChar    =   "*"
      TabIndex        =   5
      Top             =   5520
      Width           =   4455
   End
   Begin VB.TextBox txt_username 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   4800
      TabIndex        =   4
      Top             =   4320
      Width           =   4455
   End
   Begin VB.Label Label5 
      BackColor       =   &H00404080&
      Caption         =   "<< Back"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   375
      Left            =   1080
      TabIndex        =   9
      Top             =   720
      Width           =   1095
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H00404080&
      BackStyle       =   1  'Opaque
      Height          =   495
      Left            =   960
      Shape           =   4  'Rounded Rectangle
      Top             =   600
      Width           =   1335
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "Administrator login"
      BeginProperty Font 
         Name            =   "Trebuchet MS"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5520
      TabIndex        =   8
      Top             =   600
      Width           =   3615
   End
   Begin VB.Line Line2 
      BorderStyle     =   3  'Dot
      X1              =   1320
      X2              =   1800
      Y1              =   3120
      Y2              =   3120
   End
   Begin VB.Line Line3 
      BorderStyle     =   3  'Dot
      X1              =   1320
      X2              =   1320
      Y1              =   3120
      Y2              =   9360
   End
   Begin VB.Line Line4 
      BorderStyle     =   3  'Dot
      X1              =   1320
      X2              =   12120
      Y1              =   9360
      Y2              =   9360
   End
   Begin VB.Line Line5 
      BorderStyle     =   3  'Dot
      X1              =   12120
      X2              =   12120
      Y1              =   9360
      Y2              =   3120
   End
   Begin VB.Line Line1 
      BorderStyle     =   3  'Dot
      X1              =   5520
      X2              =   12120
      Y1              =   3120
      Y2              =   3120
   End
   Begin VB.Label lbl_login 
      Alignment       =   2  'Center
      BackColor       =   &H00404080&
      Caption         =   "Login"
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
      Left            =   8280
      TabIndex        =   7
      Top             =   7680
      Width           =   1575
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      FillColor       =   &H00404080&
      FillStyle       =   0  'Solid
      Height          =   615
      Left            =   8040
      Shape           =   4  'Rounded Rectangle
      Top             =   7560
      Width           =   2055
   End
   Begin VB.Label Label3 
      BackColor       =   &H00C0E0FF&
      BackStyle       =   0  'Transparent
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
      Left            =   2280
      TabIndex        =   3
      Top             =   5520
      Width           =   1815
   End
   Begin VB.Label Label2 
      BackColor       =   &H00C0E0FF&
      BackStyle       =   0  'Transparent
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
      Left            =   2280
      TabIndex        =   2
      Top             =   4320
      Width           =   1815
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackColor       =   &H00404080&
      Caption         =   "Login  to  your  Account"
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
      Left            =   1800
      TabIndex        =   1
      Top             =   2880
      Width           =   3735
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0E0FF&
      BackStyle       =   0  'Transparent
      Caption         =   "My Account"
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
      Left            =   960
      TabIndex        =   0
      Top             =   1440
      Width           =   2535
   End
End
Attribute VB_Name = "adminlogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs As ADODB.Recordset
Dim cn As ADODB.Connection
Dim pswd, uname As String

Private Sub Form_Load()
    
    Set cn = New ADODB.Connection
    cn.Open "dsn=connect;uid=b70;pwd=cummins"
End Sub

Private Sub Label5_Click()
    Unload Me
End Sub

Private Sub lbl_login_Click()
    Set rs = New ADODB.Recordset
    rs.Open "(select * from user_db where role='m')", cn, adOpenDynamic, adLockOptimistic
    uname = txt_username.Text
    pswd = txt_password.Text
    If (uname = "") Then
        MsgBox "Enter username"
        Exit Sub
    End If
    If (pswd = "") Then
        MsgBox ("Enter password")
        Exit Sub
    End If
    While (Not rs.EOF)
        If (rs(6) = uname And rs(7) = pswd) Then
            MsgBox "Login successful"
            modify.Show
            search.Show
            addbooks.Show
            txt_username.Text = ""
            txt_password.Text = ""
            Exit Sub
        End If
        rs.MoveNext
    Wend
    If (rs.EOF) Then
        MsgBox "Invalid username or password"
    End If
End Sub
