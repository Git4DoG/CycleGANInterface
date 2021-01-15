func @_MockFotohokje.Startup.ConfigureServices$Microsoft.Extensions.DependencyInjection.IServiceCollection$(none) -> () loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Startup.cs" :19 :8) {
^entry (%_services : none):
%0 = cbde.alloca none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Startup.cs" :19 :38)
cbde.store %_services, %0 : memref<none> loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Startup.cs" :19 :38)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Startup.cs" :21 :12) // Not a variable of known type: services
%2 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Startup.cs" :21 :12) // services.AddRazorPages() (InvocationExpression)
%3 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Startup.cs" :23 :12) // Not a variable of known type: services
%4 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Startup.cs" :23 :12) // services.AddSingleton<CycleGANResultsController>() (InvocationExpression)
%5 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Startup.cs" :24 :12) // Not a variable of known type: services
%6 = cbde.unknown : none loc("D:\\Git\\CycleGANInterface\\MockFotohokje\\Startup.cs" :24 :12) // services.AddSingleton<CycleGANInterfaceController>() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function Configure(none, none), it contains poisonous unsupported syntaxes

