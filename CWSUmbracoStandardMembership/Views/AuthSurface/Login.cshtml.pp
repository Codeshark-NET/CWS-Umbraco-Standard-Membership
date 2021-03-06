﻿@using $rootnamespace$.Controllers.SurfaceControllers
@using $rootnamespace$.Models
@model LoginViewModel
@{
    Html.EnableClientValidation(true);
    Html.EnableUnobtrusiveJavaScript(true);
}
@if (!ViewData.ModelState.IsValid)
{
    <h3>Forgotten your password?</h3>
    <p>
        Don't worry we all forget our passwords from time to time
    </p>

    foreach (ModelState modelState in ViewData.ModelState.Values)
    {
        var errors = modelState.Errors;

        if (errors.Any())
        {
            <ul>
                @foreach (ModelError error in errors)
                {
                    <li><em>@error.ErrorMessage</em></li>
                }
            </ul>
        }
    }
    <p>
        <a href="/forgotten-password" class="btn btn-link">Remind me</a>
    </p>
}

@using (Html.BeginUmbracoForm<AuthSurfaceController>("HandleLogin"))
{
    @Html.AntiForgeryToken()
    @Html.ValidationSummary(true)

    <h3>Login</h3>

    <div class="form-group">
        @Html.LabelFor(model => model.EmailAddress)
        @Html.EditorFor(model => model.EmailAddress, new { htmlAttributes = new { @class = "form-control" } })
        @Html.ValidationMessageFor(model => model.EmailAddress, null, new { @class = "help-block" })
    </div>

    <div class="form-group">
        @Html.LabelFor(model => model.Password)
        @Html.EditorFor(model => model.Password, new { htmlAttributes = new { @class = "form-control" } })
        @Html.ValidationMessageFor(model => model.Password, null, new { @class = "help-block" })
    </div>

    <div class="form-group">
        @Html.HiddenFor(Model => Model.ReturnUrl)
        <button type="submit" class="btn btn-primary">Login</button>
    </div>
}