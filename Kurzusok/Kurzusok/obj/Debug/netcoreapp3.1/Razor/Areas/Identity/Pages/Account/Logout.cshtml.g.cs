#pragma checksum "C:\Users\varga\Desktop\Kurzusok\Kurzusok\Areas\Identity\Pages\Account\Logout.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "dbb066a7ecf900baf6657b285c0accbe88ca4c4c"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Areas_Identity_Pages_Account_Logout), @"mvc.1.0.razor-page", @"/Areas/Identity/Pages/Account/Logout.cshtml")]
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
#line 1 "C:\Users\varga\Desktop\Kurzusok\Kurzusok\Areas\Identity\Pages\_ViewImports.cshtml"
using Microsoft.AspNetCore.Identity;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\varga\Desktop\Kurzusok\Kurzusok\Areas\Identity\Pages\_ViewImports.cshtml"
using Kurzusok.Areas.Identity;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "C:\Users\varga\Desktop\Kurzusok\Kurzusok\Areas\Identity\Pages\_ViewImports.cshtml"
using Kurzusok.Areas.Identity.Pages;

#line default
#line hidden
#nullable disable
#nullable restore
#line 1 "C:\Users\varga\Desktop\Kurzusok\Kurzusok\Areas\Identity\Pages\Account\_ViewImports.cshtml"
using Kurzusok.Areas.Identity.Pages.Account;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"dbb066a7ecf900baf6657b285c0accbe88ca4c4c", @"/Areas/Identity/Pages/Account/Logout.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"b2cc32ee2485b40d082bcf6efde5ce19f88bb594", @"/Areas/Identity/Pages/_ViewImports.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"14208047afe137a6d6af4a4591de47955350209e", @"/Areas/Identity/Pages/Account/_ViewImports.cshtml")]
    public class Areas_Identity_Pages_Account_Logout : global::Microsoft.AspNetCore.Mvc.RazorPages.Page
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 3 "C:\Users\varga\Desktop\Kurzusok\Kurzusok\Areas\Identity\Pages\Account\Logout.cshtml"
  
    ViewData["Title"] = "Kilépés";

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n<header>\r\n    <h1>");
#nullable restore
#line 8 "C:\Users\varga\Desktop\Kurzusok\Kurzusok\Areas\Identity\Pages\Account\Logout.cshtml"
   Write(ViewData["Title"]);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h1>\r\n    <p>Sikeresen kijelentkeztél.</p>\r\n</header>");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<LogoutModel> Html { get; private set; }
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<LogoutModel> ViewData => (global::Microsoft.AspNetCore.Mvc.ViewFeatures.ViewDataDictionary<LogoutModel>)PageContext?.ViewData;
        public LogoutModel Model => ViewData.Model;
    }
}
#pragma warning restore 1591
