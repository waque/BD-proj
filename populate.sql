insert into user values(001122555, "pedro", 999444777);
insert into user values(001122333, "joao", 999111222);
insert into user values(001122777, "ze", 999888999);

insert into fiscal values(1,"PT");
insert into fiscal values(2,"MEO");
insert into fiscal values(3,"Vodafone");
insert into fiscal values(4,"CP");

insert into edificio values("Avenida Rovisco Pais");
insert into edificio values("Avenida Joao XXI");
insert into edificio values("Avenida Almirante Reis");

insert into alugavel values("Avenida Rovisco Pais", 654, "primeira_imagem.jpg");
insert into alugavel values("Avenida Rovisco Pais", 123, "segunda_imagem.jpg");
insert into alugavel values("Avenida Rovisco Pais", 222, "terceira_imagem.jpg");
insert into alugavel values("Avenida Rovisco Pais", 125, "aaaa.jpg");
insert into alugavel values("Avenida Rovisco Pais", 126, "foto.jpg");
insert into alugavel values("Avenida Rovisco Pais", 127, "foto.jpg");
insert into alugavel values("Avenida Rovisco Pais", 128, "foto.jpg");
insert into alugavel values("Avenida Rovisco Pais", 129, "foto.jpg");
insert into alugavel values("Avenida Rovisco Pais", 130, "foto.jpg");
insert into alugavel values("Avenida Rovisco Pais", 132, "foto.jpg");
insert into alugavel values("Avenida joao XXI", 654, "terceira_imagem.jpg");

insert into espaco values ("Avenida Rovisco Pais", 654);
insert into espaco values ("Avenida Rovisco Pais", 123);
insert into espaco values ("Avenida Rovisco Pais", 222);
insert into espaco values ("Avenida Rovisco Pais", 125);

insert into posto values("Avenida Rovisco Pais", 123, 222);
insert into posto values("Avenida Rovisco Pais", 123, 127);
insert into posto values("Avenida Rovisco Pais", 123, 128);

insert into arrenda values("Avenida Rovisco Pais", 654 , 001122555);

insert into fiscaliza values(1, "Avenida Rovisco Pais", 654);

insert into reserva values(1);
insert into reserva values(2);
insert into reserva values(3);

insert into oferta values("Avenida Rovisco Pais", 654, "2016-11-26 00:00:00", "2016-11-27 00:00:00", 1);

insert into paga values(1, "2016-11-28 00:00:00", "multibanco");

insert into aluga values("Avenida Rovisco Pais", 654,  "2016-11-26 00:00:00", 001122333 , 1);



