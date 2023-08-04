using EFModels.Models;
using FlexCoreService.UserCtrl.Dtos;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace FlexCoreService.Controllers
{
    [EnableCors("AllowAny")]
    [Route("api/[controller]")]
    [ApiController]
    public class UsersController : ControllerBase
    {
        private readonly AppDbContext _db;
        public UsersController(AppDbContext db)
        {
            _db=db;
        }

        /// <summary>
        /// 取得會員資料
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("{account}")]
        public async Task<ProfileDto> GetUserProfil(string account)
        {
            if (_db.Members==null)
            {
                return null;
            }
            ProfileDto proDto = _db.Members.Where(m=>m.Account==account).Select(m=>new ProfileDto
            {
                MemberId = m.MemberId,
                fk_LevelId=m.fk_LevelId,
                Name=m.Name,                
                Email=m.Email,
                Mobile=m.Mobile,
                Gender=m.Gender,
                Birthday=m.Birthday,
                CommonAddress=m.CommonAddress
            }).Single();
            return proDto;
        }

    }
}
