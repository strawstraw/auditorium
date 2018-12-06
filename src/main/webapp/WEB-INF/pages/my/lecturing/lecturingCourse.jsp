<%@ page trimDirectiveWhitespaces="true" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<tags:main pageTitle="Course">
    <div class="container">
        <form action="/my/lecturing-courses/${courseId}" method="post" autocomplete="off">
          <div class="form-group">
            <label for="courseName">Course Name</label>
            <input type="text" class="form-control" id="courseName" name="courseName" placeholder="Enter course name" required <c:if test="${course.isPresent()}">
                                                                                                                  value="${course.get().getName()}"
                                                                                                             </c:if>>
          </div>
          <div class="form-group">
            <label for="courseCode">Course Code</label>
            <input type="text" class="form-control" id="courseCode" name="courseCode" placeholder="Enter course code" required <c:if test="${course.isPresent()}">
                                                                                                                  value="${course.get().getCode()}"
                                                                                                             </c:if>>
          </div>
          <div class="form-group">
            <label for="courseDescription">Course Description</label>
            <textarea class="form-control" id="courseDescription" name="courseDescription" rows="5"><c:if test="${course.isPresent()}">${course.get().getDescription()}</c:if></textarea>
          </div>
          <button type="submit" class="btn btn-primary">Save</button>
            <button type="submit" class="btn btn-danger" onclick="return Warning()" form="deleteForm">Delete</button>
            <script>
              function Warning(){
                  var b = confirm("Are you sure you want to delete this course?");
                  if (b)
                      return true;
                  return false;
              }
            </script>
        </form>
        <form id="deleteForm" action="/my/lecturing-courses/${courseId}/delete" method="post"></form>
    </div>
</tags:main>