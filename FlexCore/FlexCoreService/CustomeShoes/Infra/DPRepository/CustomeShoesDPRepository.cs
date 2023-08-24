﻿using Dapper;
using FlexCoreService.CustomeShoes.Interface;
using FlexCoreService.CustomeShoes.Models.Dtos;
using FlexCoreService.ProductCtrl.Models.Dtos;
using FlexCoreService.ProductCtrl.Models.VM;
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

        public ShoesDetailDto GetShoesDetail(int shoesproductId)
        {
			string sql = @"select c.ShoesProductId, c.ShoesName, c.ShoesDescription, c.ShoesOrigin, c.ShoesUnitPrice, scc.ColorName, scc.ColorCode, sc.ShoesCategoryName, sp.ShoesPictureUrl as ShoesImgs
from CustomizedShoesPo as c
join ShoesCategories as sc on sc.ShoesCategoryId = c.fk_ShoesCategoryId
join ShoesColorCategories as scc on scc.ShoesColorId = c.fk_ShoesColorId
join ShoesPictures as sp on c.ShoesProductId = sp.fk_ShoesPictureProduct_Id
where c.Status=0 and
c.ShoesProductId=" + @shoesproductId;

            using IDbConnection dbConnection = new SqlConnection(_connStr);
            var result = dbConnection.QueryFirstOrDefault<ShoesDetailDto>(sql, new { shoesproductId });
            return result;
        }

        public IEnumerable<ShoesImgsDto> GetShoesImgs(int shoesproductId)
        {
            string sql = @"select ShoesPicture_Id,ShoesPictureUrl from ShoesPictures
where fk_ShoesPictureProduct_Id='" + @shoesproductId + "'";

            using IDbConnection dbConnection = new SqlConnection(_connStr);
            var result = dbConnection.Query<ShoesImgsDto>(sql, new { shoesproductId });
            return result;
        }

        public ShoesAllTotalDto GetShoesTotalOrder(string ShoesOrderId)
        {
            string sql = @"select ShoesOrderId,Qty,ShoesSizes.SizeId,ShoesSizes.SizeName,CustomizedShoesPo.ShoesProductId,CustomizedShoesPo.ShoesName,CustomizedShoesPo.ShoesUnitPrice,Remark
from ShoesOrders
join ShoesGroups on ShoesGroups.fk_CustomerOrderId = ShoesOrders.ShoesOrderId
join CustomizedShoesPo on ShoesGroups.fk_ShoesMainId = CustomizedShoesPo.ShoesProductId
join ShoesSizes on ShoesOrders.fk_ShoesSizeId = ShoesSizes.SizeId
where ShoesOrders.ShoesOrderId ='" + @ShoesOrderId + "'";

            using IDbConnection dbConnection = new SqlConnection(_connStr);
            var result = dbConnection.QueryFirstOrDefault<ShoesAllTotalDto>(sql, new { ShoesOrderId });
            return result;
        }

        public IEnumerable<CustomeShoesDto> SearchCustomeShoes()
		{
			string sql = @"select c.ShoesProductId, c.ShoesName, c.ShoesUnitPrice,sc.ShoesCategoryId, sc.ShoesCategoryName, MIN(sp.ShoesPictureUrl) AS FirstImgPath 
from CustomizedShoesPo as c
join ShoesPictures as sp on c.ShoesProductId = sp.fk_ShoesPictureProduct_Id
join ShoesCategories as sc on sc.ShoesCategoryId = c.fk_ShoesCategoryId
group by c.ShoesProductId, c.ShoesName, c.ShoesUnitPrice, sc.ShoesCategoryId, sc.ShoesCategoryName, c.Status
having c.Status=0
order by c.ShoesProductId";

			using IDbConnection dbConnection = new SqlConnection(_connStr);
			var result = dbConnection.Query<CustomeShoesDto>(sql);
			return result;
		}

        public IEnumerable<CustomeShoesDto> SearchCustomeShoesCategory(int shoescategoryId)
        {
            string sql = @"select CustomizedShoesPo.ShoesProductId, CustomizedShoesPo.ShoesName, CustomizedShoesPo.ShoesUnitPrice, ShoesCategories.ShoesCategoryId, ShoesCategories.ShoesCategoryName,MIN(ShoesPictures.ShoesPictureUrl) AS FirstImgPath from ShoesCategories
join CustomizedShoesPo on ShoesCategories.ShoesCategoryId = CustomizedShoesPo.fk_ShoesCategoryId
join ShoesPictures on CustomizedShoesPo.ShoesProductId = ShoesPictures.fk_ShoesPictureProduct_Id
group by CustomizedShoesPo.ShoesProductId, CustomizedShoesPo.ShoesName, CustomizedShoesPo.ShoesUnitPrice,ShoesCategories.ShoesCategoryId,ShoesCategories.ShoesCategoryName
having ShoesCategories.ShoesCategoryId=" + shoescategoryId;

            using IDbConnection dbConnection = new SqlConnection(_connStr);
            var result = dbConnection.Query<CustomeShoesDto>(sql, new { shoescategoryId });
            return result;
        }

        public CustomeShoesDto SearchOneCustomeShoes(int Id)
        {
            string sql = @"select c.ShoesProductId, c.ShoesName, c.ShoesUnitPrice, sc.ShoesCategoryName, MIN(sp.ShoesPictureUrl) AS FirstImgPath 
from CustomizedShoesPo as c
join ShoesPictures as sp on c.ShoesProductId = sp.fk_ShoesPictureProduct_Id
join ShoesCategories as sc on sc.ShoesCategoryId = c.fk_ShoesCategoryId
group by c.ShoesProductId, c.ShoesName, c.ShoesUnitPrice, sc.ShoesCategoryName, c.Status
having c.Status=0 and c.ShoesProductId=" + @Id;

            using IDbConnection dbConnection = new SqlConnection(_connStr);
            var result = dbConnection.QueryFirstOrDefault<CustomeShoesDto>(sql, new { Id });
            return result;
        }
    }
}
