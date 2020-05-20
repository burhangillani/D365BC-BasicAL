codeunit 90541 "SBG Reset Cred. Limit"
{
    trigger OnRun()
    begin
        //Top10Cust.SETFILTER(Sum_Amount_LCY,'>%1',0);
    end;

    var
        Top10Cust: Query "SBG Top 10 Customer Revenue";
        Cust: Record Customer;
        CustTemp: Record Customer temporary;
        Text001: Label 'Do you want to reset the %1 to %1 for these customers?';
        Text002: Label 'Action Completed Successfully.';
}