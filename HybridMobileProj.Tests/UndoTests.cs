using HybridMobileProj.Client.Stores.Undo;
using FluentAssertions;

namespace HybridMobileProj.Tests
{
    public class UndoTests
    {
        [Fact]
        public void Undo_Pop_Should_Return_Blank_When_Pointer_0()
        {
            // Arrange
            UndoStack Undo = UndoStack.Instance();
            Undo.Pointer = 0;

            // Act
            var result = Undo.Pop();

            // Assert
            result.Should().Be("");
        }

        [Fact]
        public void Undo_Singleton_Only_Allow_Single_Instance()
        {
            // Arrange
            var Undo = UndoStack.Instance(1);

            // Act
            var Undo2 = UndoStack.Instance(2);

            // Assert
            Undo2.Id.Should().Be(1);
        }
    }
}