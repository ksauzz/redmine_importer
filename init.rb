require 'redmine'

Redmine::Plugin.register :redmine_importer do
  name 'Issue Importer'
  author 'Martin Liu / Leo Hourvitz'
  description 'Issue import plugin for Redmine.'
  version '1.0'

  project_module :importer do
    permission :import, :importer => :index
  end
  menu :project_menu, :importer, { :controller => 'importer', :action => 'index' }, :caption => :"redmine_importer.label_import", :before => :settings, :param => :project_id
end

CSV = FCSV if RUBY_VERSION < '1.9'
