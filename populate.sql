insert into user values(001122555, "pedro", 999444777);
insert into user values(001122333, "joao", 999111222);
insert into user values(001122777, "ze", 999888999);

insert into fiscal values(1,"PT");
insert into fiscal values(2,"MEO");
insert into fiscal values(3,"Vodafone");
insert into fiscal values(4,"CP");

insert into edificio values("Avenida Rovisco Pais");
insert into edificio values("Avenida Joao XXI");
insert into edificio values("Almirante Reis");

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
insert into alugavel values("Avenida Rovisco Pais", 133, "foto.jpg");
insert into alugavel values("Avenida Rovisco Pais", 134, "foto.jpg");
insert into alugavel values("Avenida Rovisco Pais", 135, "foto.jpg");
insert into alugavel values("Avenida Rovisco Pais", 136, "foto.jpg");
insert into alugavel values("Avenida joao XXI", 999, "terceira_imagem.jpg");
insert into alugavel values("Avenida joao XXI", 998, "terceira_imagem.jpg");
insert into alugavel values("Avenida joao XXI", 997, "terceira_imagem.jpg");
insert into alugavel values("Avenida joao XXI", 996, "terceira_imagem.jpg");
insert into alugavel values("Avenida joao XXI", 995, "terceira_imagem.jpg");
insert into alugavel values("Avenida joao XXI", 994, "terceira_imagem.jpg");
insert into alugavel values("Avenida joao XXI", 993, "terceira_imagem.jpg");
insert into alugavel values("Almirante Reis", 666, "foto.jpg");
insert into alugavel values("Almirante Reis", 665, "foto.jpg");
insert into alugavel values("Almirante Reis", 664, "foto.jpg");
insert into alugavel values("Almirante Reis", 663, "foto.jpg");
insert into alugavel values("Almirante Reis", 662, "foto.jpg");


insert into espaco values ("Avenida Rovisco Pais", 654);
insert into espaco values ("Avenida Rovisco Pais", 123);
insert into espaco values ("Avenida Rovisco Pais", 222);
insert into espaco values ("Avenida Rovisco Pais", 125);
insert into espaco values ("Avenida Rovisco Pais", 136);
insert into espaco values ("Avenida Rovisco Pais", 135);
insert into espaco values ("Avenida Rovisco Pais", 134);
insert into espaco values ("Avenida joao XXI", 999);
insert into espaco values ("Avenida joao XXI", 998);
insert into espaco values ("Avenida joao XXI", 997);
insert into espaco values ("Almirante Reis", 666);
insert into espaco values ("Almirante Reis", 665);

insert into posto values("Avenida Rovisco Pais", 123, 222);
insert into posto values("Avenida Rovisco Pais", 123, 127);
insert into posto values("Avenida Rovisco Pais", 123, 128);

insert into arrenda values("Avenida Rovisco Pais", 654 , 001122555);

insert into fiscaliza values(1, "Avenida Rovisco Pais", 654);

insert into reserva values(1);
insert into reserva values(2);
insert into reserva values(3);
insert into reserva values(4);
insert into reserva values(5);
insert into reserva values(6);
insert into reserva values(7);
insert into reserva values(8);
insert into reserva values(9);
insert into reserva values(10);
insert into reserva values(11);
insert into reserva values(12);
insert into reserva values(13);
insert into reserva values(14);

insert into oferta values("Avenida Rovisco Pais", 654, "2016-11-26 00:00:00", "2016-11-27 00:00:00", 1);
insert into oferta values("Avenida Rovisco Pais", 222, "2016-11-26 00:00:00", "2016-11-27 00:00:00", 3);
insert into oferta values("Avenida Rovisco Pais", 123, "2016-11-26 00:00:00", "2016-11-27 00:00:00", 4);
insert into oferta values("Avenida Rovisco Pais", 136, "2016-11-26 00:00:00", "2016-11-27 00:00:00", 5);
insert into oferta values("Avenida Rovisco Pais", 135, "2016-11-26 00:00:00", "2016-11-27 00:00:00", 6);
insert into oferta values("Avenida Rovisco Pais", 132, "2016-11-26 00:00:00", "2016-11-27 00:00:00", 13);
insert into oferta values("Avenida joao XXI", 999, "2016-11-26 00:00:00", "2016-11-27 00:00:00", 8);
insert into oferta values("Avenida joao XXI", 998, "2016-11-26 00:00:00", "2016-11-27 00:00:00", 9);
insert into oferta values("Avenida joao XXI", 997, "2016-11-26 00:00:00", "2016-11-27 00:00:00", 10);
insert into oferta values("Almirante Reis", 666, "2016-11-26 00:00:00", "2016-11-27 00:00:00", 11);
insert into oferta values("Almirante Reis", 665, "2016-11-26 00:00:00", "2016-11-27 00:00:00", 12);

insert into paga values(1, "2016-11-28 00:00:00", "multibanco");

insert into aluga values("Avenida Rovisco Pais", 654,  "2016-11-26 00:00:00", 001122333 , 1);
insert into aluga values("Avenida Rovisco Pais", 132,  "2016-11-26 00:00:00", 001122333 , 2);
insert into aluga values("Avenida Rovisco Pais", 222,  "2016-11-26 00:00:00", 001122333 , 3);
