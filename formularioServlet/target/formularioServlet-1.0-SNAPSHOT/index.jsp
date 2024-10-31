<%-- 
    Document   : index
    Created on : Oct 30, 2024, 10:35:33 PM
    Author     : carlo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Usuarios</title>
        <link rel="stylesheet" href="./styles/index.css"/>
    </head>
    <body>
        <form action="RegistroUsuarios" method="POST" class="contenedor">
            <header>
                <h1>Create Account</h1>
            </header>
            <div class="inputs">
                <div class="group-input" id="full-name">
                    <div class="group-label">
                        <label for="" class="block">First name*</label>
                        <input
                            type="text"
                            placeholder="enter your first name"
                            class="widthInput"
                            name="name"
                            required
                            />
                    </div>

                    <div class="group-label">
                        <label for="">Last name</label>
                        <input
                            type="text"
                            placeholder="enter your last name"
                            class="widthInput"
                            name="lastName"
                            />
                    </div>
                </div>

                <div class="group-input" id="password">
                    <div class="group-label">
                        <label for="email" class="block">Email*</label>
                        <input
                            type="email"
                            placeholder="enter your email"
                            class="widthInput"
                            name="email"
                            />
                    </div>
                </div>

                <div class="group-input" id="full-name">
                    <div class="group-label">
                        <label for="" class="block">Password*</label>
                        <input
                            type="password"
                            placeholder="enter your password"
                            class="widthInput"
                            name="password"
                            />
                    </div>

                    <div class="group-label">
                        <label for="" class="block">Confirm Password*</label>
                        <input
                            type="password"
                            placeholder="enter your password again"
                            class="widthInput"
                            name="confirmPassword"
                            />
                    </div>
                </div>

                <div class="group-input" id="full-name">
                    <div class="group-label">
                        <label for="" class="block">Gender:</label>
                        <input type="radio" name="gender" id="male" />
                        <label for="" class="optionsRadio">Male</label>

                        <input type="radio" name="gender" id="female" />
                        <label for="" class="optionsRadio">Female</label>
                    </div>

                    <div class="group-label">
                        <label for="" class="block">Hobbies</label>
                        <input type="checkbox" name="hobbies" id="music" />
                        <label for="" class="optionsCheck">Music</label>

                        <input type="checkbox" name="hobbies" id="sports" />
                        <label for="" class="optionsCheck">Sports</label>

                        <input type="checkbox" name="hobbies" id="travel" />
                        <label for="" class="optionsCheck">Travel</label>

                        <input type="checkbox" name="hobbies" id="movies" />
                        <label for="" class="optionsCheck">Movies</label>
                    </div>
                </div>

                <div class="group-input" id="full-name">
                    <div class="group-label">
                        <label for="" class="block">Source of Income</label>
                        <select name="sourceIncome" id="sourceIncome" class="widthInput">
                            <option value="employed">Employed</option>
                            <option value="unemployed">Unemployed</option>
                        </select>
                    </div>

                    <div class="group-label">
                        <label for="" class="block">Income</label>
                        <div class="range">
                            <input type="range" name="income" id="incomeRange" value="50" />
                            <label for="" id="income">50K</label>
                        </div>
                    </div>
                </div>

                <div class="group-input" id="full-name">
                    <div class="group-label">
                        <label for="" class="block">Upload Profile Picture</label>
                        <input type="file" name="" id="" class="textFile" />
                    </div>

                    <div class="group-label">
                        <label for="" class="block">Age</label>
                        <input type="number" class="widthInput" />
                    </div>
                </div>

                <label for="" class="block">Bio</label>
                <textarea name="" id="" class="widthInput maxWidthArea"></textarea>
            </div>
            <footer>
                <button type="submit" class="createBtn">Create</button>
            </footer>
        </form>
        <script>
            const income = document.querySelector("#income");
            const incomeRange = document.querySelector("#incomeRange");

            incomeRange.addEventListener("input", () => {
                income.innerText = incomeRange.value + "K";
            })
        </script>
    </body>
</html>
