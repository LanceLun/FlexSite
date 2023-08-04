using Dapper;
using FlexCoreService.CustomeShoes.Interface;
using FlexCoreService.CustomeShoes.Models.Dtos;
using Microsoft.Data.SqlClient;
using System.Data;

namespace FlexCoreService.CustomeShoes.Infra.DPRepository
{
	public class CustomeShoesDPRepository : ICustomeShoesRepository
	{
		private string _connStr;
		private IConfiguration _configuration;
		public CustomeShoesDPRepository(IConfiguration configuration)
		{
			_configuration = configuration;
			_connStr = _configuration.GetConnectionString("AppDbContext");
		}

		public IEnumerable<CustomeShoesDto> SearchCustomeShoes()
		{
			string sql = @"select c.ShoesProductId, c.ShoesName, c.ShoesUnitPrice, sc.ShoesCategoryName, MIN(sp.ShoesPictureUrl) AS FirstImgPath 
from CustomizedShoesPo as c
join ShoesPictures as sp on c.ShoesProductId = sp.fk_ShoesPictureProduct_Id
join ShoesCategories as sc on sc.ShoesCategoryId = c.fk_ShoesCategoryId
group by c.ShoesProductId, c.ShoesName, c.ShoesUnitPrice, sc.ShoesCategoryName
order by c.ShoesProductId";

			using IDbConnection dbConnection = new SqlConnection(_connStr);
			var result = dbConnection.Query<CustomeShoesDto>(sql);
			return result;
		}
	}
}
