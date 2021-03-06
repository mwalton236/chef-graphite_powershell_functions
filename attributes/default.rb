#
# Cookbook Name:: graphite_powershell_functions
# Attributes:: default
#
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
#

default['graphite_powershell_functions']['CarbonServer'] = nil
default['graphite_powershell_functions']['CarbonServerPort'] = 2003
default['graphite_powershell_functions']['MetricPath'] = 'powershell.'
default['graphite_powershell_functions']['MetricSendIntervalSeconds'] = 30
default['graphite_powershell_functions']['TimeZoneOfGraphiteServer'] = 'UTC'
default['graphite_powershell_functions']['hostname'] = node.name.gsub('.', '_')
default['graphite_powershell_functions']['PerformanceCounters'] = [
  'Network Interface(*)\Bytes Received/sec',
  'Network Interface(*)\Bytes Sent/sec',
  'Network Interface(*)\Packets Received Unicast/sec',
  'Network Interface(*)\Packets Sent Unicast/sec',
  'Network Interface(*)\Packets Received Non-Unicast/sec',
  'Network Interface(*)\Packets Sent Non-Unicast/sec',
  'Processor(_Total)\% Processor Time',
  'Processor(_Total)\% User Time',
  'Processor(_Total)\% Idle Time',
  'Memory\Available MBytes',
  'Memory\Pages/sec',
  'Memory\Pages Input/sec',
  'System\Processor Queue Length',
  'System\Threads',
  'System\File Write Operations/sec',
  'System\File Read Operations/sec',
  'PhysicalDisk(*)\Avg. Disk Write Queue Length',
  'PhysicalDisk(*)\Avg. Disk Read Queue Length',
  'TCPv4\Segments Received/sec',
  'TCPv4\Segments Sent/sec',
  'TCPv4\Segments Retransmitted/sec'
]
default['graphite_powershell_functions']['MetricFilter'] = [
  'isatap',
  'teredo tunneling'
]

default['graphite_powershell_functions']['nssm_archive'] = 'http://nssm.cc/release/nssm-2.21.1.zip'
default['graphite_powershell_functions']['nssm_archive_checksum'] = 'ba1d2765d91a950eedff161e772e7a744a6896aba68967494fee1fb084ab081f'
