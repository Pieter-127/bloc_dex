import 'package:bloc_dex/data/bloc/pokemon_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/bloc/pokemon_list_event.dart';
import 'components/list_error_widget.dart';
import 'components/list_loader_widget.dart';
import 'components/pokemon_list_widget.dart';
import 'components/search_widget.dart';

class PokemonListPageContent extends StatelessWidget {
  const PokemonListPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BlocDex"),
      ),
      body: BlocProvider(
        create: (context) =>
            PokemonListBloc()..add(LoadPokemonEvent(count: 151)),
        child: BlocBuilder<PokemonListBloc, PokemonListEvent>(
          builder: (context, state) {
            if (state is Loading) {
              return const Center(
                  child: ListLoaderWidget(width: 200, height: 200));
            } else if (state is Error) {
              return Center(
                child: ListErrorWidget(callback: () {
                  context
                      .read<PokemonListBloc>()
                      .add(LoadPokemonEvent(count: 151));
                }),
              );
            } else if (state is Success) {
              return buildSuccessUI(state, context);
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }

  Widget buildSuccessUI(Success state, BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: SearchWidget(
              onTextChanged: (String value) {
                context
                    .read<PokemonListBloc>()
                    .add(FilterPokemonEvent(filter: value));
              },
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          sliver: PokemonListWidget(entries: state.response ?? List.empty()),
        ),
      ],
    );
  }
}
