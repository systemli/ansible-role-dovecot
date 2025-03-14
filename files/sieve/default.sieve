require ["fileinto"];
# rule:[Filter out spam]
if allof (header :contains "X-Spam-Flag" "YES")
{
	fileinto "Junk";
}
