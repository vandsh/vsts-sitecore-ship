# Sitecore Ship Utils
 
**Get External IP Address:** Helps you set the Whitelist IP so the hosted agent can deploy and publish to your instance.  VSTS will usually change IP addresses on its Hosted Agent and this allows you to whitelist the dynamically changing address.  You will need to define a Variable, and thru the use of a tokenization task, it can get inserted into your config.  This task merely inserts the external IP address into your desired Variable

```
<packageInstallation enabled="true" allowRemote="true" allowPackageStreaming="true" recordInstallationHistory="false" xdt:Transform="SetAttributes">
    <Whitelist xdt:Transform="Insert">
      <add name="vsts" IP="__ReleaseIPAddr__" />
    </Whitelist>
  </packageInstallation>
  ```

**Deploy:** Helps you upload and install .update files to a Sitecore instance from Powershell assuming you are using the Sitecore.Ship module.

**Publish:** Helps you publish .update files to a Sitecore instance from Powershell assuming you are using the Sitecore.Ship module.