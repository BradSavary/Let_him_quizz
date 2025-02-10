import { MCQ } from './data/data-mcq.js';

// Components imports
import { TickingAway } from './components/ticking-away/ticking-away.js';
import { Money } from './components/money-counter/money-counter.js';
import { DebugMenu } from './components/debug-menu/debug-menu.js';
import { Camera } from './components/camera/camera.js';
import { Loading } from './components/loading/loading.js';
import { Light } from './components/light/light.js';
import { FindThePlace } from './components/find-the-place/find-the-place.js';

// First mini game
// TickingAway.renderQuizZone();
// TickingAway.newQuestion();
// TickingAway.startTimer();

// Second mini game
FindThePlace.renderPropositionsZone();
FindThePlace.renderQuestion();

// Render the money counter
Money.renderMoneyZone();
// Start the timer


document.addEventListener('DOMContentLoaded', () => {
    const leftController = document.querySelector("#leftController");
    const rightController = document.querySelector("#rightController");

    leftController.setAttribute("movement-controls", "enabled: true");
    rightController.setAttribute("movement-controls", "enabled: true");

    leftController.addEventListener('thumbstickmoved', (event) => {
        const camera = document.querySelector('#camera');
        const { x, y } = event.detail;
        camera.object3D.position.x += x * 0.1;
        camera.object3D.position.z += y * 0.1;
    });

    rightController.addEventListener('thumbstickmoved', (event) => {
        const camera = document.querySelector('#camera');
        const { x, y } = event.detail;
        camera.object3D.position.x += x * 0.1;
        camera.object3D.position.z += y * 0.1;
    });
});

