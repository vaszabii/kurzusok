#pragma checksum "C:\Users\varga\Desktop\ASP.NET MVC\Kurzusok\Kurzusok\Areas\Identity\Pages\_ViewStart.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "63a4ab2e2e7c5280170cebbcf0c0926a95597fb0"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Identity_Pages__ViewStart), @"mvc.1.0.view", @"/Areas/Identity/Pages/_ViewStart.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "C:\Users\varga\Desktop\ASP.NET MVC\Kurzusok\Kurzusok\Areas\Identity\Pages\_ViewImports.cshtml"
using Microsoft.AspNetCore.Identity;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\varga\Desktop\ASP.NET MVC\Kurzusok\Kurzusok\Areas\Identity\Pages\_ViewImports.cshtml"
using Kurzusok.Areas.Identity;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Users\varga\Desktop\ASP.NET MVC\Kurzusok\Kurzusok\Areas\Identity\Pages\_ViewImports.cshtml"
using Kurzusok.Areas.Identity.Pages;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"63a4ab2e2e7c5280170cebbcf0c0926a95597fb0", @"/Areas/Identity/Pages/_ViewStart.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"b2cc32ee2485b40d082bcf6efde5ce19f88bb594", @"/Areas/Identity/Pages/_ViewImports.cshtml")]
    public class Areas_Identity_Pages__ViewStart : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 1 "C:\Users\varga\Desktop\ASP.NET MVC\Kurzusok\Kurzusok\Areas\Identity\Pages\_ViewStart.cshtml"
  
    if (Context.User.Identity.IsAuthenticated)
    {
        Layout = "/Views/Shared/_Layout.cshtml";
    }
    else
    {
        Layout = "/Views/Shared/_SignInLayout.cshtml";
    }

#line default
#line hidden
#nullable disable
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
