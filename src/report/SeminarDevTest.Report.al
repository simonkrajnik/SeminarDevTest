report 50100 "Seminar-DevTest"
{
    ApplicationArea = All;
    Caption = 'Seminar';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './src/reportlayout/Seminar.rdlc';
    PreviewMode = PrintLayout;
    dataset
    {
        dataitem(SeminarDevTest; "Seminar-DevTest")
        {
            column(CompanyName; COMPANYPROPERTY.DisplayName())
            {
            }
            column(ReportCaption; ReportCaptionLbl)
            {
            }
            column(PageCaption; PageCaptionLbl)
            {
            }
            column(No; "No.")
            {
                IncludeCaption = true;
            }
            column(Description; Description)
            {
                IncludeCaption = true;
            }
            column(BeginDate; format("Begin Date"))
            {
            }
            column(BeginDateCaption; FieldCaption("Begin Date"))
            {
            }
            column(EndDate; format("End Date", 0, '<Day,2>.<Month,2>.<Year,2>'))
            {
            }
            column(EndDateCaption; FieldCaption("End Date"))
            {
            }
            column(Duration; "Duration")
            {
                IncludeCaption = true;
            }
            column(Organizer; Organizer)
            {
                IncludeCaption = true;
            }
            column(OrganizerName; "Organizer Name")
            {
                IncludeCaption = true;
            }
            column(SeminarPrice; "Seminar Price")
            {
                IncludeCaption = true;
            }
            column(MinNoofParticipants; "Min No. of Participants")
            {
                IncludeCaption = true;
            }
            column(MaxNoofParticipants; "Max No. of Participants")
            {
                IncludeCaption = true;
            }
            column(LastModifiedby; "Last Modified by")
            {
                IncludeCaption = true;
            }
        }
    }
    var
        PageCaptionLbl: Label 'Page';
        ReportCaptionLbl: Label 'Seminar Report';
}
