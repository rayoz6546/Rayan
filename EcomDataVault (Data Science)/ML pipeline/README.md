## Installation and Setup
### Prerequisites

Uses python for package management.

- Python 3.12
- Required Python packages (listed in requirements.txt)

### Steps

1. **Clone the Repository:**

2. **Install Dependencies:**
    You should first install python to create and activate a virtual environment with dependencies. Then run:
    ```bash
    python -m venv venv
    .\venv\Scripts\activate
    pip install -r requirements.txt
    ```

3. **Storing API keys and other secret keys**
    To securely store your API keys and other sensitive information, you should create a `.env` file. 
    Follow these steps:

    ```bash
    # In the root directory of your project, create a new file named `.env`:
    touch .env
    ```
    ```bash
    #Open the `.env` file in your favorite text editor and add your API keys in the following format:
    API_KEY=<your-api-key-here>
    ```
    
6. **Run the Code:**
    You can execute the provided scripts directly. For example, to format documents:
    ```bash
    streamlit run src/app.py
    ```
