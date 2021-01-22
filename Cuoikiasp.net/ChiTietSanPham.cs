namespace Cuoikiasp.net
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ChiTietSanPham")]
    public partial class ChiTietSanPham
    {
        [Key]
        [StringLength(10)]
        public string MaSP { get; set; }

        [StringLength(50)]
        public string HeDieuHanh { get; set; }

        [StringLength(50)]
        public string ManHinh { get; set; }

        [StringLength(50)]
        public string Camera { get; set; }

        [StringLength(50)]
        public string CPU { get; set; }

        [StringLength(50)]
        public string RAM { get; set; }

        [StringLength(50)]
        public string DungLuongPin { get; set; }

        public virtual SanPham SanPham { get; set; }
    }
}
