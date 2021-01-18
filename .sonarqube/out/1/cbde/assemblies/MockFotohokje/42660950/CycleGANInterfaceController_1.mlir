func @_MockFotohokje.Services.CycleGANInterfaceController.StartInterfaceSingle$System.Uri$(none) -> () loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :24 :8) {
^entry (%_path : none):
%0 = cbde.alloca none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :24 :42)
cbde.store %_path, %0 : memref<none> loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :24 :42)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :28 :31) // Not a variable of known type: resultsController
%2 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :28 :31) // resultsController.GetNewGuid() (InvocationExpression)
// Entity from another assembly: Uri
%4 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :29 :54) // Not a variable of known type: outputFolder
%5 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :29 :54) // outputFolder.AbsolutePath (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :29 :31) // Uri.UnescapeDataString(outputFolder.AbsolutePath) (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :29 :83) // Not a variable of known type: processGuid
%8 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :29 :28) // $"{Uri.UnescapeDataString(outputFolder.AbsolutePath)}/{processGuid}" (InterpolatedStringExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: StartInterface
%10 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :30 :46) // Not a variable of known type: path
%11 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :30 :60) // Not a variable of known type: output
%12 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :30 :52) // new Uri(output) (ObjectCreationExpression)
%13 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :30 :31) // StartInterface(path, new Uri(output)) (InvocationExpression)
%15 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :31 :12) // Not a variable of known type: currentProcesses
%16 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :31 :33) // Not a variable of known type: cycleGAN
%17 = cbde.unknown : i32 loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :31 :33) // cycleGAN.Id (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :31 :66) // Not a variable of known type: cycleGAN
%19 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :31 :84) // Not a variable of known type: output
%20 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :31 :76) // new Uri(output) (ObjectCreationExpression)
%21 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :31 :93) // Not a variable of known type: ProcessType
%22 = constant unit loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :31 :93) // ProcessType.Single (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :31 :46) // new CycleGANProcess(cycleGAN, new Uri(output), ProcessType.Single) (ObjectCreationExpression)
%24 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :31 :12) // currentProcesses.Add(cycleGAN.Id, new CycleGANProcess(cycleGAN, new Uri(output), ProcessType.Single)) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AwaitResult
%25 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :32 :24) // Not a variable of known type: cycleGAN
%26 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :32 :12) // AwaitResult(cycleGAN) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MockFotohokje.Services.CycleGANInterfaceController.StartInterfaceSingle$System.Uri.System.Uri$(none, none) -> () loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :35 :8) {
^entry (%_path : none, %_outputFolder : none):
%0 = cbde.alloca none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :35 :42)
cbde.store %_path, %0 : memref<none> loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :35 :42)
%1 = cbde.alloca none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :35 :52)
cbde.store %_outputFolder, %1 : memref<none> loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :35 :52)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: StartInterface
%2 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :39 :46) // Not a variable of known type: path
%3 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :39 :52) // Not a variable of known type: outputFolder
%4 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :39 :31) // StartInterface(path, outputFolder) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :40 :12) // Not a variable of known type: currentProcesses
%7 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :40 :33) // Not a variable of known type: cycleGAN
%8 = cbde.unknown : i32 loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :40 :33) // cycleGAN.Id (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :40 :66) // Not a variable of known type: cycleGAN
%10 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :40 :76) // Not a variable of known type: outputFolder
%11 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :40 :90) // Not a variable of known type: ProcessType
%12 = constant unit loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :40 :90) // ProcessType.Single (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :40 :46) // new CycleGANProcess(cycleGAN, outputFolder, ProcessType.Single) (ObjectCreationExpression)
%14 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :40 :12) // currentProcesses.Add(cycleGAN.Id, new CycleGANProcess(cycleGAN, outputFolder, ProcessType.Single)) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AwaitResult
%15 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :41 :24) // Not a variable of known type: cycleGAN
%16 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :41 :12) // AwaitResult(cycleGAN) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MockFotohokje.Services.CycleGANInterfaceController.StartInterfaceBatch$System.Uri$(none) -> () loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :44 :8) {
^entry (%_folder : none):
%0 = cbde.alloca none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :44 :41)
cbde.store %_folder, %0 : memref<none> loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :44 :41)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :48 :31) // Not a variable of known type: resultsController
%2 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :48 :31) // resultsController.GetNewGuid() (InvocationExpression)
// Entity from another assembly: Uri
%4 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :49 :54) // Not a variable of known type: outputFolder
%5 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :49 :54) // outputFolder.AbsolutePath (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :49 :31) // Uri.UnescapeDataString(outputFolder.AbsolutePath) (InvocationExpression)
%7 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :49 :83) // Not a variable of known type: processGuid
%8 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :49 :28) // $"{Uri.UnescapeDataString(outputFolder.AbsolutePath)}/{processGuid}" (InterpolatedStringExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: StartInterface
%10 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :50 :46) // Not a variable of known type: folder
%11 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :50 :62) // Not a variable of known type: output
%12 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :50 :54) // new Uri(output) (ObjectCreationExpression)
%13 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :50 :31) // StartInterface(folder, new Uri(output)) (InvocationExpression)
%15 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :51 :12) // Not a variable of known type: currentProcesses
%16 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :51 :33) // Not a variable of known type: cycleGAN
%17 = cbde.unknown : i32 loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :51 :33) // cycleGAN.Id (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :51 :66) // Not a variable of known type: cycleGAN
%19 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :51 :84) // Not a variable of known type: output
%20 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :51 :76) // new Uri(output) (ObjectCreationExpression)
%21 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :51 :93) // Not a variable of known type: ProcessType
%22 = constant unit loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :51 :93) // ProcessType.Batch (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :51 :46) // new CycleGANProcess(cycleGAN, new Uri(output), ProcessType.Batch) (ObjectCreationExpression)
%24 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :51 :12) // currentProcesses.Add(cycleGAN.Id, new CycleGANProcess(cycleGAN, new Uri(output), ProcessType.Batch)) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AwaitResult
%25 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :52 :24) // Not a variable of known type: cycleGAN
%26 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :52 :12) // AwaitResult(cycleGAN) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MockFotohokje.Services.CycleGANInterfaceController.StartInterfaceBatch$System.Uri.System.Uri$(none, none) -> () loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :55 :8) {
^entry (%_folder : none, %_outputFolder : none):
%0 = cbde.alloca none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :55 :41)
cbde.store %_folder, %0 : memref<none> loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :55 :41)
%1 = cbde.alloca none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :55 :53)
cbde.store %_outputFolder, %1 : memref<none> loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :55 :53)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: StartInterface
%2 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :59 :46) // Not a variable of known type: folder
%3 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :59 :54) // Not a variable of known type: outputFolder
%4 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :59 :31) // StartInterface(folder, outputFolder) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :60 :12) // Not a variable of known type: currentProcesses
%7 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :60 :33) // Not a variable of known type: cycleGAN
%8 = cbde.unknown : i32 loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :60 :33) // cycleGAN.Id (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :60 :66) // Not a variable of known type: cycleGAN
%10 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :60 :76) // Not a variable of known type: outputFolder
%11 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :60 :90) // Not a variable of known type: ProcessType
%12 = constant unit loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :60 :90) // ProcessType.Batch (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :60 :46) // new CycleGANProcess(cycleGAN, outputFolder, ProcessType.Batch) (ObjectCreationExpression)
%14 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :60 :12) // currentProcesses.Add(cycleGAN.Id, new CycleGANProcess(cycleGAN, outputFolder, ProcessType.Batch)) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AwaitResult
%15 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :61 :24) // Not a variable of known type: cycleGAN
%16 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :61 :12) // AwaitResult(cycleGAN) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_MockFotohokje.Services.CycleGANInterfaceController.StartInterface$System.Uri.System.Uri$(none, none) -> none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :64 :8) {
^entry (%_path : none, %_outputFolder : none):
%0 = cbde.alloca none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :64 :40)
cbde.store %_path, %0 : memref<none> loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :64 :40)
%1 = cbde.alloca none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :64 :50)
cbde.store %_outputFolder, %1 : memref<none> loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :64 :50)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :66 :26) // "-o " (StringLiteralExpression)
// Entity from another assembly: Uri
%3 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :66 :57) // Not a variable of known type: outputFolder
%4 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :66 :57) // outputFolder.AbsolutePath (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :66 :34) // Uri.UnescapeDataString(outputFolder.AbsolutePath) (InvocationExpression)
%6 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :66 :26) // Binary expression on unsupported types "-o " + Uri.UnescapeDataString(outputFolder.AbsolutePath)
%7 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :66 :86) // " -f \"" (StringLiteralExpression)
%8 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :66 :26) // Binary expression on unsupported types "-o " + Uri.UnescapeDataString(outputFolder.AbsolutePath) + " -f \""
// Entity from another assembly: Uri
%9 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :66 :120) // Not a variable of known type: path
%10 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :66 :120) // path.AbsolutePath (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :66 :97) // Uri.UnescapeDataString(path.AbsolutePath) (InvocationExpression)
%12 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :66 :26) // Binary expression on unsupported types "-o " + Uri.UnescapeDataString(outputFolder.AbsolutePath) + " -f \"" + Uri.UnescapeDataString(path.AbsolutePath)
%13 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :66 :141) // "\"" (StringLiteralExpression)
%14 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :66 :26) // Binary expression on unsupported types "-o " + Uri.UnescapeDataString(outputFolder.AbsolutePath) + " -f \"" + Uri.UnescapeDataString(path.AbsolutePath) + "\""
// Entity from another assembly: Process
%16 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :67 :45) // Not a variable of known type: cycleGANPath
%17 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :67 :59) // Not a variable of known type: args
%18 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :67 :31) // Process.Start(cycleGANPath, args) (InvocationExpression)
// Entity from another assembly: Console
%20 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :68 :67) // Not a variable of known type: cycleGAN
%21 = cbde.unknown : i32 loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :68 :67) // cycleGAN.Id (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :68 :30) // $"Started CycleGAN inteface with id {cycleGAN.Id}" (InterpolatedStringExpression)
%23 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :68 :12) // Console.WriteLine($"Started CycleGAN inteface with id {cycleGAN.Id}") (InvocationExpression)
%24 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :69 :19) // Not a variable of known type: cycleGAN
return %24 : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :69 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function AwaitResult(none), it contains poisonous unsupported syntaxes

func @_MockFotohokje.Services.CycleGANInterfaceController.OnCycleGANProcessTimeout$int$(i32) -> () loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :84 :8) {
^entry (%_cycleGANId : i32):
%0 = cbde.alloca i32 loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :84 :46)
cbde.store %_cycleGANId, %0 : memref<i32> loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :84 :46)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :86 :17) // Not a variable of known type: currentProcesses
%2 = cbde.load %0 : memref<i32> loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :86 :46)
%3 = cbde.unknown : i1 loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :86 :17) // currentProcesses.ContainsKey(cycleGANId) (InvocationExpression)
%4 = cbde.unknown : i1 loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :86 :16) // !currentProcesses.ContainsKey(cycleGANId) (LogicalNotExpression)
cond_br %4, ^1, ^2 loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :86 :16)

^1: // JumpBlock
return loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :87 :16)

^2: // SimpleBlock
// Entity from another assembly: Console
%5 = cbde.load %0 : memref<i32> loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :88 :53)
%6 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :88 :30) // $"Timeout reached for {cycleGANId}" (InterpolatedStringExpression)
%7 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :88 :12) // Console.WriteLine($"Timeout reached for {cycleGANId}") (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :89 :39) // Not a variable of known type: currentProcesses
%9 = cbde.load %0 : memref<i32> loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :89 :56)
%10 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :89 :39) // currentProcesses[cycleGANId] (ElementAccessExpression)
%12 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :90 :12) // Not a variable of known type: currentProcesses
%13 = cbde.load %0 : memref<i32> loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :90 :36)
%14 = cbde.unknown : i1 loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :90 :12) // currentProcesses.Remove(cycleGANId) (InvocationExpression)
%15 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :91 :12) // Not a variable of known type: cycleGAN
%16 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :91 :12) // cycleGAN.Process (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :91 :12) // cycleGAN.Process.Kill() (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
func @_MockFotohokje.Services.CycleGANInterfaceController.OnCycleGANProcessExit$int$(i32) -> () loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :94 :8) {
^entry (%_cycleGANId : i32):
%0 = cbde.alloca i32 loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :94 :43)
cbde.store %_cycleGANId, %0 : memref<i32> loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :94 :43)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :96 :17) // Not a variable of known type: currentProcesses
%2 = cbde.load %0 : memref<i32> loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :96 :46)
%3 = cbde.unknown : i1 loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :96 :17) // currentProcesses.ContainsKey(cycleGANId) (InvocationExpression)
%4 = cbde.unknown : i1 loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :96 :16) // !currentProcesses.ContainsKey(cycleGANId) (LogicalNotExpression)
cond_br %4, ^1, ^2 loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :96 :16)

^1: // JumpBlock
return loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :97 :16)

^2: // SimpleBlock
// Entity from another assembly: Console
%5 = cbde.load %0 : memref<i32> loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :98 :50)
%6 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :98 :30) // $"Exit reached for {cycleGANId}" (InterpolatedStringExpression)
%7 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :98 :12) // Console.WriteLine($"Exit reached for {cycleGANId}") (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :99 :39) // Not a variable of known type: currentProcesses
%9 = cbde.load %0 : memref<i32> loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :99 :56)
%10 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :99 :39) // currentProcesses[cycleGANId] (ElementAccessExpression)
%12 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :100 :12) // Not a variable of known type: currentProcesses
%13 = cbde.load %0 : memref<i32> loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :100 :36)
%14 = cbde.unknown : i1 loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :100 :12) // currentProcesses.Remove(cycleGANId) (InvocationExpression)
%15 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :101 :12) // Not a variable of known type: cycleGAN
%16 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :101 :12) // cycleGAN.Process (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :101 :31) // null (NullLiteralExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddResult
%18 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :102 :22) // Not a variable of known type: cycleGAN
%19 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Services\\CycleGANInterfaceController.cs" :102 :12) // AddResult(cycleGAN) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function AddResult(none), it contains poisonous unsupported syntaxes

