//code mẫu update data hàng loạt bằng JAV
    private static String jdbcURL="jdbc:mysql://localhost:3306/groot";
    private static String jdbcUsername="groot";
    private static String jdbcPassword="";
    protected static Connection connectDB() throws SQLException
    {
        Connection jdbcConnection=null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException(e);
        }
        try {
            jdbcConnection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException ex)
        {
            System.err.println("Lỗi: " + ex.getMessage());
        }
        return jdbcConnection;
    }
    static final String query = " select OrderID , ShipperID from groot.orders ";
    static final String update = " UPDATE `groot`.`orders` SET `ShipperID` = ? WHERE `OrderID` = ? ";
    static void updateData() throws SQLException
    {
        Connection connection = connectDB();
        Statement command = connection.createStatement();
        //region get leng
        ResultSet report = command.executeQuery(" select Count(*) as 'leng' from groot.orders ");
        report.next(); int leng = report.getInt("leng");
        report.close(); command.close(); //endregion
        command = connection.createStatement();
        report = command.executeQuery(query);
        for (int i=1; i<=leng; i++)
        {
            report.next();
            int orderId = report.getInt("OrderID");
            int shipperId = report.getInt("ShipperId");
            if (shipperId>=90)
            {
                PreparedStatement  writter = connection.prepareStatement(update);
                writter.setInt(1, (shipperId-90));
                writter.setInt(2, orderId);
                writter.executeUpdate();
                writter.close();
            }
        }
        report.close(); command.close(); connection.close();
    }
