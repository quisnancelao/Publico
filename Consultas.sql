--GENERAL
select top 100 * from cobis..cl_ente
where en_estado_cliente='A' and en_fecha_crea>'20250101'

--TODA LA INFORMACION CLIENTES DE BANCO AQUI VER NOMBRES OFICIALES 
select top 100 * from cobis..cl_ente
where en_ente =2498711

update cobis..cl_ente 
set en_nombre= 'LUIS EFMAMJJASOND' where en_ente=30000513


update cobis..cl_ente 
set p_s_apellido = 'DEL PIERO EFMAMJJASOND'  where en_ente=30000554





--Query actual
select top 6000* from cobis..cl_ente
where en_estado_cliente='A' and en_fecha_crea>'20250101'

---Ahorro
select * 
from cob_ahorros..ah_cuenta ah
where ah_cliente  = 2280059

select * 
from cob_ahorros..ah_cuenta ah
where ah_cliente  = 2280059



--corriente
select top 50 * from cob_cuentas..cc_ctacte
where cc_cliente = 2527779

--SACAR LA CUENTA Y SOLO SACO LA CUENTA 
--aqui hay solo N corriente

select top 3000 * 
from cob_cuentas..cc_ctacte
where  cc_estado = 'A' and cc_bloqueos =0 and cc_categoria in ('F','I','N','R') and cc_moneda =1 and cc_fecha_aper>'20240101'

--aqui hay variado F N I R ahorro
select top 3000 * 
from cob_ahorros..ah_cuenta ah
where  ah_estado  = 'A' and ah_bloqueos =0 and ah_categoria in ('F','I','N','R') and ah_moneda =1 and ah_fecha_aper>'20240101'


select * 
from cob_ahorros..ah_cuenta ah
where ah_cta_banco  = '0005113271'


--COPIO el ente y cedula del cliente actual  al final poner la cuenta a actualizar ah_cta_banco

update cob_cuentas..cc_ctacte  
set cc_cliente =2527779 ,cc_ced_ruc ='0919333252' where cc_cta_banco  ='0005206458'

update cob_ahorros..ah_cuenta  
set ah_cliente =2530442, ah_ced_ruc ='2300063233' where ah_cta_banco  ='3001362311'



30000512
105159238



select top 50 * from cob_cuentas..cc_ctacte
where cc_cliente = 30000512


select   en_segmento_cart ,
         en_subsegmento_cart
from cobis..cl_ente
where en_ente=2279986



SELECT CONVERT(VARCHAR(60), valor)
FROM cobis..cl_tabla a
INNER JOIN cobis..cl_catalogo b
    ON a.codigo = b.tabla
WHERE a.tabla = 'cl_segmento_cart'
AND RTRIM(b.codigo) = 'M'
go



-----Rango ahorro
SELECT TOP 10000 *
FROM cob_ahorros..ah_cuenta ah
WHERE ah_estado = 'A'
  AND ah_bloqueos = 0
  AND ah_categoria = 'N'
  AND ah_moneda = 1
  AND ah_fecha_aper > '20250101'
go

-----Rango corriente
SELECT TOP 100000 *
FROM cob_cuentas..cc_ctacte
WHERE cc_estado = 'A'
  AND cc_bloqueos = 0
  AND cc_categoria = 'N'
  AND cc_moneda = 1
  AND cc_fecha_aper > '20250101'
GO



--Correo 
select de_tipo,*
from cobis..cl_direccion_email
where de_ente = 2650790



select isnull(max(de_direccion), 0) + 1
from cobis..cl_direccion_email
where de_ente = 2650790
go


insert into cobis..cl_direccion_email (de_ente, de_direccion, de_tipo, de_descripcion)
values (2650790, 1, 'E', 'oquisnaa@bolivariano.com')
go



--- CORREO 
update cobis..cl_direccion_email
set de_descripcion = 'oquisnaa@bolivariano.com'
where de_ente = 2280059
  and de_tipo = 'E'


----ACTUALIZAR SALDO 
update cob_cuentas..cc_ctacte
set cc_disponible= 500
where cc_cta_banco   = '0945045751'

update cob_ahorros..ah_cuenta  set ah_disponible= 500
where ah_cta_banco   = '0001245077'
 


--actualizar proceso TD
update cob_atm..tm_tarjeta
set ta_estado_tarjeta = 'B'
where ta_tarjeta = 1242543
  and ta_cliente = 2498640        
  and ta_estado_tarjeta = 'T'
  and ta_principal = 0
go

select @@rowcount as filas_actualizadas
go

select ta_tarjeta,
       ta_cliente,
       ta_estado_tarjeta,
       ta_motivo,
       ta_principal
from cob_atm..tm_tarjeta
where ta_tarjeta = 1242543
go

---Consulta
select ta_tarjeta,
       ta_cliente,
       ta_estado_tarjeta,
       ta_motivo,
       ta_solicitud,
       ta_principal,
       ta_estado_inv,
       ta_producto_emisor
from cob_atm..tm_tarjeta
where ta_cliente = 2280055
go

-----PARA VER LA TARJETA A CUAL PERTENCE


select * from tm_tarjeta where ta_codigo='4753950007665729'


