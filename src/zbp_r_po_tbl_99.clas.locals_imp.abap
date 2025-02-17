CLASS LHC_ZR_PO_TBL_99 DEFINITION INHERITING FROM CL_ABAP_BEHAVIOR_HANDLER.
  PRIVATE SECTION.
    METHODS:
      GET_GLOBAL_AUTHORIZATIONS FOR GLOBAL AUTHORIZATION
        IMPORTING
           REQUEST requested_authorizations FOR ZrPoTbl99
        RESULT result,
      Release FOR MODIFY
            IMPORTING keys FOR ACTION ZrPoTbl99~Release RESULT result.
ENDCLASS.

CLASS LHC_ZR_PO_TBL_99 IMPLEMENTATION.
  METHOD GET_GLOBAL_AUTHORIZATIONS.
  ENDMETHOD.
  METHOD Release.
*    LOOP AT keys ASSIGNING FIELD-SYMBOL(<fs_key>).
*
*      IF <fs_key>-%param-Reason is INITIAL.
*
*        APPEND VALUE #( %tky                = <fs_key>-%tky ) TO r_failed.
*
*        APPEND VALUE #( %tky                = <fs_key>-%tky
*                        %msg                = new_message(  id       = 'ZRK_CM_DOC'
*                                                            number   = '001' " Document cannot be extended into the past
*                                                            severity = if_abap_behv_message=>severity-error )
*                        %element-ValidTo = if_abap_behv=>mk-on ) TO reported-.
*
*        DELETE lt_keys.
*
*
*      ELSE.
*        DATA(lv_new_valid_to) = <fs_key>-%param-extend_till.
*      ENDIF.
*
*    ENDLOOP.
  ENDMETHOD.

ENDCLASS.
