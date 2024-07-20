function isValidEmail(email) {
    const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; // Regular expression for email validation
    return re.test(email); // Test the email against the regex
}

document.getElementById('loginForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Prevent the default form submission behavior

    var email = document.getElementById('email').value; // Get the email value
    var password = document.getElementById('password').value; // Get the password value

    fetch('http://localhost:3000/login', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ email, password }) // Send the email and password as JSON
    })
    .then(response => {
        if (response.ok) {
            document.getElementById('loginPage').style.display = 'none'; // Hide the login page
            document.getElementById('postLoginPage').style.display = 'flex'; // Show the post-login page
        } else {
            document.getElementById('wrong-password-message').style.display = 'block'; // Show wrong password message
        }
    })
    .catch(error => {
        console.error('Error:', error); // Log any errors
    });
}); // Event listener for form submission

document.getElementById('toggle-password').addEventListener('click', function() {
    const passwordInput = document.getElementById('password');
    const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password'; // Toggle password visibility
    passwordInput.setAttribute('type', type);
    this.textContent = type === 'password' ? 'Show' : 'Hide'; // Update button text
}); // Event listener for toggling password visibility

document.getElementById('forgot-password-link').addEventListener('click', function(event) {
    event.preventDefault();
    document.querySelector('.title-container h1').textContent = 'Password reset'; // Change title text
    document.querySelector('.password-container').style.display = 'none'; // Hide password container
    document.querySelector('.forgot-password').style.display = 'none'; // Hide forgot password link
    document.querySelector('button[type="submit"]').style.display = 'none'; // Hide submit button
    document.getElementById('reset-button').style.display = 'block'; // Show reset button
    document.getElementById('back2-button').style.display = 'block'; // Show back button
    document.getElementById('wrong-password-message').style.display = 'none'; // Hide wrong password message
}); // Event listener for forgot password link

document.getElementById('reset-button').addEventListener('click', function() {
    let email = document.getElementById('email').value; // Get email value
    let message = document.getElementById('reset-message');

    if (email.trim() === "" || !isValidEmail(email)) {
        if (message) {
            message.style.display = 'none'; // Hide reset message if email is invalid
        }
    } else {
        if (!message) {
            message = document.createElement('div');
            message.id = 'reset-message';
            message.textContent = 'Mock functionality: If the email address is valid, an email with the instructions to reset the password has been sent.';
            message.style.color = 'green';
            message.style.marginTop = '10px';
            this.parentNode.insertBefore(message, this);
        } else {
            message.style.display = 'block'; // Show reset message if email is valid
        }
    }
}); // Event listener for reset button

document.getElementById('back2-button').addEventListener('click', function() {
    location.reload(); // Reload the page
}); // Event listener for back button

const sidebarItems = document.querySelectorAll('.sidebar-item');
const queryButtonsContainer = document.getElementById('query-buttons');
const loginMessage = document.getElementById('login-message');
const selectDataMessage = document.getElementById('select-data-message');
const viewingMessage = document.getElementById('viewing-message');
const viewingName = document.getElementById('viewing-name');
const viewingNameAlone = document.getElementById('viewing-name-alone');
const selectQueryMessage = document.getElementById('select-query-message');
const queryViewingMessage = document.getElementById('query-viewing-message');
const queryName = document.getElementById('query-name');
const tableTitle = document.getElementById('table-title');
const queryTable = document.getElementById('query-table');
const backButton = document.getElementById('back-button');

const descriptions = {
    query1: "Display last and first name, balance, email of the 5 account with highest balance",
    query2: "Display account id, email of the accounts that are also host",
    query3: "Display account id, email of the accounts that are only guest",
    query4: "Display name, price and cleaning fee for the 5 properties with HIGHEST price",
    query5: "Display name, price and cleaning fee for the 5 properties with LOWEST price",
    query6: "Display property id, name and owner's email of every property",
    query7: "Display payment id, amount and date of 5 largest payment amounts",
    query8: "Display amount, payment method of all the payments above 1000€",
    query9: "Display amount, account id, last name of every withdraw"
}; // Query descriptions

const capitalizeFirstLetter = (string) => {
    return string.charAt(0).toUpperCase() + string.slice(1); // Capitalize the first letter of a string
}; // Function to capitalize the first letter

const getTitleFromDescription = (description) => {
    const parts = description.split(' ');
    parts.shift();
    return capitalizeFirstLetter(parts.join(' ')); // Get the title from the description
}; // Function to get the title from description

sidebarItems.forEach(item => {
    item.addEventListener('click', function(event) {
        event.preventDefault();
        const queries = this.getAttribute('data-queries').split(',');
        const name = this.getAttribute('data-name');
        queryButtonsContainer.innerHTML = '';

        queries.forEach(query => {
            const queryRow = document.createElement('div');
            queryRow.className = 'query-row';

            const descriptionDiv = document.createElement('div');
            descriptionDiv.className = 'query-description';
            descriptionDiv.textContent = descriptions[query] || 'Description not available';

            const buttonDiv = document.createElement('div');
            buttonDiv.className = 'query-button-cell';

            const button = document.createElement('button');
            button.textContent = query;
            button.className = 'query-button';

            buttonDiv.appendChild(button);
            queryRow.appendChild(descriptionDiv);
            queryRow.appendChild(buttonDiv);
            queryButtonsContainer.appendChild(queryRow);

            button.addEventListener('click', function() {
                fetchQueryResults(query);
                queryViewingMessage.style.display = 'block';
                queryName.textContent = query;
                tableTitle.textContent = getTitleFromDescription(descriptions[query]);
                tableTitle.style.display = 'block';
                queryTable.style.display = 'block';
                selectQueryMessage.style.display = 'none';
                backButton.style.display = 'block';
                queryButtonsContainer.style.display = 'none';
                viewingMessage.style.display = 'none';
                viewingNameAlone.textContent = name;
                viewingNameAlone.style.display = 'block';
            });
        });

        loginMessage.style.display = 'none';
        selectDataMessage.style.display = 'none';
        viewingName.textContent = name;
        viewingMessage.textContent = `You are viewing ${name} queries:`;
        viewingMessage.style.display = 'block';
        viewingNameAlone.style.display = 'none';
        selectQueryMessage.style.display = 'block';
        queryViewingMessage.style.display = 'none';
        tableTitle.style.display = 'none';
        queryTable.style.display = 'none';
        backButton.style.display = 'none';
        queryButtonsContainer.style.display = 'block';
    });
}); // Event listener for sidebar items

backButton.addEventListener('click', function() {
    queryViewingMessage.style.display = 'none';
    tableTitle.style.display = 'none';
    queryTable.style.display = 'none';
    selectQueryMessage.style.display = 'block';
    backButton.style.display = 'none';
    queryButtonsContainer.style.display = 'block';
    viewingMessage.style.display = 'block';
    viewingMessage.textContent = `You are viewing ${viewingName.textContent} queries:`;
    viewingNameAlone.style.display = 'none';
}); // Event listener for back button

document.getElementById('logout-button').addEventListener('click', function() {
    document.getElementById('postLoginPage').style.display = 'none';
    document.getElementById('logoutMessage').style.display = 'flex';

    let countdown = 3;
    const countdownElement = document.getElementById('countdown');
    const interval = setInterval(() => {
        countdownElement.textContent = countdown;
        if (countdown === 0) {
            clearInterval(interval);
            location.reload();
        }
        countdown--;
    }, 1000); // Countdown timer for logout message
}); // Event listener for logout button

function fetchQueryResults(query) {
    fetch(`http://localhost:3000/query?name=${query}`)
        .then(response => response.json())
        .then(data => {
            queryTable.innerHTML = generateTableHTML(data);
            queryViewingMessage.style.display = 'block';
            tableTitle.style.display = 'block';
            queryTable.style.display = 'block';
            selectQueryMessage.style.display = 'none';
            backButton.style.display = 'block';
            queryButtonsContainer.style.display = 'none';
        })
        .catch(error => console.error('Error fetching query results:', error)); // Fetch and display query results
} // Function to fetch query results

function generateTableHTML(data) {
    let tableHTML = '<table><thead><tr>';
    if (data.length > 0) {
        Object.keys(data[0]).forEach((key) => {
            tableHTML += `<th>${key}</th>`;
        });
        tableHTML += '</tr></thead><tbody>';
        data.forEach(row => {
            tableHTML += '<tr>';
            Object.entries(row).forEach(([key, value]) => {
                tableHTML += `<td data-label="${key}">${value}</td>`;
            });
            tableHTML += '</tr>';
        });
    } else {
        tableHTML += '<tr><td>No data available</td></tr>';
    }
    tableHTML += '</tbody></table>';
    return tableHTML; // Generate HTML for the query results table
} // Function to generate table HTML
