table 90524 "SBG Document Header"
{

    fields
    {
        field(1; "No."; Code[20])
        {
            trigger OnValidate()
            begin
                if "No." <> xRec."No." then begin
                    ExampleSetup.Get();
                    NoSeriesManagement.TestManual(ExampleSetup."Document Nos.");
                    "No. Series" := '';
                end;
            end;
        }
        field(2; "Document Date"; Date)
        {

        }
        field(3; "No. Series"; Code[20])
        {

        }
        field(10; "Posting Date"; Date)
        {
            CaptionML = ENU = 'Posting Date';
        }
        field(13; "No. Printed"; Integer)
        {
            CaptionML = ENU = 'No. Printed';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    var
        ExampleSetup: Record "SBG Example Setup";
        NoSeriesManagement: Codeunit 396;
        DocumentHeader: Record "SBG Document Header";
        DocumentLine: Record "SBG Document Line";

    trigger OnInsert()
    begin
        if "No." = '' then begin
            ExampleSetup.Get();
            ExampleSetup.TestField("Document Nos.");
            NoSeriesManagement.InitSeries(ExampleSetup."Document Nos.", xRec."No. Series", 0D, "No.", "No. Series");
        end;
        InitRecord();
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

    procedure AssistEdit(OldDocumentHeader: Record "SBG Document Header"): Boolean;
    var
        DocumentHeader: Record "SBG Document Header";
    begin
        with DocumentHeader do begin
            DocumentHeader := Rec;
            ExampleSetup.Get();
            ExampleSetup.TestField("Document Nos.");
            if NoSeriesManagement.SelectSeries(ExampleSetup."Document Nos.", OldDocumentHeader."No. Series", "No. Series") then begin
                NoSeriesManagement.SetSeries("No.");
                Rec := DocumentHeader;
                exit(true);
            end;
        end;
    end;

    procedure InitRecord()
    begin
        if "Posting Date" = 0D then
            "Posting Date" := WorkDate;
        "Document Date" := WorkDate;
        ExampleSetup.Get();
    end;
}