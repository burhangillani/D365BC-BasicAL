codeunit 90543 "SBG My Navigate Mngt"
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Page, Page::Navigate, 'OnAfterNavigateFindRecords', '', true, true)]
    local procedure MyOnAfterNavigateFindRecords(var DocumentEntry: Record "Document Entry"; DocNoFilter: Text; PostingDateFilter: Text);
    begin
        if SalesHeader.ReadPermission then begin
            SalesHeader.Reset();
            SalesHeader.SetCurrentKey("No.", "Posting Date");
            SalesHeader.SetFilter("No.", DocNoFilter);
            SalesHeader.SetFilter("Posting Date", PostingDateFilter);

            if SalesHeader.Count = 0 then
                exit;
            DocumentEntry.Init();
            DocumentEntry."Entry No." := DocumentEntry."Entry No." + 1;
            DocumentEntry."Table ID" := 36;
            DocumentEntry."Document Type" := DocumentEntry."Document Type"::Order;
            DocumentEntry."Table Name" := CopyStr(SalesHeader.TableCaption, 1, MaxStrLen(DocumentEntry."Table Name"));
            DocumentEntry."No. of Records" := SalesHeader.Count;
            DocumentEntry.Insert();
        end;
    end;

    [EventSubscriber(ObjectType::Page, Page::Navigate, 'OnAfterNavigateShowRecords', '', true, true)]
    local procedure MyOnAfterNavigateShowRecords(DocNoFilter: Text; TableID: Integer; PostingDateFilter: Text; ItemTrackingSearch: Boolean)
    begin
        if TableID = Database::"Sales Header" then begin
            if SalesHeader.Count = 1 then
                Page.Run(Page::"Sales Order", SalesHeader)
            else
                Page.Run(0, SalesHeader);
        end;
    end;


    var
        SalesHeader: Record "Sales Header";
}