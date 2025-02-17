@EndUserText.label: 'Abstract CDS for Demo Actions'
define abstract entity ZA_PO_PARAMS_99
 // with parameters parameter_name : parameter_type
{
    
    @UI.hidden:true
    @UI.defaultValue: #( 'ELEMENT_OF_REFERENCED_ENTITY: HideAdditionalParams' )
    HideAdditionalParameters: abap_boolean;
    
    @EndUserText.label: 'Reference Number'
    @UI.hidden: #(HideAdditionalParameters)
    ReferenceNumber: abap.char(10);
    
    @EndUserText.label: 'Remarks'
    @UI.multiLineText : true
    Reason: abap.char(100);
    
}
