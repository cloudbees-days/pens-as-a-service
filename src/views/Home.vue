<template>
    <div>
        <div>
            <b-navbar toggleable="lg" type="dark" variant="dark">
                <b-container>
                    <b-navbar-brand href="#">Pens-as-a-Service</b-navbar-brand>

                    <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

                    <b-collapse id="nav-collapse" is-nav>
                        <b-navbar-nav>
                            <b-nav-item href="#">Store</b-nav-item>
                            <b-nav-item href="#">About</b-nav-item>
                            <b-nav-item href="#">Blog</b-nav-item>
                            <b-nav-item href="#">Contact us</b-nav-item>
                        </b-navbar-nav>

                        <!-- Right aligned nav items -->
                        <b-navbar-nav class="ml-auto">
                            <b-nav-form>
                                <b-form-input size="sm" class="mr-sm-2" placeholder="Search"></b-form-input>
                                <b-button size="sm" class="my-2 my-sm-0" type="submit">Search</b-button>
                            </b-nav-form>

                            <b-nav-item-dropdown text="Lang" right>
                                <b-dropdown-item href="#">EN</b-dropdown-item>
                                <b-dropdown-item href="#">ES</b-dropdown-item>
                                <b-dropdown-item href="#">RU</b-dropdown-item>
                                <b-dropdown-item href="#">FA</b-dropdown-item>
                            </b-nav-item-dropdown>
                        </b-navbar-nav>
                    </b-collapse>
                </b-container>
            </b-navbar>
            <b-container>
                <div>
                    <b-jumbotron class="mt-3" header="Pens-as-a-Service" lead="The only PaaS you need!"
                                 bg-variant="light"></b-jumbotron>
                </div>
                <b-row>
                    <b-col cols="auto" md="6" v-for="pen in pens" :key="pen">
                        <b-card
                                :title="pen.name"
                                :img-src="pen.url"
                                class="mb-2"
                        >
                            <b-button href="#" variant="primary">{{pen.price}}</b-button>
                        </b-card>
                    </b-col>
                </b-row>
            </b-container>
        </div>

    </div>
</template>

<script>
    export default {
        name: 'home',
        components: {},
        data() {
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
