.class public Lorg/codehaus/groovy/control/customizers/ImportCustomizer;
.super Lorg/codehaus/groovy/control/customizers/CompilationCustomizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/control/customizers/ImportCustomizer$Import;,
        Lorg/codehaus/groovy/control/customizers/ImportCustomizer$ImportType;
    }
.end annotation


# instance fields
.field private final DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codehaus/groovy/control/customizers/ImportCustomizer$Import;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lorg/codehaus/groovy/control/CompilePhase;->FH:Lorg/codehaus/groovy/control/CompilePhase;

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/control/customizers/CompilationCustomizer;-><init>(Lorg/codehaus/groovy/control/CompilePhase;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/customizers/ImportCustomizer;->DW:Ljava/util/List;

    return-void
.end method
