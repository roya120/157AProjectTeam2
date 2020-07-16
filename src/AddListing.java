import java.sql.*;

public class AddListing {

    public AddListing(String mileage,String  color,String  price,String  description) throws SQLException {
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?serverTimezone=UTC", "root", "");
        String insertSql = "INSERT INTO USER (MILEAGE, COLOR, PRICE, DESCRIPTION) "
                + "VALUES ('" + mileage + "','" + color + "','" + price + "','" + description + "')";
        Statement statement = connection.createStatement();
        statement.execute(insertSql);

    }
}
