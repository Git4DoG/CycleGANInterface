// Skipping function ParseArgument(none, none), it contains poisonous unsupported syntaxes

func @_CycleGANInterface.ArgumentParser.TryGetArgument$string.outCycleGANInterface.Model.IArgument$(none, none) -> i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\ArgumentParser.cs" :65 :8) {
^entry (%_argument : none, %_value : none):
%0 = cbde.alloca none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\ArgumentParser.cs" :65 :36)
cbde.store %_argument, %0 : memref<none> loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\ArgumentParser.cs" :65 :36)
%1 = cbde.alloca none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\ArgumentParser.cs" :65 :53)
cbde.store %_value, %1 : memref<none> loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\ArgumentParser.cs" :65 :53)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\ArgumentParser.cs" :67 :19) // Not a variable of known type: arguments
%3 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\ArgumentParser.cs" :67 :41) // Not a variable of known type: argument
%4 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\ArgumentParser.cs" :67 :55) // Not a variable of known type: value
%5 = cbde.unknown : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\ArgumentParser.cs" :67 :19) // arguments.TryGetValue(argument, out value) (InvocationExpression)
return %5 : i1 loc("D:\\Git\\CycleGANInterface\\CycleGANInterface\\ArgumentParser.cs" :67 :12)

^1: // ExitBlock
cbde.unreachable

}
