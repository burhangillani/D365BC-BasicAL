codeunit 90541 "SBG Reset Cred. Limit"
{
    trigger OnRun()
    begin
        Top10Cust.SETFILTER(Top10Cust.Sum_Amount__LCY, '>%1', 0);
        Top10Cust.Open();
        while Top10Cust.Read() do begin
            Cust.get(Top10Cust.No_);
            CustTemp := Cust;
            CustTemp.Insert();
        end;
        Top10Cust.Close();

        if Page.RunModal(Page::"Customer List", CustTemp) = Action::LookupOK then
            ConfirmReset();
    end;

    procedure ResetCreditLimit()
    begin
        if CustTemp.FindSet() then
            repeat
                Cust.Get(CustTemp."No.");
                Cust."Credit Limit (LCY)" := 0;
                Cust.Modify();
            until CustTemp.Next = 0;
        Message(Text002);
    end;

    procedure ConfirmReset()
    begin
        if Confirm(Text001, false, Cust.FieldCaption("Credit Limit (LCY)"), 0) then
            ResetCreditLimit();
    end;

    var
        Top10Cust: Query "SBG Top 10 Customer Revenue";
        Cust: Record Customer;
        CustTemp: Record Customer temporary;
        Text001: TextConst ENU = 'Do you want to reset the %1 to %1 for these customers?';
        Text002: TextConst ENU = 'Action Completed Successfully.';
}