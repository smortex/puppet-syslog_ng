Facter.add(:syslog_ng_version) do
  setcode do
    if Facter::Util::Resolution.which('syslog-ng')
      Facter::Util::Resolution.exec("syslog-ng --version").lines.find { |l| l =~ /^syslog-ng/}.split(' ')[1]
    else
      "3.5"
    end
  end
end

