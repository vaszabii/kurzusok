#pragma checksum "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "1d6464c01d6afcb142564b604277ea4497c901dc"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Home_Index), @"mvc.1.0.view", @"/Views/Home/Index.cshtml")]
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
#line 1 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\_ViewImports.cshtml"
using Kurzusok;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\_ViewImports.cshtml"
using Kurzusok.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"1d6464c01d6afcb142564b604277ea4497c901dc", @"/Views/Home/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"f03870303675d9aa46049c9e27d5aeb5e3c4da56", @"/Views/_ViewImports.cshtml")]
    public class Views_Home_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<Kurzusok.ViewModels.HomeViewModel>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("btn btn-primary"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Create", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("btn btn-danger"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "SemesterDelete", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("navbar-form navbar-right"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_5 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-area", "", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_6 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-controller", "Home", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_7 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "SearchResult", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_8 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("nav-link text-dark"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_9 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("role", new global::Microsoft.AspNetCore.Html.HtmlString("menuitem"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_10 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("tabindex", new global::Microsoft.AspNetCore.Html.HtmlString("-1"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_11 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("method", "post", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_12 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "CreateSemester", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
  
    ViewData["Title"] = "Kurzusok";
    string date = Model.CurrentSemester.Date;
    string id = Model.CurrentSemester.Id.ToString();
    string lastSemester = Model.SemestersList.Last().Date;

#line default
#line hidden
#nullable disable
            WriteLiteral("<h1>");
#nullable restore
#line 9 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
Write(date);

#line default
#line hidden
#nullable disable
            WriteLiteral(" félév</h1>\r\n\r\n<p>\r\n    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "1d6464c01d6afcb142564b604277ea4497c901dc8261", async() => {
                WriteLiteral("Új tárgy hozzáadása");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#nullable restore
#line 12 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                                                     WriteLiteral(id);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "1d6464c01d6afcb142564b604277ea4497c901dc10522", async() => {
                WriteLiteral("Félév törlése");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_3.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_3);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#nullable restore
#line 13 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                                                            WriteLiteral(id);

#line default
#line hidden
#nullable disable
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"
</p>
<table class=""table"">
    <thead>
        <tr>
            <th>
                Tárgy kód
            </th>
            <th>
                Név
            </th>
            <th>
                Szakok
            </th>
            <th>
                Kurzusok
            </th>
            <th>
                Oktatók
            </th>
            <th>
                Egyéb
            </th>
        </tr>
    </thead>
    <tbody>
");
#nullable restore
#line 39 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
         foreach (var item in Model.CurrentSemester.Subjects)
        {

#line default
#line hidden
#nullable disable
            WriteLiteral("            <tr>\r\n                <td>\r\n                    ");
#nullable restore
#line 43 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
               Write(Html.DisplayFor(modelItem => item.SubjectCode));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                </td>\r\n                <td>\r\n                    ");
#nullable restore
#line 46 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
               Write(Html.DisplayFor(modelItem => item.Name));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                </td>\r\n                <td>\r\n");
#nullable restore
#line 49 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                     foreach (var programme in item.ProgrammesLink)
                    {
                        

#line default
#line hidden
#nullable disable
#nullable restore
#line 51 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => programme.Training));

#line default
#line hidden
#nullable disable
#nullable restore
#line 52 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                   Write(Html.Raw(" "));

#line default
#line hidden
#nullable disable
#nullable restore
#line 53 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => programme.Name));

#line default
#line hidden
#nullable disable
#nullable restore
#line 54 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                   Write(Html.Raw(" "));

#line default
#line hidden
#nullable disable
#nullable restore
#line 55 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => programme.Levels));

#line default
#line hidden
#nullable disable
            WriteLiteral("                        <br />\r\n");
#nullable restore
#line 57 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                    }

#line default
#line hidden
#nullable disable
            WriteLiteral("                </td>\r\n");
#nullable restore
#line 59 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                 foreach (var course in item.Courses.Take(1))
                {

#line default
#line hidden
#nullable disable
            WriteLiteral("                    <td>\r\n                        Típus:\r\n                        ");
#nullable restore
#line 63 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => course.CourseType));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                        <br />\r\n                        Kód:\r\n                        ");
#nullable restore
#line 66 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => course.CourseCode));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                        <br />\r\n                        Terem:\r\n                        ");
#nullable restore
#line 69 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => course.Classroom));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                        <br />\r\n                        Létszám:\r\n                        ");
#nullable restore
#line 72 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => course.Members));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                    </td>\r\n                    <td>\r\n");
#nullable restore
#line 75 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                         foreach (var teacher in course.TeachersLink)
                        {
                            

#line default
#line hidden
#nullable disable
#nullable restore
#line 77 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                       Write(Html.DisplayFor(modelItem => teacher.Name));

#line default
#line hidden
#nullable disable
            WriteLiteral("                            <br />\r\n");
#nullable restore
#line 79 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                        }

#line default
#line hidden
#nullable disable
            WriteLiteral("                    </td>\r\n");
#nullable restore
#line 81 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                }

#line default
#line hidden
#nullable disable
            WriteLiteral("            </tr>\r\n");
#nullable restore
#line 89 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
             foreach (var course in item.Courses.Skip(1))
            {

#line default
#line hidden
#nullable disable
            WriteLiteral("                <tr>\r\n                    <td></td>\r\n                    <td></td>\r\n                    <td></td>\r\n                    <td>\r\n                        Típus:\r\n                        ");
#nullable restore
#line 97 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => course.CourseType));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                        <br />\r\n                        Kód:\r\n                        ");
#nullable restore
#line 100 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => course.CourseCode));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                        <br />\r\n                        Terem:\r\n                        ");
#nullable restore
#line 103 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => course.Classroom));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                        <br />\r\n                        Létszám:\r\n                        ");
#nullable restore
#line 106 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => course.Members));

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                    </td>\r\n                    <td>\r\n");
#nullable restore
#line 109 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                         foreach (var teacher in course.TeachersLink)
                        {
                            

#line default
#line hidden
#nullable disable
#nullable restore
#line 111 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                       Write(Html.DisplayFor(modelItem => teacher.Name));

#line default
#line hidden
#nullable disable
            WriteLiteral("                            <br />\r\n");
#nullable restore
#line 113 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                        }

#line default
#line hidden
#nullable disable
            WriteLiteral("                    </td>\r\n                    <td></td>\r\n                </tr>\r\n");
#nullable restore
#line 117 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
            }

#line default
#line hidden
#nullable disable
#nullable restore
#line 117 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
             

        }

#line default
#line hidden
#nullable disable
            WriteLiteral("    </tbody>\r\n</table>\r\n\r\n");
            DefineSection("SideBar", async() => {
                WriteLiteral(@"
    <div>
        <button class=""btn btn-primary"" type=""button"" onclick=""openBar()"">>></button>
    </div>
    <div class=""sidebar navbar-collapse"" id=""SideBar"">
        <ul class=""nav nav-sidebar justify-content-center"">
            <li class=""nav-item"">
                ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "1d6464c01d6afcb142564b604277ea4497c901dc22472", async() => {
                    WriteLiteral("\r\n                    <input type=\"text\" name=\"SearchPhrase\" class=\"form-control\" placeholder=\"Keresés\">\r\n                ");
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_4);
                __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Area = (string)__tagHelperAttribute_5.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_5);
                __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Controller = (string)__tagHelperAttribute_6.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_6);
                __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Action = (string)__tagHelperAttribute_7.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_7);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n            </li>\r\n            <li class=\"nav-item\">\r\n                <a class=\"nav-link text-dark dropdown-toggle pl-1\" id=\"dropdownMenu1\" data-toggle=\"dropdown\">\r\n                    ");
#nullable restore
#line 136 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
               Write(date);

#line default
#line hidden
#nullable disable
                WriteLiteral("\r\n                </a>\r\n                <ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"dropdownMenu1\">\r\n");
#nullable restore
#line 139 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                     foreach (var item in Model.SemestersList)
                    {
                        if (date != item.Date)
                        {

#line default
#line hidden
#nullable disable
                WriteLiteral("                            <li role=\"presentation\">");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "1d6464c01d6afcb142564b604277ea4497c901dc25579", async() => {
#nullable restore
#line 143 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                                                                                                                                                  Write(item.Date);

#line default
#line hidden
#nullable disable
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_8);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_9);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_10);
                if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
                {
                    throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-currentSemesterId", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
                }
                BeginWriteTagHelperAttribute();
#nullable restore
#line 143 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                                                                                                                                 WriteLiteral(item.Id);

#line default
#line hidden
#nullable disable
                __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
                __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["currentSemesterId"] = __tagHelperStringValueBuffer;
                __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-currentSemesterId", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["currentSemesterId"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("</li>\r\n");
#nullable restore
#line 144 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
                        }
                    }

#line default
#line hidden
#nullable disable
                WriteLiteral("                </ul>\r\n            </li>\r\n            <li class=\"nav-item\">\r\n                ");
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "1d6464c01d6afcb142564b604277ea4497c901dc28672", async() => {
                    WriteLiteral("\r\n                    <button class=\"btn text-dark pl-1\" type=\"submit\" name=\"lastSemester\"");
                    BeginWriteAttribute("value", " value=\"", 5760, "\"", 5781, 1);
#nullable restore
#line 150 "C:\Users\zolle\Documents\GitHub\kurzusok\Kurzusok\Kurzusok\Views\Home\Index.cshtml"
WriteAttributeValue("", 5768, lastSemester, 5768, 13, false);

#line default
#line hidden
#nullable disable
                    EndWriteAttribute();
                    WriteLiteral(">Új félév hozzáadása</button>\r\n                ");
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Method = (string)__tagHelperAttribute_11.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_11);
                __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_4);
                __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Area = (string)__tagHelperAttribute_5.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_5);
                __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Controller = (string)__tagHelperAttribute_6.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_6);
                __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Action = (string)__tagHelperAttribute_12.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_12);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                WriteLiteral("\r\n            </li>\r\n        </ul>\r\n");
                WriteLiteral("    </div>\r\n");
            }
            );
            WriteLiteral(@"
<script type=""text/javascript"">
    function openBar() {
        document.getElementById(""SideBar"").style.width = ""250px"";
        document.getElementById(""main"").style.marginLeft = ""250px"";
    }
    function closeBar() {
        document.getElementById(""SideBar"").style.width = ""0"";
        document.getElementById(""main"").style.marginLeft = ""0"";
    }
</script>

");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<Kurzusok.ViewModels.HomeViewModel> Html { get; private set; }
    }
}
#pragma warning restore 1591
