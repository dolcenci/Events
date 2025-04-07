namespace EventEaseb.Models
{
    public class Booking
    {
        public int Id { get; set; }
        public int Event_Id { get; set; }
        public int Venue_Id { get; set; }
        public DateOnly BookingDate { get; set; }
        //public string Address { get; set; }
        //public DateOnly Booking_Date { get; set; }
        //public int Phone_Num { get; set; }
        //public string Email { get; set; }
    }
}
