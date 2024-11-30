#Bruno Filipe Oliveira Aguiar
# brunoaguiar@ua.pt
from semantic_network import *
from bayes_net import *

class MySN(SemanticNetwork):

    def query_dependents(self,entity):
        tree = [self.query_dependents(declaration.relation.entity1) for declaration in self.declarations if (isinstance(declaration.relation, Depends) or isinstance(declaration.relation, Subtype)) and (entity == declaration.relation.entity2)]
        local = [declaration.relation.entity1 for declaration in self.query_local(e2=entity, rel = 'depends')]
        supertypes = []
        for l in local:
            local = local + [declaration.relation.entity1 for declaration in self.query_local(e2=l, rel = 'subtype')]
            supertypes = supertypes + [declaration.relation.entity2 for declaration in self.query_local(e2=l, rel = 'subtype')]
        return list(set([d for ramo in tree for d in ramo] + [item for item in local if item not in supertypes]))
    

    def query_causes(self, entity):
        tree = [self.query_causes(declaration.relation.entity2) for declaration in self.declarations if (isinstance(declaration.relation, Depends) or isinstance(declaration.relation, Subtype)) and (entity == declaration.relation.entity1)]
        local = [declaration.relation.entity2 for declaration in self.query_local(e1=entity, rel = 'depends')]
        supertypes = []
        for l in local:
            local = local + [declaration.relation.entity2 for declaration in self.query_local(e1=l, rel = 'subtype')]
            supertypes = supertypes + [declaration.relation.entity2 for declaration in self.query_local(e1=l, rel = 'subtype')]
        return list(set([d for ramo in tree for d in ramo] + [item for item in local if item not in supertypes]))

    def query_causes_sorted(self,entity): 
        malfunctions = self.query_causes(entity)
        associations_list = [self.query_local(e1 = m, rel = 'debug_time') for m in malfunctions]
        tuples = [(declaration.relation.entity1, declaration.relation.entity2) for lista in associations_list for declaration in lista]
        dicionario = {item[0]: [] for item in tuples}
        for item in tuples:
            dicionario[item[0]].append(item[1])
        return sorted([(item, int(sum(dicionario.get(item))/len(dicionario.get(item)))) for item in dicionario], key = lambda item: (item[1], item[0]))

class MyBN(BayesNet):

    def markov_blanket(self,var):
        
        tuplevars = [(n, [m for m, x in list(self.dependencies[n].keys())[0]]) for n in self.dependencies] 
        childrens_vars = [n for n, lista in tuplevars for item in lista if item == var]
        fathers_var = [item for n, lista in tuplevars for item in lista if n == var]
        fathers_childrens_vars = [item for child in childrens_vars for n, lista in tuplevars for item in lista if n == child]
        return [item for item in (childrens_vars + fathers_var + fathers_childrens_vars) if item != var]
