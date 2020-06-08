query 90560 "SBG Cust. Ledg. Entry Sales"
{
    QueryType = Normal;

    elements
    {
        dataitem(Cust__Ledger_Entry; "Cust. Ledger Entry")
        {
            column(Sum_Sales__LCY_; "Sales (LCY)")
            {
                Method = Sum;
            }
            filter(Document_Type; "Document Type")
            {

            }
            filter(Posting_Date; "Posting Date")
            {

            }
        }
    }
}