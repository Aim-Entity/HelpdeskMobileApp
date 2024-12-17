using Application.Property;
using Domain.Enums;
using FluentAssertions;
using HybridMobileProj.Client.Stores.Users;
using Infrastructure.InMemory.Plugins;


namespace HybridMobileProj.Tests
{
    public class PropertyServiceTests
    {
        [Fact]
        public async Task PropertyService_Should_Generate_3_Properties_Inititally()
        {
            // Arrange
            PropertyRepository repository = new PropertyRepository();
            PropertyService service = new PropertyService(repository);
            var properties = await service.GetAllPropertiesAsync();

            // Act
            var result = properties.ToList();

            // Assert
            result.Should().HaveCount(3);
        }
    }
}
