#$language = "VBScript"
#$interface = "1.0"

Sub main
  crt.Screen.Synchronous = True
  crt.Screen.WaitForString "gandalf@VRM02:~>"
  crt.Screen.Send "su - root" & VbCr
  crt.Screen.WaitForString "Password:"
  crt.Screen.Send "Huawei@CLOUD8!" & VbCr
  crt.Screen.WaitForString "VRM02:~ #"
  crt.Screen.Send "TMOUT=0" & VbCr
  crt.Screen.Synchronous = False
End Sub