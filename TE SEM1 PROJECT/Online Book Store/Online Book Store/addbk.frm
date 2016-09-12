VERSION 5.00
Begin VB.Form addbooks 
   BackColor       =   &H00C0E0FF&
   Caption         =   "Form1"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   FillStyle       =   2  'Horizontal Line
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   13.5
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00000000&
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.Frame fra_adminmenu 
      BackColor       =   &H00404080&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   0
      TabIndex        =   15
      Top             =   1920
      Width           =   15255
      Begin VB.Label Label1 
         BackColor       =   &H00404080&
         Caption         =   "Back"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Index           =   1
         Left            =   6480
         TabIndex        =   26
         Top             =   120
         Width           =   855
      End
      Begin VB.Label lbl_search 
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
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   4800
         TabIndex        =   18
         Top             =   120
         Width           =   1335
      End
      Begin VB.Label lbl_modify 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Modify"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   3360
         TabIndex        =   17
         Top             =   120
         Width           =   1335
      End
      Begin VB.Label lbl_add 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Add the new arrivals"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   240
         TabIndex        =   16
         Top             =   120
         Width           =   3015
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0E0FF&
      BorderStyle     =   0  'None
      Height          =   7455
      Left            =   240
      TabIndex        =   0
      Top             =   2520
      Width           =   13935
      Begin VB.TextBox txt_path 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         TabIndex        =   24
         Top             =   4440
         Width           =   4335
      End
      Begin VB.ComboBox cmb_cat 
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
         ItemData        =   "addbk.frx":0000
         Left            =   2760
         List            =   "addbk.frx":0013
         Sorted          =   -1  'True
         TabIndex        =   22
         Text            =   "Select"
         Top             =   2280
         Width           =   1935
      End
      Begin VB.TextBox txt_desc 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1095
         Left            =   2760
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   19
         Top             =   5880
         Width           =   4215
      End
      Begin VB.TextBox txt_copies 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         TabIndex        =   12
         Top             =   5160
         Width           =   1815
      End
      Begin VB.TextBox txt_discount 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         TabIndex        =   10
         Top             =   3720
         Width           =   1935
      End
      Begin VB.TextBox txt_unitp 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         TabIndex        =   8
         Top             =   3000
         Width           =   1935
      End
      Begin VB.TextBox txt_author 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         TabIndex        =   6
         Top             =   1560
         Width           =   4215
      End
      Begin VB.TextBox txt_bkname 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         TabIndex        =   4
         Top             =   840
         Width           =   4215
      End
      Begin VB.TextBox txt_bkid 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         TabIndex        =   2
         Top             =   120
         Width           =   1935
      End
      Begin VB.Label lbl_clear 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Clear"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   8760
         TabIndex        =   25
         Top             =   4200
         Width           =   1575
      End
      Begin VB.Shape Shape2 
         FillColor       =   &H00404080&
         FillStyle       =   0  'Solid
         Height          =   615
         Left            =   8640
         Shape           =   4  'Rounded Rectangle
         Top             =   4080
         Width           =   1815
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0E0FF&
         Caption         =   "Pic Path : "
         BeginProperty Font 
            Name            =   "Georgia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   23
         Top             =   4440
         Width           =   2055
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0E0FF&
         Caption         =   "Category :"
         BeginProperty Font 
            Name            =   "Georgia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   495
         Left            =   120
         TabIndex        =   21
         Top             =   2280
         Width           =   1935
      End
      Begin VB.Label lbl_addbook 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Add to database"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   375
         Left            =   8280
         TabIndex        =   20
         Top             =   3120
         Width           =   2415
      End
      Begin VB.Shape Shape1 
         FillColor       =   &H00404080&
         FillStyle       =   0  'Solid
         Height          =   615
         Left            =   8160
         Shape           =   4  'Rounded Rectangle
         Top             =   3000
         Width           =   2655
      End
      Begin VB.Image Image1 
         Height          =   1935
         Left            =   8520
         Top             =   600
         Width           =   1935
      End
      Begin VB.Label Label12 
         BackStyle       =   0  'Transparent
         Caption         =   "Description :"
         BeginProperty Font 
            Name            =   "Georgia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   495
         Left            =   120
         TabIndex        =   13
         Top             =   5880
         Width           =   2295
      End
      Begin VB.Label Label11 
         BackStyle       =   0  'Transparent
         Caption         =   "No. of copies :"
         BeginProperty Font 
            Name            =   "Georgia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   495
         Left            =   120
         TabIndex        =   11
         Top             =   5160
         Width           =   2415
      End
      Begin VB.Label Label10 
         BackColor       =   &H00C0FFC0&
         BackStyle       =   0  'Transparent
         Caption         =   "Discount :"
         BeginProperty Font 
            Name            =   "Georgia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   615
         Left            =   120
         TabIndex        =   9
         Top             =   3720
         Width           =   2295
      End
      Begin VB.Label Label9 
         BackColor       =   &H00C0FFC0&
         BackStyle       =   0  'Transparent
         Caption         =   "Unit Price :"
         BeginProperty Font 
            Name            =   "Georgia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   615
         Left            =   120
         TabIndex        =   7
         Top             =   3000
         Width           =   2415
      End
      Begin VB.Label Label8 
         BackColor       =   &H00C0FFC0&
         BackStyle       =   0  'Transparent
         Caption         =   "Author :"
         BeginProperty Font 
            Name            =   "Georgia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   495
         Left            =   120
         TabIndex        =   5
         Top             =   1560
         Width           =   2415
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "Book Name :"
         BeginProperty Font 
            Name            =   "Georgia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   495
         Left            =   120
         TabIndex        =   3
         Top             =   840
         Width           =   2295
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Transparent
         Caption         =   "Book code :"
         BeginProperty Font 
            Name            =   "Georgia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   495
         Left            =   120
         TabIndex        =   1
         Top             =   120
         Width           =   2175
      End
   End
   Begin VB.Image Image7 
      Height          =   1965
      Left            =   0
      Picture         =   "addbk.frx":0046
      Top             =   0
      Width           =   17250
   End
   Begin VB.Label Label14 
      Alignment       =   2  'Center
      BackColor       =   &H00808000&
      Caption         =   "Refresh"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   15480
      TabIndex        =   14
      Top             =   10200
      Width           =   2055
   End
End
Attribute VB_Name = "addbooks"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim rs, rs1 As ADODB.Recordset
Dim cn As ADODB.Connection
Dim msg As String

Private Sub Form_Load()
    Set cn = New ADODB.Connection
    Set rs = New ADODB.Recordset
    cn.Open "dsn=connect;uid=b70;pwd=cummins"
    'rs.Open "select * from books", cn, adOpenDynamic, adLockOptimistic
    'rs.MoveLast
    rs.Open "select * from books where bookid in(select max(bookid) from books)", cn, adOpenDynamic, adLockOptimistic
    txt_bkid.Text = rs(0) + 1
    rs.Close
    txt_bkid.Locked = True
End Sub


Private Sub lbl_addbook_Click()
    Set rs = New ADODB.Recordset
    rs.Open "select * from books", cn, adOpenDynamic, adLockOptimistic
    If (txt_bkid.Text = "" Or txt_bkname.Text = "" Or txt_author.Text = "" Or cmb_cat.Text = "Select" Or txt_unitp.Text = "" Or txt_discount.Text = "" Or txt_path.Text = "" Or txt_copies.Text = "" Or txt_desc.Text = "") Then
        MsgBox "Don't leave any field empty !", vbOKOnly, "Error"
    Else
        rs.MoveLast
        cn.Execute "insert into books values('" + txt_bkid.Text + "','" + txt_bkname.Text + "','" + txt_author.Text + "','" + cmb_cat.Text + "','" + txt_unitp.Text + "','" + txt_discount.Text + "','" + txt_path.Text + "','" + txt_copies.Text + "','" + txt_desc.Text + "')"
        msg = MsgBox("Data Inserted Successfully..", vbOKOnly)
        rs.Close
        lbl_clear_Click
    End If
End Sub

Private Sub lbl_clear_Click()
    Set rs1 = New ADODB.Recordset
    rs1.Open "select * from books where bookid in(select max(bookid) from books)", cn, adOpenDynamic, adLockOptimistic
    txt_bkid.Text = rs1(0) + 1
    rs1.Close
    txt_bkname.Text = ""
    txt_author.Text = ""
    txt_unitp.Text = ""
    txt_discount.Text = ""
    txt_path.Text = ""
    txt_copies.Text = ""
    txt_desc.Text = ""
    cmb_cat.Text = "Select"
End Sub

Private Sub Label1_Click(Index As Integer)
    startup.Show
End Sub


Private Sub lbl_add_Click()
    search.Hide
    modify.Hide
    adminlogin.Hide
    addbooks.WindowState = 2
    addbooks.Show
End Sub

Private Sub lbl_modify_Click()
    addbooks.Hide
    search.Hide
    adminlogin.Hide
    modify.WindowState = 2
    modify.Show
End Sub

Private Sub lbl_search_Click()
    modify.Hide
    addbooks.Hide
    adminlogin.Hide
    search.WindowState = 2
    search.Show
End Sub

Private Sub txt_unitp_KeyPress(KeyAscii As Integer)
If (KeyAscii < 48 Or KeyAscii > 57) Then
    If (KeyAscii <> 8) Then
        KeyAscii = 0
        MsgBox "Enter only numbers.", vbOKOnly
    End If
End If
End Sub

Private Sub txt_discount_KeyPress(KeyAscii As Integer)
If (KeyAscii < 48 Or KeyAscii > 57) Then
    If (KeyAscii <> 8) Then
        KeyAscii = 0
        MsgBox "Enter only numbers.", vbOKOnly
    End If
End If
End Sub

Private Sub txt_copies_KeyPress(KeyAscii As Integer)
If (KeyAscii < 48 Or KeyAscii > 57) Then
    If (KeyAscii <> 8) Then
        KeyAscii = 0
        MsgBox "Enter only numbers.", vbOKOnly
    End If
End If
End Sub

