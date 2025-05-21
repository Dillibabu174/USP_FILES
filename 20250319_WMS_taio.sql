
4547611757917
8720705998786
-------- 1nd SKU -------
-------- 1nd SKU -------
--4547611757917
select
	*
From
	roec.T_DAY_SOUKO_SKU_ZAIKO_TYPE_SET tdsszts
where
	SKU_CD = '4547611757917'
	and SOUKO_CD = '8513'
	and ZAIKO_TYPE = '12'

------------ Check Is any order pending which is till not shipped -------

select
	ORDER_NUMBER ,
	SKU_CD ,
	DATA_ACCEPT_DATE ,
	INSPECTION_START_FLAG ,
	SHIPMENT_FINISH_FLAG ,
	SHORI_ZUMI_FLAG ,
	DELIVERY_STATUS,
	DATA_CREATION_DATE
from
	roec.T_DAY_MARUNI_ORDER_DETAILS tdmod
where
	SKU_CD = '4547611757917' and SHIPMENT_FINISH_FLAG = '0' and DELIVERY_STATUS != '9'
order by
	DATA_CREATION_DATE

----- check haiso subetsu if orders are preset for same SKU --
/*
 select
	ORDER_NUMBER ,
	SKU_CD ,
	DATA_ACCEPT_DATE ,
	SHORI_ZUMI_FLAG , ORDER_QUANTITY ,
	DELIVERY_STATUS,HAISOU_SUBETSU ,CUSTOMER_SHIPMENT_WAREHOUSE
from
	roec.T_DAY_MARUNI_PICKING_DATA tdmpd 
where
	SKU_CD = '4547611757917' and ORDER_NUMBER in ('202412080037500' d)

*/
-----------------------------------

select
	tdmod.ORDER_NUMBER,
	tdmod.ORDER_ACCEPTED_DATE ,
	tdmod.SKU_CD ,
	tdmod.ORDER_QUANTITY ,
	tdmod.SHIPMENT_FINISH_FLAG ,
	tdmpd.HAISOU_SUBETSU
From
	roec.T_DAY_MARUNI_ORDER_DETAILS tdmod
inner join roec.T_DAY_MARUNI_PICKING_DATA tdmpd on
	tdmod.ORDER_NUMBER = tdmpd.ORDER_NUMBER
	and tdmod.SKU_CD = tdmpd.SKU_CD
where
	tdmod.SKU_CD = '4547611757917' and tdmpd.HAISOU_SUBETSU = '851300'
order by
	tdmod.ORDER_ACCEPTED_DATE desc

------- value is 1 -----------
update
	roec.T_DAY_SOUKO_SKU_ZAIKO_TYPE_SET
set
	ZAIKO_SU = 0
where
	SKU_CD = '4547611757917'
	and SOUKO_CD = '8513'
	and ZAIKO_TYPE = '12'

select
	*
From
	roec.T_DAY_SOUKO_SKU_ZAIKO_TYPE_SET tdsszts
where
	SKU_CD = '4547611757917'
	and SOUKO_CD = '8513'
	and ZAIKO_TYPE = '12'

-------- 2nd SKU -------
-------- 2nd SKU -------
--8720705998786



select
	*
From
	roec.T_DAY_SOUKO_SKU_ZAIKO_TYPE_SET tdsszts
where
	SKU_CD = '8720705998786'
	and SOUKO_CD = '8513'
	and ZAIKO_TYPE = '12'

------------ Check Is any order pending which is till not shipped -------

select
	ORDER_NUMBER ,
	SKU_CD ,
	DATA_ACCEPT_DATE ,
	INSPECTION_START_FLAG ,
	SHIPMENT_FINISH_FLAG ,
	SHORI_ZUMI_FLAG ,
	DELIVERY_STATUS,
	DATA_CREATION_DATE
from
	roec.T_DAY_MARUNI_ORDER_DETAILS tdmod
where
	SKU_CD = '8720705998786' and SHIPMENT_FINISH_FLAG = '0' and DELIVERY_STATUS != '9'
order by
	DATA_CREATION_DATE

----- check haiso subetsu if orders are preset for same SKU --
/*
 select
	ORDER_NUMBER ,
	SKU_CD ,
	DATA_ACCEPT_DATE ,
	SHORI_ZUMI_FLAG , ORDER_QUANTITY ,
	DELIVERY_STATUS,HAISOU_SUBETSU ,CUSTOMER_SHIPMENT_WAREHOUSE
from
	roec.T_DAY_MARUNI_PICKING_DATA tdmpd 
where
	SKU_CD = '8720705998786' and ORDER_NUMBER in ('202412080037500' d)

*/
-----------------------------------

select
	tdmod.ORDER_NUMBER,
	tdmod.ORDER_ACCEPTED_DATE ,
	tdmod.SKU_CD ,
	tdmod.ORDER_QUANTITY ,
	tdmod.SHIPMENT_FINISH_FLAG ,
	tdmpd.HAISOU_SUBETSU
From
	roec.T_DAY_MARUNI_ORDER_DETAILS tdmod
inner join roec.T_DAY_MARUNI_PICKING_DATA tdmpd on
	tdmod.ORDER_NUMBER = tdmpd.ORDER_NUMBER
	and tdmod.SKU_CD = tdmpd.SKU_CD
where
	tdmod.SKU_CD = '8720705998786' and tdmpd.HAISOU_SUBETSU = '851300'
order by
	tdmod.ORDER_ACCEPTED_DATE desc

------- value is 1 -----------
update
	roec.T_DAY_SOUKO_SKU_ZAIKO_TYPE_SET
set
	ZAIKO_SU = 0
where
	SKU_CD = '8720705998786'
	and SOUKO_CD = '8513'
	and ZAIKO_TYPE = '12'

select
	*
From
	roec.T_DAY_SOUKO_SKU_ZAIKO_TYPE_SET tdsszts
where
	SKU_CD = '8720705998786'
	and SOUKO_CD = '8513'
	and ZAIKO_TYPE = '12'

	