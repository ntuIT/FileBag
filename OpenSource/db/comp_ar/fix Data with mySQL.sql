call Cursor_Example(@a,@b);
# 520- 536
DROP Procedure if Exists `Cursor_Example`;
DELIMITER $$

CREATE PROCEDURE Cursor_Example(
    a int(11)
    , b int(11)
)
BEGIN
    Declare v_Found Integer default 1;
    Declare _odId int;
    Declare _Cursor CURSOR
        for select ot.OrderDetailID from orderdetails ot where ot.OrderDetailID>= a;
    DECLARE CONTINUE HANDLER FOR NOT FOUND Set v_Found = 0;

    OPEN _Cursor;
    My_Loop : loop
        fetch _Cursor into _odId;
        delete from orderdetails where OrderDetailID = _odId;
        if v_Found = 0 then
            Leave My_Loop;
        End if;
    end loop My_Loop;
    close _Cursor;
end;
