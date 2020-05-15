pageextension 90530 "SBG Customer Card Ext" extends "Customer Card"
{
    layout
    {
        modify(Address)
        {
            trigger OnBeforeValidate()
            var
                Publisher: Codeunit "SBG My Publisher";
            begin
                Publisher.OnAddressLineChanged(Address);
            end;
        }
    }



}