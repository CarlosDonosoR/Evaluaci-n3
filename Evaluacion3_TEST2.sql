--Pregunta 1: Conocer el numero de evaluaciones por curso
select tipo_curso as "Tipo de Curso" ,count(alumno.test_id_test) as "Numero de Evaluaciones", 
count(alumno.id_alumno) as "Cantidad Alumnos"
from alumno
inner join curso on (alumno.curso_id_curso = curso.id_curso)
group by tipo_curso;

--Pregunta 2: Conocer los cursos sin evaluaciones
select tipo_curso as "Tipo Curso", count(alumno.test_id_test) as "Numero de Evaluaciones",
count(alumno.id_alumno) as "Cantidad Alumnos"
from alumno
inner join curso on (alumno.curso_id_curso = curso.id_curso)
where alumno.test_id_test is null
group by tipo_curso;

--Pregunta 3: Determinar evaluaciones con deficiencia
select nombre_test as "Tipo de Evaluacion", 
count(preguntas.test_id_test) from evaluacion
inner join preguntas on (evaluacion.id_test = preguntas.test_id_test)
group by nombre_test;

--Pregunta 4: Determinar cuantos alumnos hay en un curso
select tipo_curso as "Tipo de Curso" , 
count(alumno.id_alumno) as "Cantidad Alumnos"
from alumno
inner join curso on (alumno.curso_id_curso = curso.id_curso)
group by tipo_curso;

--Pregunta 5: Obtener el puntaje no normalizado de cada evaluacion






