// Получаем элементы
const openModal = document.getElementById('openModal');
const modal = document.getElementById('modal');
const closeModal = document.getElementById('closeModal');
const closeButton = document.getElementById('closeButton');

// Открытие модального окна
openModal?.addEventListener('click', () => {
    modal.style.display = 'flex';
});

// Закрытие модального окна (крестик)
closeModal?.addEventListener('click', () => {
    modal.style.display = 'none';
});

// Закрытие модального окна (кнопка "Close")
closeButton?.addEventListener('click', () => {
    modal.style.display = 'none';
});

// Закрытие при клике на фон
window.addEventListener('click', (e) => {
    if (e.target === modal) {
        modal.style.display = 'none';
    }
});


const modalWaring = document.getElementById("modalWaring");
const deleteBtn = document.getElementById("deleteBtn");
const closeBtn = document.getElementById("closeBtn");
const cancelBtn = document.getElementById("cancelBtn");
const saveBtn = document.getElementById("saveBtn");

deleteBtn.addEventListener("click", () => {
    modalWaring.style.display = "block";
});

closeBtn.addEventListener("click", () => {
    modalWaring.style.display = "none";
});

cancelBtn.addEventListener("click", () => {
    modalWaring.style.display = "none";
});

saveBtn.addEventListener("click", () => {
    alert("Changes saved!");
    modalWaring.style.display = "none";
});

window.addEventListener("click", (event) => {
    if (event.target === modalWaring) {
        modalWaring.style.display = "none";
    }
});

