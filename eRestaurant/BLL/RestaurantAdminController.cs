using eRestaurant.DAL;
using eRestaurant.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eRestaurant.BLL
{
    public class RestaurantAdminController
    {
        #region Manage Waiters
        #region Command
        public int AddWaiter(Waiter item)
        {
            using (RestaurantContext context = new RestaurantContext())
            {
                // TODO: Validation of waiter data ...
                var added = context.Waiters.Add(item);
                context.SaveChanges();
                return added.WaiterID;
            }
        }

        public void UpdateWaiter(Waiter item)
        {
            using (RestaurantContext context = new RestaurantContext())
            {
                // TODO: Validation
                var attached = context.Waiters.Attach(item);
                var matchingWithExistingValues = context.Entry<Waiter>(attached);
                matchingWithExistingValues.State = System.Data.Entity.EntityState.Modified;
                context.SaveChanges();
            }
        }

        public void DeleteWaiter(Waiter item) 
        {
        }
        #endregion

        #region Query
        public List<Waiter> ListAllWaiters()
        {
            throw new NotImplementedException();
        }

        public Waiter GetWaiter(int waiterId)
        {
            throw new NotImplementedException();
        }
        #endregion
        #endregion

        #region Manage Tables
        #region Command
        public int AddTable(Table item)
        {
            throw new NotImplementedException();
        }

        public void UpdateTable(Table item)
        {

        }

        public void DeleteTable(Table item)
        {

        }

        #endregion
        #region Query
        public List<Table> ListAllTables()
        {
            throw new NotImplementedException();
        }

        public Table GetTable(int tableId)
        {
            throw new NotImplementedException();
        }
        #endregion
        #endregion

        #region Manage Items
        #region Command
        public int AddItem(Item item)
        {
            throw new NotImplementedException();
        }

        public void UpdateItem(Item item)
        {

        }

        public void DeleteItem(Item item)
        {

        }
        #endregion
        #region Query
        public List<Item> ListAllItems()
        {
            throw new NotImplementedException();
        }

        public Item GetItem(int itemId)
        {
            throw new NotImplementedException();
        }
        #endregion
        #endregion

        #region Manage Special Events
        #region Command
        public string AddSpecialEvent(SpecialEvent item)
        {
            throw new NotImplementedException();
        }

        public void UpdateItem(SpecialEvent item)
        {

        }

        public void DeleteItem(SpecialEvent item)
        {

        }
        #endregion
        #region Query
        public List<SpecialEvent> ListAllSpecialEvents()
        {
            throw new NotImplementedException();
        }

        public SpecialEvent GetSpecialEvents(string eventCode)
        {
            throw new NotImplementedException();
        }
        #endregion
        #endregion
    }
}
