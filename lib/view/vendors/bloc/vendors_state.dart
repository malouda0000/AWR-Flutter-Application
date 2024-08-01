part of 'vendors_bloc.dart';

sealed class VendorsState extends Equatable {
  const VendorsState();
  
  @override
  List<Object> get props => [];
}

final class VendorsInitial extends VendorsState {}
