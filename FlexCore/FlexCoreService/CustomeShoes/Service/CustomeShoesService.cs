using EFModels.Models;
using FlexCoreService.CustomeShoes.Interface;
using FlexCoreService.CustomeShoes.Models.Dtos;

namespace FlexCoreService.CustomeShoes.Service
{
	public class CustomeShoesService
	{
		private ICustomeShoesRepository _repo;
		private AppDbContext _db;
		public CustomeShoesService(ICustomeShoesRepository repo)
		{
			_repo = repo;
			_db = new AppDbContext();
		}

		public IEnumerable<CustomeShoesDto> SearchCustomeShoes()
		{
			var customeshoes = _repo.SearchCustomeShoes();
			return customeshoes;
		}
	}
}
