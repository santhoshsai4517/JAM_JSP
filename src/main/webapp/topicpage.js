const countdownElement = document.getElementById('countdown');


const timeoutDuration = 120000;


	// console.log(event);

//	topicIdElm.textContent = 'Topic-' + ();
	//modalContent.textContent = topics[+event.target.name].topic;
	countdownElement.textContent = 'Time left: 120 seconds';


// Timer for 120 seconds 
export const countDown = () => {
	const targetTime = Date.now() + timeoutDuration;
	const intervalID = setInterval(updateCountdown, 1000);

	function updateCountdown() {
		const currentTime = Date.now();
		const timeLeft = targetTime - currentTime;

		countdownElement.textContent = `Time left: ${Math.ceil(
			timeLeft / 1000
		)} seconds`;

		if (timeLeft <= 0) {
			
			clearInterval(intervalID);
			window.location = "http://localhost:8080/JAM_JSP/index.jsp";

//			closeModal();
			// console.log(event);
		}
	}
};

	countDown();
