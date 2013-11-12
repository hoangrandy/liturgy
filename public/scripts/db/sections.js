define([
  'backbone',
  'db/section'
], function( Backbone, Section ){
	var Sections = Backbone.Collection.extend({
		model: Section
	});

	return Sections;
});