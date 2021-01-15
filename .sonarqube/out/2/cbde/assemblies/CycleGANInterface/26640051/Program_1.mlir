// Skipping function Main(none), it contains poisonous unsupported syntaxes

// Skipping function ParseArguments(none), it contains poisonous unsupported syntaxes

func @_CycleGANInterface.Program.StartCycleGANProcess$CycleGANInterface.Model.IArgument.CycleGANInterface.Model.IArgument$(none, none) -> none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :62 :8) {
^entry (%_input : none, %_output : none):
%0 = cbde.alloca none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :62 :61)
cbde.store %_input, %0 : memref<none> loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :62 :61)
%1 = cbde.alloca none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :62 :78)
cbde.store %_output, %1 : memref<none> loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :62 :78)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :64 :44) // new StringBuilder() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :65 :12) // Not a variable of known type: argumentBuilder
%5 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :65 :35) // Not a variable of known type: input
%6 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :65 :35) // input.Argument (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :65 :12) // argumentBuilder.Append(input.Argument) (InvocationExpression)
%8 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :66 :16) // Not a variable of known type: input
%9 = cbde.unknown : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :66 :16) // input is PathArgument (IsExpression)
cond_br %9, ^1, ^2 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :66 :16)

^1: // SimpleBlock
%10 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :67 :16) // Not a variable of known type: argumentBuilder
// Entity from another assembly: Uri
%11 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :67 :69) // Not a variable of known type: input
%12 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :67 :69) // input as PathArgument (AsExpression)
%13 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :67 :68) // (input as PathArgument).Value (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :67 :68) // (input as PathArgument).Value.AbsolutePath (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :67 :45) // Uri.UnescapeDataString((input as PathArgument).Value.AbsolutePath) (InvocationExpression)
%16 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :67 :39) // $" \"{Uri.UnescapeDataString((input as PathArgument).Value.AbsolutePath)}\"" (InterpolatedStringExpression)
%17 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :67 :16) // argumentBuilder.Append($" \"{Uri.UnescapeDataString((input as PathArgument).Value.AbsolutePath)}\"") (InvocationExpression)
br ^3

^2: // BinaryBranchBlock
%18 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :68 :21) // Not a variable of known type: input
%19 = cbde.unknown : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :68 :21) // input is ByteArrayArgument (IsExpression)
cond_br %19, ^4, ^3 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :68 :21)

^4: // SimpleBlock
%20 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :69 :16) // Not a variable of known type: argumentBuilder
%21 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :69 :39) // $" BYTEARRAY" (InterpolatedStringExpression)
%22 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :69 :16) // argumentBuilder.Append($" BYTEARRAY") (InvocationExpression)
br ^3

^3: // BinaryBranchBlock
%23 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :71 :12) // Not a variable of known type: argumentBuilder
%24 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :71 :39) // Not a variable of known type: output
%25 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :71 :39) // output.Argument (SimpleMemberAccessExpression)
// Entity from another assembly: Uri
%26 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :71 :83) // Not a variable of known type: output
%27 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :71 :83) // output as PathArgument (AsExpression)
%28 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :71 :82) // (output as PathArgument).Value (SimpleMemberAccessExpression)
%29 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :71 :82) // (output as PathArgument).Value.AbsolutePath (SimpleMemberAccessExpression)
%30 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :71 :59) // Uri.UnescapeDataString((output as PathArgument).Value.AbsolutePath) (InvocationExpression)
%31 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :71 :35) // $" {output.Argument} \"{Uri.UnescapeDataString((output as PathArgument).Value.AbsolutePath)}\"" (InterpolatedStringExpression)
%32 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :71 :12) // argumentBuilder.Append($" {output.Argument} \"{Uri.UnescapeDataString((output as PathArgument).Value.AbsolutePath)}\"") (InvocationExpression)
%33 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :73 :38) // new CycleGANProcess() (ObjectCreationExpression)
%35 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :74 :17) // Not a variable of known type: process
%36 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :74 :31) // Not a variable of known type: argumentBuilder
%37 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :74 :31) // argumentBuilder.ToString() (InvocationExpression)
%38 = cbde.unknown : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :74 :17) // process.Start(argumentBuilder.ToString()) (InvocationExpression)
%39 = cbde.unknown : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :74 :16) // !process.Start(argumentBuilder.ToString()) (LogicalNotExpression)
cond_br %39, ^5, ^6 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :74 :16)

^5: // JumpBlock
%40 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :75 :36) // "Could not start the cycleGANProcess" (StringLiteralExpression)
%41 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :75 :22) // new Exception("Could not start the cycleGANProcess") (ObjectCreationExpression)
cbde.throw %41 :  none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :75 :16)

^6: // JumpBlock
// Entity from another assembly: Console
%42 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :77 :68) // Not a variable of known type: process
%43 = cbde.unknown : i32 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :77 :68) // process.ProcessId (SimpleMemberAccessExpression)
%44 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :77 :30) // $" CycleGAN process started with id: {process.ProcessId}" (InterpolatedStringExpression)
%45 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :77 :12) // Console.WriteLine($" CycleGAN process started with id: {process.ProcessId}") (InvocationExpression)
%46 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :78 :19) // Not a variable of known type: process
return %46 : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\Program.cs" :78 :12)

^7: // ExitBlock
cbde.unreachable

}
