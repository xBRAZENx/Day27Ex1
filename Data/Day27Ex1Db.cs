using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using WebAppDay27Ex1.Models;

namespace WebAppDay27Ex1.Data
{
    public class Day27Ex1Db : DbContext
    {
        public Day27Ex1Db (DbContextOptions<Day27Ex1Db> options)
            : base(options)
        {
        }

        public DbSet<WebAppDay27Ex1.Models.Course> Course { get; set; } = default!;
    }
}
