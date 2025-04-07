namespace EventEaseb.Models
{
    public class Event
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateOnly Start_Date { get; set; }
        public DateOnly End_Date { get; set; }
        public string Description { get; set; }
        public string ImageUrl { get; set; }
        public List<Booking> Bookings { get; set; }
    }
}
