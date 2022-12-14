// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import CheckoutController from "./checkout_controller"
application.register("checkout", CheckoutController)

import DeleteFromListController from "./delete_from_list_controller"
application.register("delete-from-list", DeleteFromListController)

import DismissNoticeController from "./dismiss_notice_controller"
application.register("dismiss-notice", DismissNoticeController)

import EditIngredientController from "./edit_ingredient_controller"
application.register("edit-ingredient", EditIngredientController)

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

import PayController from "./pay_controller"
application.register("pay", PayController)
