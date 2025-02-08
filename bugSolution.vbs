Improved Error Handling and Type Checking:
```vbscript
Dim obj
On Error Resume Next
Set obj = CreateObject("Some.Object")
If Err.Number <> 0 Then
  MsgBox "Object creation failed: " & Err.Description
  Err.Clear
Else
  If TypeName(obj) = "Some.Object" Then 'Explicit type check
    obj.SomeMethod  'Should work if the object and method exist 
  Else
    MsgBox "Object is not the expected type!" 
  End If 
End If
On Error GoTo 0
```
This version includes error handling to catch object creation failures and provides an explicit type check before calling `SomeMethod`. It's still crucial to ensure the object and its method exist to prevent runtime errors.  `On Error Resume Next` is used judiciously; always handle errors appropriately, clearing them and providing informative messages to the user.