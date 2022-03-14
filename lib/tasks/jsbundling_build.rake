# Mostly lifted from [1] but replace yarn with pnpm
# [1] https://github.com/rails/jsbundling-rails/blob/98780f28809ebad5d84921ce38dc238472a35812/lib/tasks/jsbundling/build.rake

# First clear existing task actions
Rake::Task["javascript:build"].clear_actions

namespace :javascript do
  desc "Build your JavaScript bundle"
  task :build do
    unless system "pnpm install && pnpm build"
      raise "jsbundling-rails: Command build failed, ensure pnpm is installed and `pnpm build` runs without errors"
    end
  end
end
