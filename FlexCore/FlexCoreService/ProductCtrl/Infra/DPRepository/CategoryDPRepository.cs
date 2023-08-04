using Dapper;
using FlexCoreService.ProductCtrl.Interface;
using FlexCoreService.ProductCtrl.Models.Dtos;
using Microsoft.Data.SqlClient;
using System.Data;

namespace FlexCoreService.ProductCtrl.Infra.DPRepository
{
    public class CategoryDPRepository : ICategoryRepository
    {
        private string _connStr;
        private IConfiguration _configuration;
        public CategoryDPRepository(IConfiguration configuration)
        {
            _configuration = configuration;
            _connStr = _configuration.GetConnectionString("AppDbContext");
        }
        public IEnumerable<CategoryDto> GetAllCategory()
        {
            string sql = @"select pc.ProductCategoryName,ps.ProductSubCategoryName 
from ProductCategories as pc
join SalesCategories as sc on sc.SalesCategoryId=pc.fk_SalesCategoryId
join ProductSubCategories as ps on ps.fk_ProductCategoryId=pc.ProductCategoryId
where fk_SalesCategoryId=1";

            using IDbConnection dbConnection = new SqlConnection(_connStr);
            var result = dbConnection.Query<CategoryDto>(sql);
            return result;
        }
    }
}
