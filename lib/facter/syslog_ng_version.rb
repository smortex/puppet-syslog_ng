Facter.add(:syslog_ng_version) do
  setcode do
    syslog_ng = Facter.value(:syslog_ng)
    if syslog_ng.nil? || syslog_ng.empty?
      nil
    else
      syslog_ng['Installer-Version']
    end
  end
end

