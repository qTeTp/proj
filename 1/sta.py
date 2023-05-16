import os
import io
from PyPDF2 import PdfReader, PdfWriter
from reportlab.lib.pagesizes import letter
from reportlab.pdfgen import canvas

folder_path = 'C:/Users/user/Documents/proj/1/'
output_folder = 'C:/Users/user/Documents/proj/1/'
sign_path = 'C:/Users/user/Documents/proj/1/nnnn.png'

x_position = 300
y_position = 260
width =  150
height = 150

if not os.path.exists(output_folder):
    os.makedirs(output_folder)

packet = io.BytesIO()
can = canvas.Canvas(packet, pagesize=letter)
can.drawImage(sign_path, x_position, y_position, width, height, [112,113,112,113,112,113])
can.save()
packet.seek(0)
new_pdf = PdfReader(packet)

for pdf_file in os.listdir(folder_path):
    if pdf_file.endswith(".pdf"):
        pdf_reader = PdfReader(open(os.path.join(folder_path, pdf_file), "rb"))
        pdf_merged = pdf_reader.pages[0]
        pdf_merged.merge_page(new_pdf.pages[0])
        pdf_writer = PdfWriter()
        
        for i in range(len(pdf_reader.pages)):
            if i == 0:
                pdf_writer.add_page(pdf_merged)
            else:
                pdf_writer.add_page(pdf_reader.pages[i])

        with open(os.path.join(output_folder, pdf_file), "wb") as output_file:
            pdf_writer.write(output_file)

print("Watermark added to the specified page of all pdf files and saved in the output folder.")
