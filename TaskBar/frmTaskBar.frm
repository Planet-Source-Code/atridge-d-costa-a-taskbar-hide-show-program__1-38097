VERSION 5.00
Begin VB.Form frmTaskBar 
   Caption         =   "Task Bar Hide/Show"
   ClientHeight    =   2655
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6090
   LinkTopic       =   "Form1"
   ScaleHeight     =   2655
   ScaleWidth      =   6090
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Show Task Bar"
      Height          =   495
      Left            =   1800
      TabIndex        =   1
      Top             =   1320
      Width           =   2535
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Hide Task Bar"
      Height          =   495
      Left            =   1800
      TabIndex        =   0
      Top             =   600
      Width           =   2535
   End
End
Attribute VB_Name = "frmTaskBar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rtn As Long

Private Sub Command1_Click()
'hide the taskbar
rtn = FindWindow("Shell_traywnd", "") 'get the Window
Call SetWindowPos(rtn, 0, 0, 0, 0, 0, SWP_HIDEWINDOW) 'hide the Tasbar
End Sub

Private Sub Command2_Click()
'show th taskbar
rtn = FindWindow("Shell_traywnd", "") 'get the Window
Call SetWindowPos(rtn, 0, 0, 0, 0, 0, SWP_SHOWWINDOW) 'show the Taskbar
End Sub
