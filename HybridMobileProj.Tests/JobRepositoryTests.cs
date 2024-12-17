using Application.Property;
using Domain.Entities.Job;
using FluentAssertions;
using Infrastructure.InMemory.Plugins;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HybridMobileProj.Tests
{
    public class JobRepositoryTests
    {
        [Fact]
        public async Task QuoteRepository_Update_Should_Update_Original_Quote()
        {
            // Arrange
            QuoteRepository repository = new QuoteRepository();
            var newQuote = await repository.InsertNewQuoteAsync(new Quote { DetailsOfRepair = "Foo" });
            newQuote.DetailsOfRepair = "New Foo";


            // Act
            var updatedQuote = await repository.UpdateQuoteAsync(newQuote);
            var result = updatedQuote;
            // Assert
            result.DetailsOfRepair.Should().Be(newQuote.DetailsOfRepair);
        }

        [Fact]
        public async Task RequestRepository_Update_Should_Update_Original_Quote()
        {
            // Arrange
            RequestRepository repository = new RequestRepository();
            var newRequest = await repository.InsertNewRequestAsync(new Request { DetailsOfRepair = "Foo" });
            newRequest.DetailsOfRepair = "New Foo";

            // Act
            var updatedRequest = await repository.UpdateRequestAsync(newRequest);
            var result = updatedRequest;

            // Assert
            result.DetailsOfRepair.Should().Be(newRequest.DetailsOfRepair);
        }
    }
}
