codeunit 90521 "SBG Update Customer Overview"
{
    trigger OnRun()
    begin
        Clear(SourceCode);
        Clear(CustomerOverview);
        Clear(GLEntry);

        if CustomerOverview.FindLast then
            NextEntryNo := CustomerOverview."Entry No." + 1
        else
            NextEntryNo := 1;

        if SourceCode.FindSet then
            repeat
                if Customer.FindSet then
                    repeat
                        GLEntry.SetRange("Source Type", GLEntry."Source Type"::Customer);
                        GLEntry.SetRange("Source Code", SourceCode.Code);
                        GLEntry.SetRange("Source No.", Customer."No.");
                        IF GLEntry.FINDSET THEN BEGIN
                            GLEntry.CALCSUMS(GLEntry.Amount);
                            CustomerOverview."Entry No." := NextEntryNo;
                            CustomerOverview."Customer No." := Customer."No.";
                            CustomerOverview."Customer Name" := Customer.Name;
                            CustomerOverview."Source Code" := SourceCode.Code;
                            CustomerOverview.Amount := GLEntry.Amount;
                            CustomerOverview.LastRunDate := CURRENTDATETIME;
                            CustomerOverview.INSERT;
                            NextEntryNo += 1;
                        END;
                    UNTIL Customer.NEXT = 0;
            UNTIL SourceCode.NEXT = 0;
    end;

    var
        CustomerOverview: Record "SBG Customer Overview";
        Customer: Record Customer;
        SourceCode: Record "Source Code";
        GLEntry: Record "G/L Entry";
        NextEntryNo: Integer;
}