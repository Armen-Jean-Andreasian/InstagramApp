# Instagram Photo Downloader

This application downloads a photo from an Instagram post. It takes the URL of the post as input and saves the photo as an image.

The app has two versions:
- Python implementation
- Ruby implementation

---

## Python Version

### Installation

1. Clone the repository using `git clone`:
   ```bash
   git clone <repository_url>
   ```

2. Navigate to the Python project directory:
   ```bash
   cd python_implementation
   ```

3. Install the required dependencies:
   ```bash
   pip install -r requirements.txt
   ```

### Usage

#### Web Version

To start the web version of the app, run the following command:
```bash
streamlit run web.py
```

This will launch the app in your default web browser. You'll see a text input where you can paste the URL of the Instagram post you want to download. After you've entered the URL, click the "Download Photo" button to download the photo.

#### Command Line Version

To run the command line version, use the following command:
```bash
python main.py
```

The app will download the photo and display the file path where the image is saved.

---

## Ruby Version

### Installation

1. Clone the repository using `git clone`:
   ```bash
   git clone <repository_url>
   ```

2. Navigate to the Ruby project directory:
   ```bash
   cd ruby_implementation
   ```

3. Install Bundler if it is not already installed:
   ```bash
   gem install bundler
   ```

4. Install project dependencies using Bundler:
   ```bash
   bundle install
   ```

---
