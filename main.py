
from pyscript import document  # type: ignore

def candidate_checker(e):
    club_members = ["ethan de leon", "yujin kim", "miguel lasap", "antonio mago"]

    f_name = document.getElementById("first_name").value
    l_name = document.getElementById("last_name").value

    candidate = f_name.strip() + " " + l_name.strip()

    member_checker = candidate.lower() in club_members

    messages = (
        f"Sorry {candidate}, looks like your name ain't on the list.",
        f"Congratulations {candidate}! You are now part of the Pea Brain Club."
    )

    document.getElementById("result").innerText = messages[member_checker]
