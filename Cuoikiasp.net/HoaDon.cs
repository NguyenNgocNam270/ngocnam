namespace Cuoikiasp.net
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HoaDon")]
    public partial class HoaDon
    {
        [Key]
        [StringLength(10)]
        public string SoHoaDon { get; set; }

        [StringLength(10)]
        public string MaKH { get; set; }

        [StringLength(10)]
        public string MaSP { get; set; }

        [StringLength(50)]
        public string NgayBan { get; set; }

        public int? SoLuongBan { get; set; }

        public int? DonGia { get; set; }

        public int? TienThanhToan { get; set; }

        [StringLength(50)]
        public string UserName { get; set; }

        public virtual KhachHang KhachHang { get; set; }

        public virtual NhanVien NhanVien { get; set; }

        public virtual SanPham SanPham { get; set; }
    }
}
