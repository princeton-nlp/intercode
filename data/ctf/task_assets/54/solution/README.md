# 54 Solution
Run `curl http://mercury.picoctf.net:34561/` to get the HTML code for the webpage.

From inspecting the HTML code output, it's apparent that GET and POST are being used. The hint seems to suggest that there is a third method. The query seems to reference "HEAD" as a possible solution.

Run `curl -I HEAD -i http://mercury.picoctf.net:34561/index.php`. The solution flag will be shown in standard output.