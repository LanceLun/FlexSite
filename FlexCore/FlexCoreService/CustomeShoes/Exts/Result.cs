namespace FlexCoreService.CustomeShoes.Exts
{
	public class Result
	{
		public bool IsSuccess { get; set; }
		public bool IsFailed => !IsSuccess;
		public string? ErrorMessage { get; set; }

		public static Result Success() => new Result { IsSuccess = true, ErrorMessage = null };

		public static Result Failed(string errormsg) => new Result { IsSuccess = false, ErrorMessage = errormsg };
	}
}
