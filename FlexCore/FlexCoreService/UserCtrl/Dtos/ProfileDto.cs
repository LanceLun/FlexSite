namespace FlexCoreService.UserCtrl.Dtos
{
    public class ProfileDto
    {
        public int MemberId { get; set; }
        public int fk_LevelId { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Mobile { get; set; }
        public bool? Gender { get; set; }
        public DateTime? Birthday { get; set; }
        public string CommonAddress { get; set; }

    }
}
