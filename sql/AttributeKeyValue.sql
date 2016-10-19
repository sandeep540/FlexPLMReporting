select * from wcprod.FlexTypeAttribute where idA3A4 in (
select idA2A2 from wcprod.FlexType where typeName like 'Product' and 
typeClass like 'com.lcs.wc.product.LCSProduct' ) and idA3G4 <> 0 and 
attHidden = 0 and attKey like 'ch%' and attVariableType like 'choice' and
idA3G4 in (select idA2A2 from wcprod.AttributeValueList)


select attKey, attDisplay, attObjectLevel, attScope from wcprod.FlexTypeAttribute where  idA3G4 <> 0 and 
attHidden = 0 and attKey like 'ch%' and attVariableType like 'choice' and
idA3G4 in (select idA2A2 from wcprod.AttributeValueList) ;

select * from wcprod.AttributeValueList

select A.idA2A2, A.attKey, A.attDisplay, A.attObjectLevel, A.attScope, B.typeClass, B.typeName from 
wcprod.FlexTypeAttribute A, wcprod.FlexType B where  idA3G4 <> 0 and 
attHidden = 0 and attKey like 'ch%' and attVariableType like 'choice' and A.idA3A4 = B.idA2A2 and 
A.idA3G4 in (select idA2A2 from wcprod.AttributeValueList) and A.attKey like 'chEndUse';


select * from wcprod.AttributeValueList

select * from wcprod.AttributeValueStore where valueKey like 'ch%'

select * from wcprod.AttributeValueTree

select a.att1, a.att21 , a.att28 from wcprod.LCSProduct a where a.latestiterationInfo = 1
and a.versionIdA2versionInfo = 'A'

select a.att1, a.att21 , a.att28, b.display from wcprod.LCSProduct a 
 right join wcprod.AttributeValueStore b on a.att28 = b.valueKey
where a.latestiterationInfo = 1
and a.versionIdA2versionInfo = 'A'

select A.idA2A2, A.attKey, A.attDisplay, A.attObjectLevel, A.attScope, B.typeClass, B.typeName from 
wcprod.FlexTypeAttribute A, wcprod.FlexType B where  idA3G4 <> 0 and 
attHidden = 0 and attKey like 'ch%' and attVariableType like 'choice' and A.idA3A4 = B.idA2A2 and 
A.idA3G4 in (select idA2A2 from wcprod.AttributeValueList) and A.attKey like 'chEndUse';

drop table  wcprod.#TempkeyValue

select A.idA2A2, A.idA3G4, A.attKey, A.attDisplay, A.attObjectLevel, A.attScope, B.typeClass, B.typeName into wcprod.#TempkeyValue from 
wcprod.FlexTypeAttribute A, wcprod.FlexType B where  idA3G4 <> 0 and 
attHidden = 0 and attKey like 'ch%' and attVariableType like 'choice' and A.idA3A4 = B.idA2A2 and 
A.idA3G4 in (select idA2A2 from wcprod.AttributeValueList) 

select * from wcprod.#TempkeyValue

select A.*, B.valueKey, B.display from wcprod.#TempkeyValue A right join wcprod.AttributeValueStore B on A.idA3G4 = B.idA3A4 and A.attKey like 'chEndUse';


select X.*, Y.valueKey, Y.display from (select A.idA2A2, A.idA3G4, A.attKey, A.attDisplay, A.attObjectLevel, A.attScope, B.typeClass, B.typeName from 
wcprod.FlexTypeAttribute A, wcprod.FlexType B where  idA3G4 <> 0 and 
attHidden = 0 and attVariableType like 'choice' and A.idA3A4 = B.idA2A2 and 
A.idA3G4 in (select idA2A2 from wcprod.AttributeValueList) X join wcprod.AttributeValueStore Y on X.idA3G4 = Y.idA3A4

select X.*, Y.valueKey, Y.display from (select A.idA2A2, A.idA3G4, A.attKey, A.attDisplay, A.attObjectLevel, A.attScope, B.typeClass, B.typeName from 
wcprod.FlexTypeAttribute A, wcprod.FlexType B where  idA3G4 <> 0 and 
attHidden = 0 and attVariableType like 'choice' and A.idA3A4 = B.idA2A2 and 
A.idA3G4 in (select idA2A2 from wcprod.AttributeValueList)) X join wcprod.AttributeValueStore Y on X.idA3G4 = Y.idA3A4 and
attKey like 'chConsumerCollection'














