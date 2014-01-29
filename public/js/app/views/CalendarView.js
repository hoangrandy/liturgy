define(['jquery', 'hbs!templates/calendarListing', 'views/LiturgyItemView', 'backbone', 'marionette'],
    function ($, template, LiturgyItemView, Backbone) {
        //ItemView provides some default rendering logic
        return Backbone.Marionette.CompositeView.extend({
        	tagName: "table",
        	className: "table table-striped table-hover",
            template:template,
            itemView: LiturgyItemView,
            itemViewContainer: "tbody"
        });
    });