codeunit 90542 "SBG Sales Post Mngt."
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterCheckSalesDoc', '', true, true)]
    local procedure MyProcedure(CommitIsSuppressed: Boolean; var SalesHeader: Record "Sales Header")
    begin
        SalesHeader.TestField("My New Field");
    end;


}