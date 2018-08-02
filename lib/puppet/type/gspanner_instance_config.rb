# Copyright 2018 Google Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------

require 'google/object_store'
require 'google/spanner/property/string'
require 'puppet'

Puppet::Type.newtype(:gspanner_instance_config) do
  @doc = <<-DOC
    A possible configuration for a Cloud Spanner instance. Configurations define the geographic
    placement of nodes and their replication.
  DOC

  autorequire(:gauth_credential) do
    credential = self[:credential]
    raise "#{ref}: required property 'credential' is missing" if credential.nil?
    [credential]
  end

  newparam :credential do
    desc <<-DESC
      A gauth_credential name to be used to authenticate with Google Cloud
      Platform.
    DESC
  end

  newparam(:project) do
    desc 'A Google Cloud Platform project to manage.'
  end

  newparam(:name, namevar: true) do
    # TODO(nelsona): Make this description to match the key of the object.
    desc 'The name of the InstanceConfig.'
  end

  newproperty(:name, parent: Google::Spanner::Property::String) do
    desc <<-DOC
      A unique identifier for the instance configuration. Values are of the form
      projects/<project>/instanceConfigs/[a-z][-a-z0-9]*
    DOC
  end

  newproperty(:display_name, parent: Google::Spanner::Property::String) do
    desc 'The name of this instance configuration as it appears in UIs. (output only)'
  end

  # Returns all properties that a provider can export to other resources
  def exports
    provider.exports
  end
end
