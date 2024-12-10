select nombre, apellido1 from empleado;

select distinct apellido1 from empleado;

select * from epleado;

select id_departamento from empleado;

select distinct id_departamento from empleado;

select concat_ws(' ', nombre, apellido1, apellido2) as 'nombre completo' from empleado ;

select lower(concat_ws(' ', nombre, apellido1, apellido2)) as 'nombre completo' from empleado ;

SELECT id, nif, SUBSTRING(nif, 1, LENGTH(nif) - 1) AS nif_digitos, SUBSTRING(nif, -1) AS nif_letra FROM empleado;

select nombre, presupuesto-gastos as presupuesto from departamento;

select nombre, presupuesto-gastos as presupuesto_actual from departamento order by presupuesto_actual asc;

 select nombre from departamento order by nombre desc;
 
select apellido1, apellido2, nombre from empleado order by apellido1, apellido2, nombre asc;

SELECT nombre, presupuesto-gastos as presupuesto_actual FROM departamento ORDER BY presupuesto_actual DESC LIMIT 3;

SELECT nombre, presupuesto-gastos as presupuesto_actual FROM departamento ORDER BY presupuesto_actual asc LIMIT 3;

select nombre, gastos from departamento order by gastos desc limit 2;

select nombre, gastos from departamento order by gastos asc limit 2;

SELECT * FROM empleado LIMIT 5 OFFSET 2;

select nombre, presupuesto from departamento where presupuesto>=150000;

select nombre, presupuesto from departamento where presupuesto>100000 and presupuesto <200000;

select nombre from departamento where presupuesto not between 100000 and 200000;

select nombre, gastos, presupuesto from departamento  where gastos>presupuesto;

select nombre, gastos, presupuesto from departamento  where gastos<presupuesto;

select nombre, gastos, presupuesto from departamento  where gastos=presupuesto;

select * from empleado where apellido2 is null;

select * from empleado where apellido2 is not null;

select * from empleado where apellido2 = 'López';

SELECT * FROM empleado WHERE apellido2 IN ('Díaz', 'Moreno');

SELECT nombre, apellido1, apellido2, nif FROM empleado WHERE id_departamento = 3;

SELECT nombre, apellido1, apellido2, nif FROM empleado WHERE id_departamento IN (2, 4, 5);

SELECT MAX(presupuesto) AS presupuesto_maximo FROM departamento;

SELECT nombre, presupuesto FROM departamento ORDER BY presupuesto DESC LIMIT 1;

SELECT COUNT(*) AS total_empleados FROM empleado;

SELECT COUNT(*) AS empleados_con_segundo_apellido FROM empleado WHERE apellido2 IS NOT NULL;
