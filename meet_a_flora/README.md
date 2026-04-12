🌿 Meet A Flora

Meet A Flora is a Flutter-based mobile application that leverages AI to analyze plant images and provide detailed information about them. Users can upload or select an image of a plant, and the app processes it using an AI API to identify the plant and retrieve useful insights.

🚀 Features
📸 Image Recognition
Upload or capture plant images
AI-powered image processing
🤖 AI Integration
Uses AI API to analyze plant images
Retrieves plant name, description, and other details
🌱 Plant Information
Scientific and common names
Plant characteristics
Care instructions (if available)
⚡ Fast & Responsive
Built with Flutter for smooth performance
Efficient API handling using Dio
🛠️ Tech Stack
Flutter – UI development
Dart – Programming language
Dio – Network requests
AI API (Gemini / similar) – Image processing & data retrieval
JSON Assets – Local data handling
📂 Project Structure
lib/
│── core/
│   ├── network/
│   │   ├── dio_client.dart
│   │   ├── api_endpoints.dart
│
│── features/
│   ├── home/
│   │   ├── data/
│   │   ├── domain/
│   │   ├── presentation/
│
│── main.dart
🔧 Setup & Installation
Clone the repository
git clone https://github.com/your-username/meet-a-flora.git
cd meet-a-flora
Install dependencies
flutter pub get
Add API Key
Create a .env file in the root directory
API_KEY=your_api_key_here
Run the app
flutter run
🔌 API Usage
The app sends image data (converted to Base64) to the AI API.
The API processes the image and returns plant information.
Response is parsed and displayed in the UI.
📸 How It Works
User selects or captures an image
Image is converted to Base64
API request is sent
AI processes the image
Plant details are returned and displayed
⚠️ Known Issues
API rate limits (e.g., 429 errors)
Some plants may not be accurately identified
Requires internet connection for AI processing
🔮 Future Improvements
🌍 Offline plant database support
📊 Better UI/UX enhancements
🧠 Improved AI accuracy
❤️ Favorites & history feature
🤝 Contributing

Contributions are welcome!

Fork the repo
Create a feature branch
Commit your changes
Open a pull request
