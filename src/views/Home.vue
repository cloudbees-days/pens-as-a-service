<template>
    <div class="bg-pink-500 p-8">
        <div class="border-red-700 border-4 p-3">
            <h1 class="text-4xl md:text-6xl font-black text-blue-700 font-cool">Pens-as-a-Service</h1>
            <h3 class="font-heavy text-blue-300 text-2xl">The only PaaS you need!</h3>
        </div>
        <div class="border-red-700 border-4 p-3 mt-5">
            <h2 class="text-2xl text-white font-cool font-bold underline">Check out all of our cool pens!</h2>
            <div class="flex flex-wrap">
                <div v-for="pen in pens" :key="pen.name" class="w-1/2">
                    <div class="m-2 bg-pink-400 border-4 border-white">
                        <img :src="pen.url" alt="">
                        <p class="pt-4 text-xl">{{ pen.name }}</p>
                        <br>
                        <button class="bg-red-500 hover:bg-red-700 text-white font-bold font-heavy py-2 px-4 rounded mb-2">
                            {{ pen.price}}
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    // @ is an alias to /src

    export default {
        name: 'home',
        components: {},
        data () {
            return {
                pens: [
                    {
                        url: "https://images.unsplash.com/photo-1518674660708-0e2c0473e68e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&fm=jpg&w=400&fit=max",
                        name: "Old Brass",
                        price: "$249/month"
                    },
                    {
                        url: "https://images.unsplash.com/photo-1511285605577-4d62fb50d2f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&fm=jpg&w=400&fit=max",
                        name: "Felt tip",
                        price: "3.49/month"
                    },
                    {
                        url: "https://images.unsplash.com/photo-1509228627152-72ae9ae6848d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&fm=jpg&w=400&fit=max",
                        name: "Cheapo",
                        price: "$1.49/month"
                    },
                    {
                        url: "https://images.unsplash.com/photo-1531087131490-07836ca4341d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&fm=jpg&w=400&fit=max",
                        name: "The Executive",
                        price: "$499/month"
                    }
                ]
            }
        }
    }
</script>
