/*---------------first querie------------*/
/*Quais os espacos com postos que nunca foram alugados?*/
/*
select distinct morada, codigo_espaco from posto as E
where E.codigo not in ( select codigo
						from aluga);
*/
/*--------------second querie------------*/
/*Quais edificios com um numero de reservas superior a media?*/
/*
select morada, count(*) as cont from aluga
group by morada
having cont > (select avg(c) as average from (select morada, count(*) as c from aluga as a
			group by morada) as b);
*/
/*----------------------------------------*/
/*Quais utilizadores cujos alugaveis foram fiscalizados sempre pelo mesmo fiscal?*/
/*
select nif from (select * from arrenda natural join fiscaliza group by nif, id
)as x group by nif having count(id) = 1;
*/

/*----------------------------------------*/
/*Qual o montante total realizado (pago) por cada espaco durante o ano de 2016?
Assuma que a tarifa indicada na oferta e diaria. Deve considerar os casos em que o
espaco foi alugado totalmente ou por postos*/

select morada, codigo as codigo_espaco, SUM(total) from
	(select morada, codigo, total from ( /*Os que nao tem postos associados*/
		select *, datediff(data_fim,data_inicio)*tarifa total
		from aluga natural join oferta natural join paga) as big_data
		group by morada, codigo, data_inicio
		having (morada,codigo) not in (select morada,codigo from posto))p
	group by morada, codigo;


	select morada, codigo_espaco, SUM(total) from
		(select morada, codigo, total from ( /*Os que tem postos associados*/
			select *, datediff(data_fim,data_inicio)*tarifa total
			from aluga natural join oferta natural join paga) as big_data
			group by morada, codigo, data_inicio
			having (morada,codigo) in (select morada, codigo from posto))p natural join posto
		group by morada, codigo_espaco;



/*---------------------------------------*/
/*Quais os espaços de trabalho cujos postos nele contidos foram todos alugados? (Por
alugado entende-se um posto de trabalho que tenha pelo menos uma oferta aceite,
independentemente das suas datas.)*/
/*
select distinct morada, codigo_espaco
from posto p natural join aluga
where p.codigo_espaco not in (
	select distinct codigo_espaco from posto as E
	where E.codigo not in ( select codigo
		from aluga));
*/
