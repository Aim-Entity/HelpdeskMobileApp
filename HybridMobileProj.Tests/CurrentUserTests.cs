using HybridMobileProj.Client.Stores.Users;
using FluentAssertions;
using Domain.Entities.User;
using Domain.Enums;
using HybridMobileProj.Client.Stores.Undo;

namespace HybridMobileProj.Tests
{
    public class CurrentUserTests
    {
        [Fact]
        public void Initital_Logged_In_User_Is_Property_Manger()
        {
            // Arrange
            CurrentUserSingleton CurrentUser = CurrentUserSingleton.Instance(1);

            // Act
            var result = CurrentUser.User;

            // Assert
            result.Should().Be(UserEnum.PropertyManager);
        }

        [Fact]
        public void CurrentUser_Singleton_Only_Allow_Single_Instance()
        {
            // Arrange
            CurrentUserSingleton CurrentUser = CurrentUserSingleton.Instance(1);

            // Act
            CurrentUserSingleton CurrentUser2 = CurrentUserSingleton.Instance(2);


            // Assert
            CurrentUser2.Id.Should().Be(1);
        }
    }
}
