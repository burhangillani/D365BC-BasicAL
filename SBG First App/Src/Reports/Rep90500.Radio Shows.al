report 90500 "SBG Radio Shows"
{
    DefaultLayout = RDLC;
    RDLCLayout = '.\Src\Reports\Layouts\RadioShows.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem("SBG Radio Show"; "SBG Radio Show")
        {
            column(No_; "No.")
            {
            }
            column(Radio_Show_Type; "Radio Show Type")
            {
            }
            column(Name; Name)
            {
            }
            column(Run_Time; "Run Time")
            {
            }
            column(Host_Code; "Host Code")
            {
            }
            column(Host_Name; "Host Name")
            {
            }
            column(Average_Listners; "Average Listners")
            {
            }
            column(Audience_Share; "Audience Share")
            {
            }
            column(Advertising_Revenue; "Advertising Revenue")
            {
            }
            column(Royalty_Cost; "Royalty Cost")
            {
            }
        }
    }
}