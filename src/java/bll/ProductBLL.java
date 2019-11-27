/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bll;

import entity.Product;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author trung
 */
public class ProductBLL {
    public List<Product> getNewProducts(int number) throws NamingException{
        try{
            Context initContext = new InitialContext();
            Context envContext = (Context) initContext.lookup("java:comp/env");
            DataSource ds = (DataSource) envContext.lookup("jdbc/emarket");
            Connection conn;
            conn = ds.getConnection();
            Statement sttm = conn.createStatement();
            String sql = "SELECT * from emarket.product;";
            ResultSet rs = sttm.executeQuery(sql);
            ArrayList<Product> prods = new ArrayList<>();
            while (rs.next()) {
                Product p = new Product();
                p.setProductID(rs.getInt("product_id"));
                p.setCategoryID(rs.getInt("category_id"));
                p.setPrice(rs.getFloat("price"));
                p.setDescription(rs.getString("description"));
                p.setImage(rs.getString("image"));
                p.setName(rs.getString("name"));
                p.setThumbImage(rs.getString("thumb_image"));
                p.setLastUpdate(rs.getDate("last_update"));
                p.setDescriptionDetail(rs.getString("description_detail"));
                prods.add(p);
            }
            return prods;
        } catch (SQLException ex){
        }
        return null;
    }
}
