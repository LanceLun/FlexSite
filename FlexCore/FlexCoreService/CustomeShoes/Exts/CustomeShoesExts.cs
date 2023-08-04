using FlexCoreService.CustomeShoes.Models.Dtos;
using FlexCoreService.CustomeShoes.Models.VMs;

namespace FlexCoreService.CustomeShoes.Exts
{
	public static class CustomeShoesExts
	{
		public static CustomeShoesVM ToCardVM(this CustomeShoesDto dto)
		{
			return new CustomeShoesVM
			{
				ShoesProductId = dto.ShoesProductId,
				ShoesName = dto.ShoesName,
				ShoesCategoryName = dto.ShoesCategoryName,
				ShoesUnitPrice = dto.ShoesUnitPrice,
				FirstImgPath = dto.FirstImgPath,
			};
		}
	}
}

