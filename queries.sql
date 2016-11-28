/*---------------first querie------------*/
select * from espaco as E
where E.codigo not in ( select codigo
						from aluga natural join oferta)
                        
/*--------------second querie------------*/					

select distinct morada, count(morada
from aluga
where 