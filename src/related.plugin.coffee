# Export Plugin
module.exports = (BasePlugin) ->
	# Define Relations Plugin
	class RelatedPlugin extends BasePlugin
		# Plugin Name
		name: 'related'

		# Plugin Config
		config:
			parentCollectionName: 'html'

		# Has inside
		howManyItemsInside: (aArray,bArray) ->
			count = 0
			for aItem in aArray
				for bItem in bArray
					if aItem is bItem
						++count
						break
			return count

		# Extend the template data with the helper we want
		extendTemplateData: (opts) ->
			# Prepare
			opts.templateData.getRelatedDocuments ?= (document) ->
				document ?= @document
				if document.id is @documentModel?.id
					documentModel = @documentModel
				else
					documentModel = @getFileById(document.id)
				return documentModel.relatedDocuments?.toJSON() or []

			# Chain
			@

		# Extend Collections
		extendCollections: (opts) ->
			# Prepare
			plugin = @
			config = @getConfig()
			docpad = @docpad

			# Add our partials collection
			collection = docpad.getCollection(config.parentCollectionName)
				.on 'add change:tags', (document) ->
					# Prepare
					tags = document.get('tags') or []

					# Create a live child collection of the related documents
					relatedDocuments = collection
						.findAllLive(
							tags: '$in': tags
							id: $ne: document.id
						)
						.setComparator (a,b) ->
							return plugin.howManyItemsInside(a,tags) < plugin.howManyItemsInside(b,tags)

					# Save
					document.relatedDocuments = relatedDocuments

				.on 'remove', (document) ->
					document.relatedDocuments?.destroy()
					document.relatedDocuments = null

			# Chain
			@
