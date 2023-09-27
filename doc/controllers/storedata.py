import json

from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response

from doc.models import Info


@api_view(["POST"])
def storedata(request):
    try:
        data = json.loads(request.body)
        name = data["first_name"]
        age = data["age"]
        phone_no = data["phone_no"]
        if not name:
            return Response(
                {"message": "name is required"}, status=status.HTTP_409_CONFLICT
            )
        if Info.objects.filter(first_name=name).exists():
            print("You loose")
            return Response(
                {"message": "name already exist , you born too late hehehe"},
                status=status.HTTP_409_CONFLICT,
            )
        Info.objects.create(first_name=name, age=age, phone_no=phone_no)
        # Info.save()
        print("where this will be printed")
        return Response({"message": "Data store successfully , go chill !! "})
    except Exception as e:
        return Response({"Grahhh something broked...": str(e)})
