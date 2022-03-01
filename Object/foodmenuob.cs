using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace EvidenceAsp.netdemo.Object
{//[DataObject(true)] is used to make the class a data access class.
    //In three tier(most likely to MVC) application, there are three layers to create an apllication.
    //(1)Presentation(Source code)-View
    //(2) data access layer/middle layer(a simple class with [DataObject(true)]-Model
    //(3) business layer(all other classes)-Controller
    [DataObject(true)]
    public class foodmenuob
    {
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static IEnumerable GetAllItems()
        // IEnumerable returns values in rows and columns(list)
        {
            ConnectionDB a = new ConnectionDB();
            a.conn1("select * from FoodMenuTB order by Items");
            SqlDataReader rdr = a.cmd1.ExecuteReader(System.Data.CommandBehavior.CloseConnection);
            return rdr;
        }
        [DataObjectMethod(DataObjectMethodType.Insert)]
        public int InsertFood(foodMenuTB fmt)
        {
            ConnectionDB a = new ConnectionDB();
            a.conn1("insert into foodMenuTB values(@id,@food,@items,@price)");
            a.cmd1.Parameters.AddWithValue("id", fmt.id);
            a.cmd1.Parameters.AddWithValue("food", fmt.food);
            a.cmd1.Parameters.AddWithValue("items", fmt.items);
            a.cmd1.Parameters.AddWithValue("price", fmt.price);
            int n = a.cmd1.ExecuteNonQuery();
            return n;
        }
        [DataObjectMethod(DataObjectMethodType.Delete)]
        public int DeleteFood(foodMenuTB fmt)
        {
            ConnectionDB a = new ConnectionDB();
            a.conn1("delete from foodMenuTB where id=@id");
            a.cmd1.Parameters.AddWithValue("id", fmt.id);
            int n = a.cmd1.ExecuteNonQuery();
            return n;
        }
        [DataObjectMethod(DataObjectMethodType.Update)]
        public int Update(foodMenuTB orig_fmt, foodMenuTB fmt)
        {
            ConnectionDB a = new ConnectionDB();
            a.conn1("update foodmenuTB set food=@food,items=@items,price=@price where id=@orig_id");
            a.cmd1.Parameters.AddWithValue("orig_id", orig_fmt.id);
            a.cmd1.Parameters.AddWithValue("id", fmt.id);
            a.cmd1.Parameters.AddWithValue("food", fmt.food);
            a.cmd1.Parameters.AddWithValue("items", fmt.items);
            a.cmd1.Parameters.AddWithValue("price", fmt.price);
            int n = a.cmd1.ExecuteNonQuery();
            return n;
        }
    }
}