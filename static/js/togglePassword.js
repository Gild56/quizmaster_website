const passwordField = document.getElementById('password');
const togglePasswordButton = document.getElementById('togglePassword');

togglePasswordButton.addEventListener('click', () => {
    const type = passwordField.type === 'password' ? 'text' : 'password';
    passwordField.type = type;
});

const repeatPasswordField = document.getElementById('repeat-password');
const toggleRepeatPasswordButton = document.getElementById('toggleRepeatPassword');

toggleRepeatPasswordButton.addEventListener('click', () => {
    const type = repeatPasswordField.type === 'password' ? 'text' : 'password';
    repeatPasswordField.type = type;
});
