pageextension 90520 "SBG Credit Limit Ext" extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter("F&unctions")
        {
            action(UpdateCreditLimit)
            {
                Caption = 'Update Credit Limit';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = CalculateCost;
                trigger OnAction()
                begin
                    CallUpdateCreditLimit();
                end;
            }
        }
    }

    local procedure CallUpdateCreditLimit()
    var
        CreditLimitCalculated: Decimal;
        CreditLimitActual: Decimal;
    begin
        CreditLimitCalculated := Rec.CalculateCreditLimit();
        if CreditLimitCalculated = Rec."Credit Limit (LCY)" then begin
            Message(Text90522);
            exit;
        end;

        if GuiAllowed and not Confirm(Text90520, false, FieldCaption("Credit Limit (LCY)"), CreditLimitCalculated) then
            exit;

        CreditLimitActual := CreditLimitCalculated;
        Rec.UpdateCreditLimit(CreditLimitActual);
        if CreditLimitActual <> CreditLimitCalculated then
            Message(Text90521, CreditLimitActual);
    end;

    var
        Text90520: Label 'Are you sure that you want to set the %1 to %1?';
        Text90521: Label 'The credit limit was rounded to %1 to comply with company policies';
        Text90522: Label 'The Credit limit is up-to-date.';

}