import { fetchData, postData } from "./components/TheDataMiner.js";

(() => {
    
    Vue.component( "img-area", {
        props: ["car"],
        template: `<img  @click="logClicked" :src="'images/' + car.image" alt="car images">`,
        mounted:function(){
            console.log(`loaded a ${this.car.name}'s image`);   
        },

        methods:{
            logClicked(){
                console.log
                ("select img", this.car.name);
                this.$emit
                ("showmyinfo", this.car)
            }
            
        } 
    });

    let vue_vm = new Vue({
         data: {
            message: "Good luck from vue..lol!",
            anotherMessage: "more text, so simple! much winning",
            show_info: false,
            carImg: [],
            currentCarData: {}
        },
        // this is the "mounted" lifecycle hook. Vue is done creating itself, and has attached itself to the "app" div on the page
        mounted: function() {
            
            console.log("Vue is mounted, trying a fetch for the initial data");
            fetchData("./includes/index.php")
                .then(data => {

                    data.forEach(prof => this.carImg.push(prof));

                })
                .catch(err => console.error(err));            
        },

        // removeProf(target) {
        //     // remove this prof from the professors array
        //     console.log('clicked to remove prof', target, target.Name);
        //     // the "this" keyword inside a vue instance REFERS to the Vue instance itself by default

        //     // make the selected prof's data visible
        //     this.professors.splice(this.professors.indexOf(target), 1);
        //     this.$delete(this.professors, target);
        // }
    
        methods: {

            imgAreaSelected(car)
            {
                console.log("clicked on a list car: ", car.name);
                this.show_info = this.show_info ? false : true;
                this.currentCarData = car;
            }
        }        
    }).$mount("#miniApp"); // also connects Vue to your wrapper in HTML
})();