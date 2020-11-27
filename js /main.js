// $(document).ready(function() {
//     $(".menu-icon").on("click", function() {
//         $("nav ul").toggleClass("showing");

//     });
// });

import { fetchData } from "./components/TheDataMiner.js";



(() => {
    let vue_vm = new Vue({
        // link Vue to an element in our HTML
        //el: "#app",

        data: {
            message: "Hello from Vue!",
            anotherMessage: "more text, so simple! much winning",
            removeAformat: true,
            showBioData: false,
            img: "clubman.jpg",
            professors: [],
            currentProfData: {} 
        },

        // this is the "mounted" lifecycle hook. Vue is done creating itself, and has attached itself to the "app" div on the page
        mounted: function() {
            console.log("Vue is mounted, trying a fetch for the initial data");

            fetchData("./includes/index.php")
            .then(data => {
                data.forEach(prof => this.professors.push(prof));
                // this.professors = data
            })
                .catch(err => console.error(err));
            
        },

        // run a method when we change our view (update the DOM with Vue)
        updated: function() {
            console.log('Vue just updated the DOM');
        },

        methods: {
            logClicked() {
                console.log("clicked on a list item");
            },

            clickHeader() {
                console.log("clicked on the header");
            },
       
        },

        components: {
            "prof-card": ProfCard
        }
    }).$mount("#app"); // also connects Vue to your wrapper in HTML
})();