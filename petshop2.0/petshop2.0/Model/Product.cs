//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace petshop2._0.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Product
    {
        public int id { get; set; }
        public string ProductArticleNumber { get; set; }
        public int ProductName { get; set; }
        public string ed { get; set; }
        public int sum { get; set; }
        public int sale { get; set; }
        public int ProductManufacturer { get; set; }
        public int ProductCost { get; set; }
        public int ProductCategory { get; set; }
        public int SaleN { get; set; }
        public int col { get; set; }
        public string text { get; set; }
        public string ProductPhoto { get; set; }
        public Nullable<bool> ProductPhotoName { get; set; }
    
        public virtual ProductCategory ProductCategory1 { get; set; }
        public virtual ProductCost ProductCost1 { get; set; }
        public virtual ProductManufacturer ProductManufacturer1 { get; set; }
        public virtual ProductName ProductName1 { get; set; }
    }
}