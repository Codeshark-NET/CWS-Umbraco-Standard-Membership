@using System.Web.Mvc.Html
@using $rootnamespace$.Controllers.SurfaceControllers
@using $rootnamespace$.Models;
@using Umbraco.Web
@model ProfileViewModel

@{
    Html.EnableClientValidation(true);
    Html.EnableUnobtrusiveJavaScript(true);
}

@using(Html.BeginUmbracoForm<MemberProfileSurfaceController>("HandleEditProfile"))
{
    @Html.ValidationSummary(true)

    <fieldset>
        <legend>Edit Profile</legend>
        
        <div class="editor-label">
            @Html.LabelFor(model => model.Name)
        </div>

        <div class="editor-field">
            @Html.EditorFor(model => model.Name)
            @Html.ValidationMessageFor(model => model.Name)
        </div>
        
        <div class="editor-label">
            @Html.LabelFor(model => model.EmailAddress)
        </div>

        <div class="editor-field">
            @Html.EditorFor(model => model.EmailAddress)
            @Html.ValidationMessageFor(model => model.EmailAddress)
        </div>
        
        
        <div class="editor-label">
            @Html.LabelFor(model => model.Description)
        </div>

        <div class="editor-field">
            @Html.EditorFor(model => model.Description)
            @Html.ValidationMessageFor(model => model.Description)
        </div>
        
        <div class="editor-label">
            @Html.LabelFor(model => model.ProfileURL)
        </div>

        <div class="editor-field">
            @Html.EditorFor(model => model.ProfileURL)
            @Html.ValidationMessageFor(model => model.ProfileURL)
        </div>
        
        <div class="editor-label">
            @Html.LabelFor(model => model.Twitter)
        </div>

        <div class="editor-field">
            @Html.EditorFor(model => model.Twitter)
            @Html.ValidationMessageFor(model => model.Twitter)
        </div>
        
        <div class="editor-label">
            @Html.LabelFor(model => model.LinkedIn)
        </div>

        <div class="editor-field">
            @Html.EditorFor(model => model.LinkedIn)
            @Html.ValidationMessageFor(model => model.LinkedIn)
        </div>
        
        <div class="editor-label">
            @Html.LabelFor(model => model.Skype)
        </div>

        <div class="editor-field">
            @Html.EditorFor(model => model.Skype)
            @Html.ValidationMessageFor(model => model.Skype)
        </div>
        
        @Html.HiddenFor(model => model.MemberID)

        <p>
            <input type="submit" value="Update" />
        </p>
    </fieldset>
}