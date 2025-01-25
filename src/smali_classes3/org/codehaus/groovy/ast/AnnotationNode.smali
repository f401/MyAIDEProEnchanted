.class public Lorg/codehaus/groovy/ast/AnnotationNode;
.super Lorg/codehaus/groovy/ast/ASTNode;


# instance fields
.field private EQ:I

.field private VH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/codehaus/groovy/ast/expr/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Lorg/codehaus/groovy/ast/ClassNode;

.field private gn:Z

.field private tp:Z

.field private u7:Z


# direct methods
.method public constructor <init>(Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 3

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/ASTNode;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/ast/AnnotationNode;->VH:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/AnnotationNode;->gn:Z

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/AnnotationNode;->u7:Z

    iput-boolean v0, p0, Lorg/codehaus/groovy/ast/AnnotationNode;->tp:Z

    const/16 v0, 0xff

    iput v0, p0, Lorg/codehaus/groovy/ast/AnnotationNode;->EQ:I

    iput-object p1, p0, Lorg/codehaus/groovy/ast/AnnotationNode;->Zo:Lorg/codehaus/groovy/ast/ClassNode;

    return-void
.end method


# virtual methods
.method public DW(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/groovy/ast/AnnotationNode;->gn:Z

    return-void
.end method

.method public FH(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/groovy/ast/AnnotationNode;->u7:Z

    return-void
.end method

.method public j6(Ljava/lang/String;Lorg/codehaus/groovy/ast/expr/Expression;)V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/groovy/ast/AnnotationNode;->VH:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/groovy/ast/AnnotationNode;->tp:Z

    return-void
.end method
