var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddRazorPages();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
}
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

// Redirecci�n desde ra�z "/" a "/Acceder"
app.MapGet("/", context =>
{
    context.Response.Redirect("/Acceder");
    return Task.CompletedTask;
});

app.MapRazorPages();

app.Run();
