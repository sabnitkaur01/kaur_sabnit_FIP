export default {
    name: "DataInfo",
    props: ["car"],
    template: `<img @click="carClicked" :src="'images/' +car.images" alt="item images">`,
    
    mounted:function(){
        console.log(`loaded a ${this.car.name}'s image`);
        console.log(`${this.car.images}`);
    },

    methods:{
        imgClicked(){
            console.log(`imgArea image ${this.car.name} selected from component`)
        }
    }
}