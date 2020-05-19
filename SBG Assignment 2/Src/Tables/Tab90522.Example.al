table 90522 "Example"
{
    DrillDownPageId = "SBG Example List";
    LookupPageId = "SBG Example List";

    fields
    {
        field(1; "No."; code[20])
        {
            trigger OnValidate()
            begin
                if "No." <> xRec."No." then begin
                    ExampleSetup.Get();
                    NoSeriesManagement.TestManual(ExampleSetup."Example Nos.");
                    "No. Series" := '';
                end;
            end;
        }
        field(2; Description; Text[50])
        {
        }
        field(3; "Example Type Code"; Code[20])
        {
            TableRelation = "SBG Example Type";
        }
        field(4; "No. Series"; Code[20])
        {
        }

    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        if "No." = '' then begin
            ExampleSetup.Get();
            ExampleSetup.TestField("Example Nos.");
            NoSeriesManagement.InitSeries(ExampleSetup."Example Nos.", xRec."No. Series", 0D, "No.", "No. Series");

        end;
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

    var
        NoSeriesManagement: Codeunit NoSeriesManagement;
        ExampleSetup: Record "SBG Example Setup";

    procedure AssistEdit(OldExample: Record Example): Boolean;
    var
        Example: Record Example;
    begin
        with Example do begin
            Example := Rec;
            ExampleSetup.Get();
            ExampleSetup.TestField("Example Nos.");
            if NoSeriesManagement.SelectSeries(ExampleSetup."Example Nos.", OldExample."No. Series", "No. Series") then begin
                NoSeriesManagement.SetSeries("No.");
                Rec := Example;
                exit(true);
            end;
        end;
    end;
}