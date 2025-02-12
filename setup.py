import qrcode
import yaml


def create_qr_code(url: str):
    qr = qrcode.QRCode(
        version=1,
        error_correction=qrcode.constants.ERROR_CORRECT_L,
        box_size=10,
        border=4,
    )

    qr.add_data(url)
    qr.make()
    img = qr.make_image(fill_color="black", back_color="white")

    return img

with open('_variables.yml', 'r') as file:        
    cs = yaml.load(file, Loader=yaml.FullLoader)
    qr_img = create_qr_code(cs['url'])
    qr_img.save('figures/qr_code.png')
