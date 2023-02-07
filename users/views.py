from django.shortcuts import render, redirect
from django.views.decorators.csrf import csrf_exempt

from rest_framework import viewsets, generics, status
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import IsAuthenticated, AllowAny
from rest_framework.authtoken.views import ObtainAuthToken
from rest_framework.authtoken.models import Token
from rest_framework.response import Response
from rest_framework.views import APIView

from .models import User
from .serializers import UserSerializer
from .tokens import account_activation_token
from ..databaseApp.models import Lessons, Professors, Groups, Dates


class SecretView(APIView):

    @api_view(('GET',))
    @permission_classes([IsAuthenticated])
    def get_secret(request, format=None):
        stud_name = ['DAMIAN PĘSZOR', 'AGNIESZKA SZCZĘSNA', 'KAMIL WERESZCZYŃSKI']
        stud_age = ['DR. INŻ', 'DR. INŻ','DR. INŻ']

        for i in range(len(stud_name)):
            # Insert in the database
            Professors.objects.create(ProfessorName=stud_name[i], ProfessorDegree=stud_age[i])

        Groups.objects.create('INFORMATYKA', 'INŻYNIER', 1)
        Groups.objects.create('AUTOMATYKA I ELEKTRONIKA', 'INŻYNIER', 1)
        Groups.objects.create('BIOTECHNOLOGIA', 'INŻYNIER', 1)
        Groups.objects.create('INFORMATYKA', 'INŻYNIER', 2)
        Groups.objects.create('AUTOMATYKA I ELEKTRONIKA', 'INŻYNIER', 2)
        Groups.objects.create('BIOTECHNOLOGIA', 'INŻYNIER', 2)
        Groups.objects.create('INFORMATYKA', 'INŻYNIER', 3)
        Groups.objects.create('AUTOMATYKA I ELEKTRONIKA', 'INŻYNIER', 3)
        Groups.objects.create('BIOTECHNOLOGIA', 'INŻYNIER', 3)
        Groups.objects.create('INFORMATYKA', 'INŻYNIER', 4)
        Groups.objects.create('AUTOMATYKA I ELEKTRONIKA', 'INŻYNIER', 4)
        Groups.objects.create('BIOTECHNOLOGIA', 'INŻYNIER', 4)
        Groups.objects.create('AUTOMATYKA I ELEKTRONIKA', 'INŻYNIER', 5)

        Dates.objects.create('PARZYSTY', 'PONIEDZIAŁEK', '13:00')
        Dates.objects.create('PARZYSTY', 'ŚRODA', '14:00')
        Dates.objects.create('PARZYSTY', 'PIĄTEK', '10:00')
        Dates.objects.create('PARZYSTY', 'PONIEDZIAŁEK', '8:15')
        Dates.objects.create('PARZYSTY', 'ŚRODA', '17:30')
        Dates.objects.create('PARZYSTY', 'PIĄTEK', '10:45')
        Dates.objects.create('NIEPARZYSTY', 'PONIEDZIAŁEK', '13:00')
        Dates.objects.create('NIEPARZYSTY', 'ŚRODA', '12:15')
        Dates.objects.create('NIEPARZYSTY', 'PIĄTEK', '12:30')

        Lessons.objects.create('MODELOWANIE CYFROWE', 310, 8, 4, 1)
        Lessons.objects.create('TECHNIKA CYFROWA', 210, 2, 9, 3)
        Lessons.objects.create('MATEMATYKA', 10, 6, 6, 2)
        Lessons.objects.create('PROGRAMOWANIE', 524, 6, 4, 2)




        uid = request.user.pk

        try:
            user = User.objects.all().get(pk=uid)
        except(TypeError, ValueError, OverflowError, User.DoesNotExist):
            user = None

        if user is not None:
            status_code = status.HTTP_200_OK
            response = {
                'success': 'True',
                'status code': status_code,
                'secret': user.secret
            }

            return Response(response, status=status_code)

        else:
            status_code = status.HTTP_404_NOT_FOUND
            response = {
                'success': 'False',
                'status code': status_code
            }

            return Response(response, status=status_code)


class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    permission_classes = [IsAuthenticated]


class UserLogIn(ObtainAuthToken):

    #@csrf_exempt
    def post(self, request, *args, **kwargs):


        serializer = self.serializer_class(data=request.data,
                                           context={'request': request})
        serializer.is_valid(raise_exception=True)
        user = serializer.validated_data['user']
        token = Token.objects.get(user=user)
        return Response({
            'token': token.key,
            'id': user.pk,
            'username': user.username
        })


class UserCreate(generics.CreateAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    permission_classes = (AllowAny, )

    def post(self, request):
        serializer = self.serializer_class(data=request.data)
        serializer.is_valid(raise_exception=True)
        user = serializer.save()
        status_code = status.HTTP_201_CREATED
        token = account_activation_token.make_token(user=user)
        response = {
            'success': 'True',
            'status code': status_code,
            'message': 'User registered  successfully',
            'user': serializer.data,
            'token': token
        }

        return Response(response, status=status_code)


class ActivateUser(APIView):

    @api_view(('GET',))
    @permission_classes([AllowAny])
    def activate(self, uid, token):

        try:
            user = User.objects.all().get(pk=uid)
        except(TypeError, ValueError, OverflowError, User.DoesNotExist):
            user = None

        if user is not None and account_activation_token.check_token(user, token):
            user.is_active = True
            user.save()

            status_code = status.HTTP_200_OK
            response = {
                'success': 'True',
                'status code': status_code,
                'message': 'User activated  successfully'
            }

            return Response(response, status=status_code)

        else:
            status_code = status.HTTP_404_NOT_FOUND
            response = {
                'success': 'False',
                'status code': status_code,
                'message': 'User activated  error'
             }

            return Response(response, status=status_code)


