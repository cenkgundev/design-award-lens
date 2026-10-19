import SwiftUI

struct HabitDashboardView: View {
    @State private var habits: [Habit] = Habit.samples
    @State private var selectedTab = 0

    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(red: 0.45, green: 0.3, blue: 0.95), Color(red: 0.2, green: 0.5, blue: 1.0)],
                           startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("✨ Welcome Back! ✨")
                    .font(.system(size: 32, weight: .bold))
                    .foregroundColor(.white)
                    .padding(.top, 60)

                Text("Let's crush your goals today 🚀")
                    .font(.system(size: 16))
                    .foregroundColor(.white.opacity(0.8))

                ScrollView {
                    VStack(spacing: 16) {
                        ForEach(habits) { habit in
                            VStack(alignment: .center, spacing: 12) {
                                Text(habit.emoji)
                                    .font(.system(size: 40))
                                Text(habit.name)
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundColor(.white)
                                VStack {
                                    Text("\(habit.streak) day streak 🔥")
                                        .font(.system(size: 14))
                                        .foregroundColor(.white)
                                }
                                .padding()
                                .background(Color.white.opacity(0.2))
                                .cornerRadius(16)
                                .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 5)

                                Button(action: { toggle(habit) }) {
                                    Text(habit.doneToday ? "Done ✅" : "Mark Complete")
                                        .font(.system(size: 16, weight: .bold))
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity)
                                        .padding()
                                        .background(LinearGradient(colors: [.pink, .purple], startPoint: .leading, endPoint: .trailing))
                                        .cornerRadius(25)
                                }
                            }
                            .padding(24)
                            .background(Color.white.opacity(0.15))
                            .cornerRadius(24)
                            .shadow(color: .black.opacity(0.25), radius: 20, x: 0, y: 10)
                            .padding(.horizontal)
                        }
                    }
                }

                HStack {
                    ForEach(0..<3) { i in
                        Button(action: { selectedTab = i }) {
                            Text(["🏠", "📊", "⚙️"][i])
                                .font(.system(size: 28))
                                .frame(maxWidth: .infinity)
                        }
                    }
                }
                .padding()
                .background(Color.white.opacity(0.2))
                .cornerRadius(30)
                .padding(.horizontal)
                .padding(.bottom, 20)
            }
        }
    }

    private func toggle(_ habit: Habit) {
        if let i = habits.firstIndex(where: { $0.id == habit.id }) {
            habits[i].doneToday.toggle()
        }
    }
}

struct Habit: Identifiable {
    let id = UUID()
    var name: String
    var emoji: String
    var streak: Int
    var doneToday: Bool

    static let samples = [
        Habit(name: "Drink Water", emoji: "💧", streak: 12, doneToday: false),
        Habit(name: "Meditate", emoji: "🧘", streak: 5, doneToday: true),
        Habit(name: "Read 20 Pages", emoji: "📚", streak: 30, doneToday: false),
    ]
}
