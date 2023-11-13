/* Создайте функцию, которая  выводит только четные числа от 1 до 10 включительно.
Пример: 2,4,6,8,10 (можно сделать через шаг +  2: х = 2, х+=2)
*/
delimiter //
create procedure output_n ()

begin
	declare n int default 1;
    declare res varchar(20) default ('');
    while n <= 10 do 
		if n mod 2 = 0 then
			set res =CONCAT(res, '', n);
		end if;
	set n = n + 1;
    end while;
    select res;
end//

call output_n;
    
    