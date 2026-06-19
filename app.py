from flask import Flask

# Create the Flask application
app = Flask(__name__)

# Home page
@app.route("/")
def home():
    return "<h1>Welcome to the ECS CI/CD Pipeline through Github Action with terraform</h1>"

# About page
@app.route("/about")
def about():
    return "<h2>This application is deployed using AWS CodePipeline, ECR, and ECS.</h2>"

# Health check endpoint
@app.route("/health")
def health():
    return "Application is running successfully!"

# Start the Flask server
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
