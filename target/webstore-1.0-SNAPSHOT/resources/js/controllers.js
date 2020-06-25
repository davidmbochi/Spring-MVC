var cartApp=angular.module('cartApp',[]);

cartApp.controller('cartCtrl',function ($scope,$http) {
    $scope.refreshCart=function (cartId) {
        $http.get('/webstore/rest/cart/'+$scope.cartId)
            .success(function (data) {
                $scope.cart=data;

            });

    };
    $scope.clearCart=function () {
        $http.delete('/webstore/rest/cart/'+$scope.cartId)
            .success(function (data) {
                $scope.refreshCart($scope.cartId)

            });

    };
    $scope.initCartId=function (cartId) {
        $scope.cartId=cartId;
        $scope.refreshCart($scope.cartId);

    };
    $scope.addToCart=function (prductId) {
        $http.put('/webstore/rest/cart/add/'+prductId)
            .success(function (data) {
                alert("Product Successfully added to the cart !")

            });

    };
    $scope.removeFromCart=function (productId) {
        $http.put('/webstore/rest/cart/remove/'+productId)
            .success(function (data) {
                $scope.refreshCart($scope.cartId);

            });

    };

});