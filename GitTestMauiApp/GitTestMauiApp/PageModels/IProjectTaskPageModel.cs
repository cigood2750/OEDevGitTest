using CommunityToolkit.Mvvm.Input;
using GitTestMauiApp.Models;

namespace GitTestMauiApp.PageModels
{
    public interface IProjectTaskPageModel
    {
        IAsyncRelayCommand<ProjectTask> NavigateToTaskCommand { get; }
        bool IsBusy { get; }
    }
}