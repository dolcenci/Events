using EventEaseb.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace EventEaseb.Controllers
{
    public class VenueController : Controller
    {
        private readonly ApplicationDbContext _context;
        public VenueController(ApplicationDbContext context) { _context = context; }
        public async Task<IActionResult> Index()
        {
            var events = await _context.Venues.ToListAsync();
            return View(events);
        }
    }
}
