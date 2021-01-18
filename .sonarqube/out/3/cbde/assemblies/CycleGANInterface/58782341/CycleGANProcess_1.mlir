func @_CycleGANInterface.Model.CycleGANProcess.IsRunning$$() -> i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :10 :8) {
^entry :
br ^0

^0: // BinaryBranchBlock
%0 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :12 :16) // Not a variable of known type: Process
%1 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :12 :27) // null (NullLiteralExpression)
%2 = cbde.unknown : i1  loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :12 :16) // comparison of unknown type: Process == null
cond_br %2, ^1, ^2 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :12 :16)

^1: // JumpBlock
%3 = constant 0 : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :13 :23) // false
return %3 : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :13 :16)

^2: // JumpBlock
%4 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :14 :20) // Not a variable of known type: Process
%5 = cbde.unknown : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :14 :20) // Process.HasExited (SimpleMemberAccessExpression)
%6 = cbde.unknown : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :14 :19) // !Process.HasExited (LogicalNotExpression)
return %6 : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :14 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_CycleGANInterface.Model.CycleGANProcess.Start$string$(none) -> i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :17 :8) {
^entry (%_args : none):
%0 = cbde.alloca none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :17 :27)
cbde.store %_args, %0 : memref<none> loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :17 :27)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: IsRunning
%1 = cbde.unknown : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :19 :16) // IsRunning() (InvocationExpression)
cond_br %1, ^1, ^2 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :19 :16)

^1: // SimpleBlock
%2 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :20 :16) // Not a variable of known type: Process
%3 = constant 1 : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :20 :29) // true
%4 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :20 :16) // Process.Kill(true) (InvocationExpression)
br ^2

^2: // JumpBlock
// Entity from another assembly: Process
%5 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :21 :36) // "D:\\Git\\CycleGANInterface\\MockCycleGAN\\bin\\Debug\\netcoreapp3.1\\MockCycleGAN.exe" (StringLiteralExpression)
%6 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :21 :125) // Not a variable of known type: args
%7 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :21 :22) // Process.Start("D:\\Git\\CycleGANInterface\\MockCycleGAN\\bin\\Debug\\netcoreapp3.1\\MockCycleGAN.exe", args) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: IsRunning
%8 = cbde.unknown : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :22 :19) // IsRunning() (InvocationExpression)
return %8 : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :22 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_CycleGANInterface.Model.CycleGANProcess.WaitBlocking$int$(i32) -> i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :25 :8) {
^entry (%_timeout : i32):
%0 = cbde.alloca i32 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :25 :34)
cbde.store %_timeout, %0 : memref<i32> loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :25 :34)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: IsRunning
%1 = cbde.unknown : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :27 :17) // IsRunning() (InvocationExpression)
%2 = cbde.unknown : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :27 :16) // !IsRunning() (LogicalNotExpression)
cond_br %2, ^1, ^2 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :27 :16)

^1: // JumpBlock
%3 = constant 0 : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :28 :23) // false
return %3 : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :28 :16)

^2: // JumpBlock
%4 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :29 :19) // Not a variable of known type: Process
%5 = cbde.load %0 : memref<i32> loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :29 :39)
%6 = cbde.unknown : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :29 :19) // Process.WaitForExit(timeout) (InvocationExpression)
return %6 : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Model\\CycleGANProcess.cs" :29 :12)

^3: // ExitBlock
cbde.unreachable

}
