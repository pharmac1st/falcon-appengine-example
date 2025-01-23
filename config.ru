
require_relative 'config/environment'

self.freeze_app

use Utopia::Content
use Utopia::Static

run lambda { |env| [404, {}, []] }
