


function question(){
    var qstring = "What is your favorite color?";
    var answer1 = "red";
    var answer2 =  "no--blue--ahhhhhh!";
    $('#current-question').html(qstring);
    $('#first-q').html(answer1);
    $('#second-q').html(answer2);
}

function question2(){
    var qstring = "What is your favorite animal?";
    var answer1 = "Dog";
    var answer2 =  "Cat (hint: this answer is wrong hahaha)";
    $('#current-question').html(qstring);
    $('#first-q').html(answer1);
    $('#second-q').html(answer2);

    $('button').click(function(){
        question3();
    });
}
function question3(){
    var qstring = "Which wizard is best? Gandalf or Dumbledore";
    var answer1 = "Gandalf";
    var answer2 =  "Dumbledore";
    $('#current-question').html(qstring);
    $('#first-q').html(answer1);
    $('#second-q').html(answer2);
    $('button').click(function(){
        question4();
    });
}


function question4(){
    var qstring = "Who is nuttier? Harry Potter or Luke Skywalker?";
    var answer1 = "Harry";
    var answer2 =  "Luke";
    $('#current-question').html(qstring);
    $('#first-q').html(answer1);
    $('#second-q').html(answer2);
    $('button').click(function(){
        question5();
    });
}

function question5(){
    var qstring = "Last Question, Are you excited for Christmas?";
    var answer1 = "Absolutely!";
    var answer2 =  "Bah-Humbug";
    $('#current-question').html(qstring);
    $('#first-q').html(answer1);
    $('#second-q').html(answer2);
    $('button').click(function(){
        question6();
    });
}

function question6(){
    var qstring = "That's All Folks please push 'Finish the Game' to see your score.";
    var answer1 = "";
    var answer2 =  "";
    $('#current-question').html(qstring);
    $('#first-q').html(answer1);
    $('#second-q').html(answer2);
}




$(document).ready(function(){
    question();
    $('button').click(function(){
        answer();
        question2();
    });
});

function answer(){
    var answer = $('input[name=answer]:checked').val();
    if(answer === "correct")
    {
        //add five to score
        $('#scorekeeper').val(parseInt($('#scorekeeper').val()) + 5);
        alert("CORRECT! YOUR SCORE IS:  " + $('#scorekeeper').val() + "!");
    }
    else
    {
        //subtract five to score
        $('#scorekeeper').val(parseInt($('#scorekeeper').val()) - 5);
        alert("INCORRECT! YOUR SCORE IS:  " + $('#scorekeeper').val() + "!")
    }
}





