import SwiftUI


struct RemindersListView: View {
  @StateObject
  private var viewModel = RemindersListViewModel()


  @State
  private var isAddReminderDialogPresented = false


  private func presentAddReminderView() {
    isAddReminderDialogPresented.toggle()
  }


  var body: some View {
    List($viewModel.reminders) { $reminder in
      RemindersListRowView(reminder: $reminder)
    }
    .toolbar {
      ToolbarItemGroup(placement: .bottomBar) {
        Button(action: presentAddReminderView) {
          HStack {
            Image(systemName: "plus.circle.fill")
            Text("New Reminder")
          }
        }
        Spacer()
      }
    }
    .sheet(isPresented: $isAddReminderDialogPresented) {
      AddReminderView { reminder in
        viewModel.addReminder(reminder)
      }
    }
    .tint(.green)
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationStack {
      RemindersListView()
        .navigationTitle("Reminders")
    }
  }
}
