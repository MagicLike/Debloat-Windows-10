  
#   Description:
# This script disables unwanted Windows services. If you do not want to disable
# certain services comment out the corresponding lines below.

$services = @(
    "diagnosticshub.standardcollector.service"     # Microsoft (R) Diagnostics Hub Standard Collector Service
    "DiagTrack"                                    # Diagnostics Tracking Service
    "dmwappushservice"                             # WAP Push Message Routing Service (see known issues)
    "lfsvc"                                        # Geolocation Service
    "MapsBroker"                                   # Downloaded Maps Manager
    "NetTcpPortSharing"                            # Net.Tcp Port Sharing Service
    "RemoteAccess"                                 # Routing and Remote Access
    "RemoteRegistry"                               # Remote Registry
    "SharedAccess"                                 # Internet Connection Sharing (ICS)
    "TrkWks"                                       # Distributed Link Tracking Client
    "WbioSrvc"                                     # Windows Biometric Service (required for Fingerprint reader / facial detection)
    #"WlanSvc"                                      # WLAN AutoConfig
    "WMPNetworkSvc"                                # Windows Media Player Network Sharing Service
    "wscsvc"                                       # Windows Security Center Service
    "WSearch"                                      # Windows Search
    "XblAuthManager"                               # Xbox Live Auth Manager
    "XblGameSave"                                  # Xbox Live Game Save Service
    "XboxNetApiSvc"                                # Xbox Live Networking Service
    "XboxGipSvc"                                   #Disables Xbox Accessory Management Service
    "ndu"                                          # Windows Network Data Usage Monitor
    "WerSvc"                                       #disables windows error reporting
    "Spooler"                                      #Disables your printer
    "Fax"                                          #Disables fax
    "fhsvc"                                        #Disables fax histroy
    "gupdate"                                      #Disables google update
    "gupdatem"                                     #Disable another google update
    "stisvc"                                       #Disables Windows Image Acquisition (WIA)
    "AJRouter"                                     #Disables (needed for AllJoyn Router Service)
    "MSDTC"                                        # Disables Distributed Transaction Coordinator
    "WpcMonSvc"                                    #Disables Parental Controls
    "PhoneSvc"                                     #Disables Phone Service(Manages the telephony state on the device)
    "PrintNotify"                                  #Disables Windows printer notifications and extentions
    "PcaSvc"                                       #Disables Program Compatibility Assistant Service
    "WPDBusEnum"                                   #Disables Portable Device Enumerator Service
    "LicenseManager"                               #Disable LicenseManager(Windows store may not work properly)
    "seclogon"                                     #Disables  Secondary Logon(disables other credentials only password will work)
    "SysMain"                                      #Disables sysmain
    "lmhosts"                                      #Disables TCP/IP NetBIOS Helper
    "wisvc"                                        #Disables Windows Insider program(Windows Insider will not work)
    "FontCache"                                    #Disables Windows font cache
    "RetailDemo"                                   #Disables RetailDemo whic is often used when showing your device
    "ALG"                                          # Disables Application Layer Gateway Service(Provides support for 3rd party protocol plug-ins for Internet Connection Sharing)
    #"BFE"                                         #Disables Base Filtering Engine (BFE) (is a service that manages firewall and Internet Protocol security)
    #"BrokerInfrastructure"                         #Disables Windows infrastructure service that controls which background tasks can run on the system.
    "SCardSvr"                                      #Disables Windows smart card
    "EntAppSvc"                                     #Disables enterprise application management.
    "BthAvctpSvc"                                   #Disables AVCTP service (if you use  Bluetooth Audio Device or Wireless Headphones. then don't disable this)
    #"FrameServer"                                   #Disables Windows Camera Frame Server(this allows multiple clients to access video frames from camera devices.)
    "Browser"                                       #Disables computer browser
    "BthAvctpSvc"                                   #AVCTP service (This is Audio Video Control Transport Protocol service.)
    "BDESVC"                                        #Disables bitlocker
    "iphlpsvc"                                      #Disables ipv6 but most websites don't use ipv6 they use ipv4     
    "edgeupdate"                                    # Disables one of edge update service  
    "MicrosoftEdgeElevationService"                 # Disables one of edge  service 
    "edgeupdatem"                                   # disbales another one of update service (disables edgeupdatem)                          
    "SEMgrSvc"                                      #Disables Payments and NFC/SE Manager (Manages payments and Near Field Communication (NFC) based secure elements)
    #"PNRPsvc"                                      # Disables peer Name Resolution Protocol ( some peer-to-peer and collaborative applications, such as Remote Assistance, may not function, Discord will still work)
    #"p2psvc"                                       # Disbales Peer Name Resolution Protocol(nables multi-party communication using Peer-to-Peer Grouping.  If disabled, some applications, such as HomeGroup, may not function. Discord will still work)
    #"p2pimsvc"                                     # Disables Peer Networking Identity Manager (Peer-to-Peer Grouping services may not function, and some applications, such as HomeGroup and Remote Assistance, may not function correctly.Discord will still work)
    "PerfHost"                                      #Disables  remote users and 64-bit processes to query performance .
    "BcastDVRUserService_48486de"                   #Disables GameDVR and Broadcast   is used for Game Recordings and Live Broadcasts
    "CaptureService_48486de"                        #Disables ptional screen capture functionality for applications that call the Windows.Graphics.Capture API.  
    "cbdhsvc_48486de"                               #Disables   cbdhsvc_48486de (clipboard service it disables)
    "BluetoothUserService_48486de"                  #disbales BluetoothUserService_48486de (The Bluetooth user service supports proper functionality of Bluetooth features relevant to each user session.)
    "WpnService"                                    #Disables WpnService (Push Notifications may not work )
    #"StorSvc"                                      #Disables StorSvc (usb external hard drive will not be reconised by windows)
    "RtkBtManServ"                                  #Disables Realtek Bluetooth Device Manager Service
    "QWAVE"                                         #Disables Quality Windows Audio Video Experience (audio and video might sound worse)
     #HP services
    "HPAppHelperCap"                                #Disable HPAppHelperCap(used by hp software; safe to remove)
    "HPDiagsCap"                                    #Disable HPDiagsCap(used by hp software; safe to remove)
    "HPNetworkCap"                                  #Disable HPNetworkCap(used by hp software; safe to remove)
    "HPSysInfoCap"                                  #Disable HPSysInfoCap(used by hp software; safe to remove)
    "HpTouchpointAnalyticsService"                  #Disable HpTouchpointAnalyticsService(used by hp software; safe to remove)
    #hyper-v services
     "HvHost"                                       #Manages and supports Hyper-V virtualization services
    "vmickvpexchange"                               #Facilitates communication between the host and virtual machines
    "vmicguestinterface"                            #Provides network communication for guest virtual machines
    "vmicshutdown"                                  #Allows for proper shutdown coordination between host and virtual machines
    "vmicheartbeat"                                 #Monitors the heartbeat status of virtual machines for health monitoring
    "vmicvmsession"                                 #Manages sessions between the host and virtual machines
    "vmicrdv"                                       #Handles Remote Desktop Virtualization
    "vmictimesync"                                  #Ensures time synchronization between the host and virtual machines.
    # Dell services can somone with a dell latop conform these are the names?
    "SupportAssistAgent"                            #Automated support and system health monitoring for Dell Computer
    "DellUpService"                                 #Manages Dell driver and software updates for Dell Computer
    "DataVault"                                     #Provides data protection and management features for Dell computer
    "DellCustomerConnect"                           #Offers promotions and deals for Dell computer
    "Dell.Foundation.Agent"                         #Supports other Dell software functionalities for Dell computer
    "nosGetPlusHelper"                              #Handles software delivery and installation process for Dell computer
    #Lenovo can someone with a dell conform these are the names?
    "LSCNotify"                                     #Collects data for for Lenovo computer
    "LnvAgent"                                      #Provides system updates and support For Lenovo computers
    "Lenovo.Modern.ImController.PluginHost.CompanionApp" # Part of Lenovo Vantage for system management.
    "Lenovo.Modern.ImController.PluginHost.Device"  # Handles device-related functions in Lenovo Vantage.
    "Lenovo.Modern.ImController"                    #Manages system settings and updates.
    "LenovoUtility"                                 #Offers various utility functions for Lenovo devices.
    # Services which cannot be disabled
    #"WdNisSvc"
)

foreach ($service in $services) {
    # -ErrorAction SilentlyContinue is so it doesn't write an error to stdout if a service doesn't exist

    Write-Host "Setting $service StartupType to disabled"
    Get-Service -Name $service -ErrorAction SilentlyContinue | Set-Service -StartupType Disabled

    $running = Get-Service -Name $service -ErrorAction SilentlyContinue | Where-Object {$_.Status -eq 'Running'}
    if ($running) { 
        Write-Host "Stopping $service"
        Stop-Service -Name $service
    }
}
