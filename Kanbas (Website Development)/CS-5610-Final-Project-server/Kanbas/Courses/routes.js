import * as dao from "./dao.js";
import * as modulesDao from "../Modules/dao.js";
import * as assignmentsDao from "../Assignments/dao.js";
import * as quizzesDao from "../Quizzes/dao.js";

export default function CourseRoutes(app) {
  
  app.get("/api/courses", async (req, res) => {
    const courses = await dao.findAllCourses();
    res.send(courses);
  });

  app.post("/api/courses", async (req, res) => {
    const course = await dao.createCourse(req.body);
    res.json(course);
  }); 
 

  app.delete("/api/courses/:courseId", async (req, res) => {
    const { courseId } = req.params;
    const status = await dao.deleteCourse(courseId);
    res.send(status);
  });

  app.put("/api/courses/:courseId", async (req, res) => {
    const { courseId } = req.params;
    const courseUpdates = req.body;
    const status = await dao.updateCourse(courseId, courseUpdates);
    res.send(status);
  });


  app.get("/api/courses/:courseId/modules", async (req, res) => {
    const { courseId } = req.params;
    
    const modules = await modulesDao.findModulesForCourse(courseId);
    res.json(modules);
  });
 


  app.post("/api/courses/:courseId/modules", async (req, res) => {
    const { courseId } = req.params;
    const module = {
      ...req.body,
      course: courseId,
    };
    const newModule = await modulesDao.createModule(module);
    res.send(newModule);
  });


  app.post("/api/courses/:courseId/assignments", async (req, res) => {
    const {courseId} = req.params;
    const assignment = {
      ...req.body,
      course:courseId,
    }
    const newAssignment = await assignmentsDao.createAssignment(assignment)
    res.send(newAssignment)
  }
  )

  app.get("/api/courses/:courseId/assignments", async (req, res) => {
    const { courseId } = req.params;
    const assignments = await assignmentsDao.findAssignmentsForCourse(courseId);
    res.json(assignments);
  });



  app.post("/api/courses/:courseId/quizzes", async (req, res) => {
    const {courseId} = req.params;
    const quiz = {
      ...req.body,
      course:courseId,
    }
    const newQuiz = await quizzesDao.createQuiz(quiz)
    res.send(newQuiz)
  }
  )

  app.get("/api/courses/:courseId/quizzes", async (req, res) => {
    const { courseId } = req.params;
    const quizzes = await quizzesDao.findQuizzesForCourse(courseId);
    res.json(quizzes);
  });

}


