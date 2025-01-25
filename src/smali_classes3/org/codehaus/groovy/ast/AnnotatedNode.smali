.class public Lorg/codehaus/groovy/ast/AnnotatedNode;
.super Lorg/codehaus/groovy/ast/ASTNode;


# instance fields
.field private VH:Z

.field private Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codehaus/groovy/ast/AnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field gn:Lorg/codehaus/groovy/ast/ClassNode;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/ASTNode;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/groovy/ast/AnnotatedNode;->Zo:Ljava/util/List;

    return-void
.end method

.method private Zo()V
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/ast/AnnotatedNode;->Zo:Ljava/util/List;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne v0, v1, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/codehaus/groovy/ast/AnnotatedNode;->Zo:Ljava/util/List;

    :cond_e
    return-void
.end method


# virtual methods
.method public j6(Lorg/codehaus/groovy/ast/AnnotationNode;)V
    .registers 3

    invoke-direct {p0}, Lorg/codehaus/groovy/ast/AnnotatedNode;->Zo()V

    iget-object v0, p0, Lorg/codehaus/groovy/ast/AnnotatedNode;->Zo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j6(Lorg/codehaus/groovy/ast/ClassNode;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/ast/AnnotatedNode;->gn:Lorg/codehaus/groovy/ast/ClassNode;

    return-void
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/codehaus/groovy/ast/AnnotatedNode;->VH:Z

    return-void
.end method
