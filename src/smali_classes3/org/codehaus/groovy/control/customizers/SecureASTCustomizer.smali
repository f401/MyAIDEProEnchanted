.class public Lorg/codehaus/groovy/control/customizers/SecureASTCustomizer;
.super Lorg/codehaus/groovy/control/customizers/CompilationCustomizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/control/customizers/SecureASTCustomizer$ExpressionChecker;,
        Lorg/codehaus/groovy/control/customizers/SecureASTCustomizer$SecuringCodeVisitor;,
        Lorg/codehaus/groovy/control/customizers/SecureASTCustomizer$StatementChecker;
    }
.end annotation


# instance fields
.field private DW:Z

.field private FH:Z

.field private Hw:Z

.field private final Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codehaus/groovy/control/customizers/SecureASTCustomizer$ExpressionChecker;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codehaus/groovy/control/customizers/SecureASTCustomizer$StatementChecker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lorg/codehaus/groovy/control/CompilePhase;->v5:Lorg/codehaus/groovy/control/CompilePhase;

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/control/customizers/CompilationCustomizer;-><init>(Lorg/codehaus/groovy/control/CompilePhase;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/groovy/control/customizers/SecureASTCustomizer;->DW:Z

    iput-boolean v0, p0, Lorg/codehaus/groovy/control/customizers/SecureASTCustomizer;->FH:Z

    iput-boolean v0, p0, Lorg/codehaus/groovy/control/customizers/SecureASTCustomizer;->Hw:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/customizers/SecureASTCustomizer;->v5:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/customizers/SecureASTCustomizer;->Zo:Ljava/util/List;

    return-void
.end method
