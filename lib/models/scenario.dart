class Refinement {
  final String label;
  final String output;
  const Refinement({required this.label, required this.output});
}

class Scenario {
  final String id;
  final String situation;
  final String prompt;
  final String baseOutput;
  final List<Refinement> refinements;
  final String takeaway;

  const Scenario({
    required this.id,
    required this.situation,
    required this.prompt,
    required this.baseOutput,
    required this.refinements,
    required this.takeaway,
  });
}
