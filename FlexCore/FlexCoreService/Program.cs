using EFModels.Models;
using FlexCoreService.CustomeShoes.Infra.DPRepository;
using FlexCoreService.CustomeShoes.Interface;
using FlexCoreService.ProductCtrl.Infra.DPRepository;
using FlexCoreService.ProductCtrl.Interface;
using Microsoft.EntityFrameworkCore;

namespace FlexCoreService
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Add services to the DI container.

            builder.Services.AddControllers();

            builder.Services.AddDbContext<AppDbContext>
            (
                options => options.UseSqlServer(builder.Configuration.GetConnectionString("AppDbContext"))
            );

            //CORS¶}©ñ
            string MyAllow = "AllowAny";
            builder.Services.AddCors(options =>
            {
                options.AddPolicy(
                    name: MyAllow, policy => policy.AllowAnyOrigin().AllowAnyHeader().AllowAnyMethod()
                );
            });

            //DIª`¤JDapper
            builder.Services.AddScoped<IProductRepository, ProductDPRepository>();
            builder.Services.AddScoped<ICategoryRepository, CategoryDPRepository>();
			builder.Services.AddScoped<ICustomeShoesRepository, CustomeShoesDPRepository>();

			// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
			builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();

            var app = builder.Build();

            // Configure the HTTP request pipeline.
            if (app.Environment.IsDevelopment())
            {
                app.UseSwagger();
                app.UseSwaggerUI();
            }

            app.UseCors();

            app.UseHttpsRedirection();

            app.UseStaticFiles();

            app.UseAuthorization();


            app.MapControllers();

            app.Run();
        }
    }
}