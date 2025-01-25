.class public Lorg/codehaus/groovy/ast/expr/ClosureListExpression;
.super Lorg/codehaus/groovy/ast/expr/ListExpression;


# instance fields
.field private we:Lorg/codehaus/groovy/ast/VariableScope;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/ast/expr/ClosureListExpression;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codehaus/groovy/ast/expr/Expression;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/ast/expr/ListExpression;-><init>(Ljava/util/List;)V

    new-instance p1, Lorg/codehaus/groovy/ast/VariableScope;

    invoke-direct {p1}, Lorg/codehaus/groovy/ast/VariableScope;-><init>()V

    iput-object p1, p0, Lorg/codehaus/groovy/ast/expr/ClosureListExpression;->we:Lorg/codehaus/groovy/ast/VariableScope;

    return-void
.end method
