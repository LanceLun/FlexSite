namespace FlexCoreService.ProductCtrl.Models.VM
{
    public class CategoryVM
    {
        public string ProductCategoryName { get; set; }
        
        public Dictionary<string, List<string>> Categories { get; set; }
        public CategoryVM()
        {
            Categories = new Dictionary<string, List<string>>();
        }

    }
}
