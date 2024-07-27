.class public Lorg/codehaus/groovy/control/OptimizerVisitor;
.super Lorg/codehaus/groovy/ast/ClassCodeExpressionTransformer;


# instance fields
.field private DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/groovy/ast/FieldNode;",
            ">;"
        }
    .end annotation
.end field

.field private j6:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/codehaus/groovy/control/CompilationUnit;)V
    .registers 3

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/ClassCodeExpressionTransformer;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/OptimizerVisitor;->j6:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/OptimizerVisitor;->DW:Ljava/util/List;

    return-void
.end method
