// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import DeleteFromListController from "./delete_from_list_controller"
application.register("delete-from-list", DeleteFromListController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import InsertIngredientController from "./insert_ingredient_controller"
application.register("insert-ingredient", InsertIngredientController)

import LivekitchenSubscriptionController from "./livekitchen_subscription_controller"
application.register("livekitchen-subscription", LivekitchenSubscriptionController)

import NavbarController from "./navbar_controller"
application.register("navbar", NavbarController)

import OrderstatusSubscriptionController from "./orderstatus_subscription_controller"
application.register("orderstatus-subscription", OrderstatusSubscriptionController)
