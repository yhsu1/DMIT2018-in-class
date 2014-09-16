using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eRestaurant.NewFolder2
{
    public class RestaurantAdminController
    {
        #region Manage Waiters
        #region Command
        public int AddWaiter (Waiter item)
        {
            throw new NotImplementedException();
        }

        public void UpdateWaiter(Waiter item)
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
    }
}
