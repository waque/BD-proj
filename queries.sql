/*---------------first querie------------*/
/*Quais os espacos com postos que nunca foram alugados?*/

select * from espaco as E
where E.codigo not in ( select codigo
						from aluga natural join oferta)

/*--------------second querie------------*/
/*Quais edificios com um numero de reservas superior a media?*/

select morada, count(*) as cont from aluga
group by morada
having cont > (select avg(c) as average from (select morada, count(*) as c from aluga as a
			group by morada) as b);

/*----------------------------------------*/
/*Quais utilizadores cujos alugaveis foram fiscalizados sempre pelo mesmo fiscal?*/



/*----------------------------------------*/
/*Qual o montante total realizado (pago) por cada espaco durante o ano de 2016?
Assuma que a tarifa indicada na oferta e diaria. Deve considerar os casos em que o
espaco foi alugado totalmente ou por postos*/


/*---------------------------------------*/
/*Qual o montante total realizado (pago) por cada espaço durante o ano de 2016?
Assuma que a tarifa indicada na oferta é diaria. Deve considerar os casos em que o
espaço foi alugado totalmente ou por postos*/
