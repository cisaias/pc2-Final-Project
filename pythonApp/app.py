import dash
import dash_core_components as dccomp
import dash_html_components as html
import flask
import plotly.express as pex
from sqlalchemy import create_engine
import pandas as pnd


external_stylesheets = ['https://codepen.io/chriddyp/pen/bWLwgP.css']

mysql_conn_str = "mysql+pymysql://userdb:password@mysql_db/Proyecto"
engine = create_engine(mysql_conn_str)
datos = pnd.read_sql_table("peliculas", engine)

server = flask.Flask(__name__)
app = dash.Dash(__name__, server=server,external_stylesheets=external_stylesheets)
app.config.suppress_callback_exceptions = True

figuraPopularidad = pex.histogram(datos, x="popularidad",y="titulo", title='Popularidad de peliculas')
figuraPresupuesto = pex.histogram(datos, x="presupuesto",y="titulo", title='Presupuesto de peliculas')
figuraIngresos = pex.histogram(datos, x="ingresos",y="titulo", title='Ingresos de peliculas')


app.layout = html.Div(children=[
    html.H1('Despliegue del proyecto final de Estructura del Computador 2'),

    html.Div(children='''
        Aplicación Dash presentado por Isaias Castañeda, Brayan Palacio, Rodolfo Torres 
    '''),

    dccomp.Graph(
        id='graph-one',
        figure=figuraPopularidad
    ),
    dccomp.Graph(
        id='graph-two',
        figure=figuraPresupuesto
    ),
    dccomp.Graph(
        id='graph-three',
        figure=figuraIngresos
    )

])

if __name__ == '__main__':
    app.run_server(host='0.0.0.0',debug=True, port=8060)