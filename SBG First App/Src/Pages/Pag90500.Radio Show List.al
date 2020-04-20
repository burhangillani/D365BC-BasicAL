page 90500 "EIE Radio Show List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "EIE Radio Show";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; "No.") { ApplicationArea = Basic; }
                field("Radio Show Type"; "Radio Show Type") { ApplicationArea = Basic; }
                field(Name; Name) { ApplicationArea = Basic; }
                field("Run Time"; "Run Time") { ApplicationArea = Basic; }
                field("Host Code"; "Host Code") { ApplicationArea = Basic; }
                field("Host Name"; "Host Name") { ApplicationArea = Basic; }
                field("Average Listners"; "Average Listners") { ApplicationArea = Basic; }
                field("Audience Share"; "Audience Share") { ApplicationArea = Basic; }
                field("Advertising Revenue"; "Advertising Revenue") { ApplicationArea = Basic; }
                field("Royalty Cost"; "Royalty Cost") { ApplicationArea = Basic; }
            }
        }
    }
}