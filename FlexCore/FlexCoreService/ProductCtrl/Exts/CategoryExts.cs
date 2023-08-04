using FlexCoreService.ProductCtrl.Models.Dtos;
using FlexCoreService.ProductCtrl.Models.VM;

namespace FlexCoreService.ProductCtrl.Exts
{
    public static class CategoryExts
    {
        public static CategoryVM ToVM(this CategoryDto dto)
        {
            return new CategoryVM
            {
                ProductCategoryName = dto.ProductCategoryName,
            };
        }
        public static CategoryVM ToCategoryVM(this IEnumerable<CategoryDto> dto)
        {
            var vm= new CategoryVM();
            var result = dto.GroupBy(c => c.ProductCategoryName).
                ToDictionary(g => g.Key, g => g.Select(s => s.ProductSubCategoryName).ToList());
            return vm;
        }
    }
}
