predicates	
	nota_total
goal
	nota_total.
clauses
	nota_total :-
	makewindow(1,9,112,"Promedio M. Discretas I",5,20,20,56),
	nl,write("Nombre del estudiante: "),
	readln(Nombre),nl,
	nl,write("Ingrese la nota correspondiente al parcial de l�gica  proposicional: "),nl,
	readreal(Notap1),
	write("Ingrese su porcentaje: "),nl,
	readreal(Porcp1),
		Promp1=Notap1*(Porcp1/100),nl,
	write("Ingrese la nota correspondiente al parcial de l�gica  cuantificacional: "),nl,
	readreal(Notap2),
	write("Ingrese su porcentaje: "),nl,
	readreal(Porcp2),
		Promp2=Notap2*(Porcp2/100),nl,
		removewindow,
	makewindow(1,9,112,"Promedio M. Discretas I",5,20,20,56),
	write("Ingrese la nota correspondiente al parcial de         conjuntos y relaciones: "),nl,
	readreal(Notap3),
	write("Ingrese su porcentaje: "),nl,
	readreal(Porcp3),
		Promp3=Notap3*(Porcp3/100),nl,
	write("Ingrese la nota correspondiente al parcial de �lgebra booleana: "),nl,
	readreal(Notap4),
	write("Ingrese su porcentaje: "),nl,
	readreal(Porcp4),
		Promp4=Notap4*(Porcp4/100),nl,
	write("Ingrese la nota correspondiente al trabajo de lenguajedeclarativo: "),nl,
	readreal(Notat1),
	write("Ingrese su porcentaje: "),nl,
	readreal(Porct1),
		Promt1=Notat1*(Porct1/100),nl,
		removewindow,
	makewindow(1,9,112,"Promedio M. Discretas I",5,20,20,56),
	nl,nl,nl,write("Ingrese la nota correspondiente al trabajo de         circuitos l�gicos: "),nl,
	readreal(Notat2),
	write("Ingrese su porcentaje: "),nl,
	readreal(Porct2),
		Promt2=Notat2*(Porct2/100),nl,
	write("Ingrese la nota correspondiente a seguimiento: "),nl,
	readreal(Notase),
	write("Ingrese su porcentaje: "),nl,
	readreal(Porcse),
		Promse=Notase*(Porcse/100),nl,
		Total=Promp1+Promp2+Promp3+Promp4+Promt1+Promt2+Promse,
		removewindow,
	makewindow(1,9,112,"Promedio M. Discretas I",5,20,20,56),
	nl,nl,write("Nota final de ",Nombre,": ",Total),nl,
	nl,nl,nl,write("Si desea subir o bajar la nota del estudiante, ingresela cantidad; si no es el caso, ingrese 0: "),nl,
	readreal(Up),
		Notat=Promp1+Promp2+Promp3+Promp4+Promt1+Promt2+Promse+Up,
		removewindow,
	makewindow(1,9,112,"Promedio M. Discretas I",5,20,20,56),
	nl,nl,write("Nota final de ",Nombre,": ",Notat),
	nl,nl,nl,write("�Desea seguir con otro estudiante? (y/n)"),nl,
	readln(Ch),Ch="n".
	nota_total :-
	nl,nl,nl,nl,nota_total.
	