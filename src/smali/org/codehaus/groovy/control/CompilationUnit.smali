.class public Lorg/codehaus/groovy/control/CompilationUnit;
.super Lorg/codehaus/groovy/control/ProcessingUnit;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/control/CompilationUnit$ClassgenCallback;,
        Lorg/codehaus/groovy/control/CompilationUnit$GroovyClassOperation;,
        Lorg/codehaus/groovy/control/CompilationUnit$PrimaryClassNodeOperation;,
        Lorg/codehaus/groovy/control/CompilationUnit$ProgressCallback;,
        Lorg/codehaus/groovy/control/CompilationUnit$SourceUnitOperation;
    }
.end annotation


# instance fields
.field private BT:Lorg/codehaus/groovy/control/CompilationUnit$SourceUnitOperation;

.field protected EQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/codehaus/groovy/control/SourceUnit;",
            ">;"
        }
    .end annotation
.end field

.field protected J0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/groovy/tools/GroovyClass;",
            ">;"
        }
    .end annotation
.end field

.field protected J8:Lorg/codehaus/groovy/classgen/Verifier;

.field protected Mr:Lorg/codehaus/groovy/control/OptimizerVisitor;

.field private P8:Lorg/codehaus/groovy/control/CompilationUnit$SourceUnitOperation;

.field protected QX:Z

.field protected U2:Lorg/codehaus/groovy/control/ClassNodeResolver;

.field protected VH:Ljava/util/Map;

.field protected Ws:Z

.field protected XL:Lorg/codehaus/groovy/control/CompilationUnit$ClassgenCallback;

.field protected Zo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/codehaus/groovy/control/SourceUnit;",
            ">;"
        }
    .end annotation
.end field

.field a8:[Ljava/util/LinkedList;

.field protected aM:Lorg/codehaus/groovy/control/ResolveVisitor;

.field private er:Lorg/codehaus/groovy/control/CompilationUnit$PrimaryClassNodeOperation;

.field private gW:Lorg/codehaus/groovy/control/CompilationUnit$GroovyClassOperation;

.field protected gn:Ljava/util/Map;

.field protected j3:Lorg/codehaus/groovy/control/StaticImportVisitor;

.field lg:[Ljava/util/LinkedList;

.field private final rN:Lorg/codehaus/groovy/control/CompilationUnit$SourceUnitOperation;

.field protected tp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected u7:Ljava/util/Map;

.field protected v5:Lorg/codehaus/groovy/control/ASTTransformationsContext;

.field private vy:Lorg/codehaus/groovy/control/CompilationUnit$PrimaryClassNodeOperation;

.field protected we:Lorg/codehaus/groovy/ast/CompileUnit;

.field private yS:Lorg/codehaus/groovy/control/CompilationUnit$SourceUnitOperation;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/codehaus/groovy/control/CompilationUnit;-><init>(Lorg/codehaus/groovy/control/CompilerConfiguration;Ljava/security/CodeSource;Lgroovy/lang/GroovyClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/groovy/control/CompilerConfiguration;Ljava/security/CodeSource;Lgroovy/lang/GroovyClassLoader;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codehaus/groovy/control/CompilationUnit;-><init>(Lorg/codehaus/groovy/control/CompilerConfiguration;Ljava/security/CodeSource;Lgroovy/lang/GroovyClassLoader;Lgroovy/lang/GroovyClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/groovy/control/CompilerConfiguration;Ljava/security/CodeSource;Lgroovy/lang/GroovyClassLoader;Lgroovy/lang/GroovyClassLoader;)V
    .registers 13

    const/4 v7, 0x0

    const/16 v6, 0xa

    const/4 v5, 0x3

    const/4 v4, 0x5

    const/4 v3, 0x4

    invoke-direct {p0, p1, p3, v7}, Lorg/codehaus/groovy/control/ProcessingUnit;-><init>(Lorg/codehaus/groovy/control/CompilerConfiguration;Lgroovy/lang/GroovyClassLoader;Lorg/codehaus/groovy/control/ErrorCollector;)V

    new-instance v0, Lorg/codehaus/groovy/control/CompilationUnit$11;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/control/CompilationUnit$11;-><init>(Lorg/codehaus/groovy/control/CompilationUnit;)V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->rN:Lorg/codehaus/groovy/control/CompilationUnit$SourceUnitOperation;

    new-instance v0, Lorg/codehaus/groovy/control/CompilationUnit$12;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/control/CompilationUnit$12;-><init>(Lorg/codehaus/groovy/control/CompilationUnit;)V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->er:Lorg/codehaus/groovy/control/CompilationUnit$PrimaryClassNodeOperation;

    new-instance v0, Lorg/codehaus/groovy/control/CompilationUnit$13;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/control/CompilationUnit$13;-><init>(Lorg/codehaus/groovy/control/CompilationUnit;)V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->yS:Lorg/codehaus/groovy/control/CompilationUnit$SourceUnitOperation;

    new-instance v0, Lorg/codehaus/groovy/control/CompilationUnit$14;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/control/CompilationUnit$14;-><init>(Lorg/codehaus/groovy/control/CompilationUnit;)V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->gW:Lorg/codehaus/groovy/control/CompilationUnit$GroovyClassOperation;

    new-instance v0, Lorg/codehaus/groovy/control/CompilationUnit$15;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/control/CompilationUnit$15;-><init>(Lorg/codehaus/groovy/control/CompilationUnit;)V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->BT:Lorg/codehaus/groovy/control/CompilationUnit$SourceUnitOperation;

    new-instance v0, Lorg/codehaus/groovy/control/CompilationUnit$16;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/control/CompilationUnit$16;-><init>(Lorg/codehaus/groovy/control/CompilationUnit;)V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->vy:Lorg/codehaus/groovy/control/CompilationUnit$PrimaryClassNodeOperation;

    new-instance v0, Lorg/codehaus/groovy/control/CompilationUnit$18;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/control/CompilationUnit$18;-><init>(Lorg/codehaus/groovy/control/CompilationUnit;)V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->P8:Lorg/codehaus/groovy/control/CompilationUnit$SourceUnitOperation;

    new-instance v0, Lorg/codehaus/groovy/control/ASTTransformationsContext;

    invoke-direct {v0, p0, p4}, Lorg/codehaus/groovy/control/ASTTransformationsContext;-><init>(Lorg/codehaus/groovy/control/CompilationUnit;Lgroovy/lang/GroovyClassLoader;)V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->v5:Lorg/codehaus/groovy/control/ASTTransformationsContext;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->tp:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->EQ:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->Zo:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->VH:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->gn:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->u7:Ljava/util/Map;

    new-instance v0, Lorg/codehaus/groovy/ast/CompileUnit;

    iget-object v1, p0, Lorg/codehaus/groovy/control/ProcessingUnit;->FH:Lgroovy/lang/GroovyClassLoader;

    iget-object v2, p0, Lorg/codehaus/groovy/control/ProcessingUnit;->DW:Lorg/codehaus/groovy/control/CompilerConfiguration;

    invoke-direct {v0, v1, p2, v2}, Lorg/codehaus/groovy/ast/CompileUnit;-><init>(Lgroovy/lang/GroovyClassLoader;Ljava/security/CodeSource;Lorg/codehaus/groovy/control/CompilerConfiguration;)V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->we:Lorg/codehaus/groovy/ast/CompileUnit;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->J0:Ljava/util/List;

    new-instance v0, Lorg/codehaus/groovy/classgen/Verifier;

    invoke-direct {v0}, Lorg/codehaus/groovy/classgen/Verifier;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->J8:Lorg/codehaus/groovy/classgen/Verifier;

    new-instance v0, Lorg/codehaus/groovy/control/ResolveVisitor;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/control/ResolveVisitor;-><init>(Lorg/codehaus/groovy/control/CompilationUnit;)V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->aM:Lorg/codehaus/groovy/control/ResolveVisitor;

    new-instance v0, Lorg/codehaus/groovy/control/StaticImportVisitor;

    invoke-direct {v0}, Lorg/codehaus/groovy/control/StaticImportVisitor;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->j3:Lorg/codehaus/groovy/control/StaticImportVisitor;

    new-instance v0, Lorg/codehaus/groovy/control/OptimizerVisitor;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/control/OptimizerVisitor;-><init>(Lorg/codehaus/groovy/control/CompilationUnit;)V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->Mr:Lorg/codehaus/groovy/control/OptimizerVisitor;

    new-array v0, v6, [Ljava/util/LinkedList;

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->a8:[Ljava/util/LinkedList;

    new-array v0, v6, [Ljava/util/LinkedList;

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->lg:[Ljava/util/LinkedList;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/codehaus/groovy/control/CompilationUnit;->a8:[Ljava/util/LinkedList;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/codehaus/groovy/control/CompilationUnit;->lg:[Ljava/util/LinkedList;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/codehaus/groovy/control/CompilationUnit$1;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/control/CompilationUnit$1;-><init>(Lorg/codehaus/groovy/control/CompilationUnit;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/groovy/control/CompilationUnit;->j6(Lorg/codehaus/groovy/control/CompilationUnit$SourceUnitOperation;I)V

    iget-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->yS:Lorg/codehaus/groovy/control/CompilationUnit$SourceUnitOperation;

    invoke-virtual {p0, v0, v5}, Lorg/codehaus/groovy/control/CompilationUnit;->j6(Lorg/codehaus/groovy/control/CompilationUnit$SourceUnitOperation;I)V

    new-instance v0, Lorg/codehaus/groovy/control/CompilationUnit$2;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/control/CompilationUnit$2;-><init>(Lorg/codehaus/groovy/control/CompilationUnit;)V

    invoke-virtual {p0, v0, v5}, Lorg/codehaus/groovy/control/CompilationUnit;->j6(Lorg/codehaus/groovy/control/CompilationUnit$PrimaryClassNodeOperation;I)V

    iget-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->rN:Lorg/codehaus/groovy/control/CompilationUnit$SourceUnitOperation;

    invoke-virtual {p0, v0, v3}, Lorg/codehaus/groovy/control/CompilationUnit;->j6(Lorg/codehaus/groovy/control/CompilationUnit$SourceUnitOperation;I)V

    iget-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->er:Lorg/codehaus/groovy/control/CompilationUnit$PrimaryClassNodeOperation;

    invoke-virtual {p0, v0, v3}, Lorg/codehaus/groovy/control/CompilationUnit;->j6(Lorg/codehaus/groovy/control/CompilationUnit$PrimaryClassNodeOperation;I)V

    new-instance v0, Lorg/codehaus/groovy/control/CompilationUnit$3;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/control/CompilationUnit$3;-><init>(Lorg/codehaus/groovy/control/CompilationUnit;)V

    invoke-virtual {p0, v0, v3}, Lorg/codehaus/groovy/control/CompilationUnit;->j6(Lorg/codehaus/groovy/control/CompilationUnit$PrimaryClassNodeOperation;I)V

    new-instance v0, Lorg/codehaus/groovy/control/CompilationUnit$4;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/control/CompilationUnit$4;-><init>(Lorg/codehaus/groovy/control/CompilationUnit;)V

    invoke-virtual {p0, v0, v4}, Lorg/codehaus/groovy/control/CompilationUnit;->j6(Lorg/codehaus/groovy/control/CompilationUnit$PrimaryClassNodeOperation;I)V

    iget-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->BT:Lorg/codehaus/groovy/control/CompilationUnit$SourceUnitOperation;

    invoke-virtual {p0, v0, v4}, Lorg/codehaus/groovy/control/CompilationUnit;->j6(Lorg/codehaus/groovy/control/CompilationUnit$SourceUnitOperation;I)V

    iget-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->vy:Lorg/codehaus/groovy/control/CompilationUnit$PrimaryClassNodeOperation;

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lorg/codehaus/groovy/control/CompilationUnit;->j6(Lorg/codehaus/groovy/control/CompilationUnit$PrimaryClassNodeOperation;I)V

    iget-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->gW:Lorg/codehaus/groovy/control/CompilationUnit$GroovyClassOperation;

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/control/CompilationUnit;->j6(Lorg/codehaus/groovy/control/CompilationUnit$GroovyClassOperation;)V

    new-instance v0, Lorg/codehaus/groovy/control/CompilationUnit$5;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/control/CompilationUnit$5;-><init>(Lorg/codehaus/groovy/control/CompilationUnit;)V

    invoke-virtual {p0, v0, v3}, Lorg/codehaus/groovy/control/CompilationUnit;->j6(Lorg/codehaus/groovy/control/CompilationUnit$PrimaryClassNodeOperation;I)V

    invoke-static {p0}, Lorg/codehaus/groovy/transform/ASTTransformationVisitor;->addPhaseOperations(Lorg/codehaus/groovy/control/CompilationUnit;)V

    new-instance v0, Lorg/codehaus/groovy/control/CompilationUnit$6;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/control/CompilationUnit$6;-><init>(Lorg/codehaus/groovy/control/CompilationUnit;)V

    invoke-virtual {p0, v0, v3}, Lorg/codehaus/groovy/control/CompilationUnit;->j6(Lorg/codehaus/groovy/control/CompilationUnit$PrimaryClassNodeOperation;I)V

    new-instance v0, Lorg/codehaus/groovy/control/CompilationUnit$7;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/control/CompilationUnit$7;-><init>(Lorg/codehaus/groovy/control/CompilationUnit;)V

    invoke-virtual {p0, v0, v4}, Lorg/codehaus/groovy/control/CompilationUnit;->j6(Lorg/codehaus/groovy/control/CompilationUnit$PrimaryClassNodeOperation;I)V

    new-instance v0, Lorg/codehaus/groovy/control/CompilationUnit$8;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/control/CompilationUnit$8;-><init>(Lorg/codehaus/groovy/control/CompilationUnit;)V

    invoke-virtual {p0, v0, v4}, Lorg/codehaus/groovy/control/CompilationUnit;->j6(Lorg/codehaus/groovy/control/CompilationUnit$PrimaryClassNodeOperation;I)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/codehaus/groovy/control/CompilerConfiguration;->j6()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codehaus/groovy/control/customizers/CompilationCustomizer;

    instance-of v0, v1, Lgroovy/transform/CompilationUnitAware;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lgroovy/transform/CompilationUnitAware;

    invoke-interface {v0, p0}, Lgroovy/transform/CompilationUnitAware;->setCompilationUnit(Lorg/codehaus/groovy/control/CompilationUnit;)V

    :cond_1
    invoke-virtual {v1}, Lorg/codehaus/groovy/control/customizers/CompilationCustomizer;->j6()Lorg/codehaus/groovy/control/CompilePhase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/groovy/control/CompilePhase;->Hw()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/codehaus/groovy/control/CompilationUnit;->j6(Lorg/codehaus/groovy/control/CompilationUnit$PrimaryClassNodeOperation;I)V

    goto :goto_1

    :cond_2
    iput-object v7, p0, Lorg/codehaus/groovy/control/CompilationUnit;->XL:Lorg/codehaus/groovy/control/CompilationUnit$ClassgenCallback;

    new-instance v0, Lorg/codehaus/groovy/control/ClassNodeResolver;

    invoke-direct {v0}, Lorg/codehaus/groovy/control/ClassNodeResolver;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->U2:Lorg/codehaus/groovy/control/ClassNodeResolver;

    return-void
.end method

.method private j6(Lorg/codehaus/groovy/control/CompilerConfiguration;Lgroovy/lang/GroovyClassLoader;)V
    .registers 3

    return-void
.end method


# virtual methods
.method public j6(Lorg/codehaus/groovy/control/CompilationUnit$GroovyClassOperation;)V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->a8:[Ljava/util/LinkedList;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public j6(Lorg/codehaus/groovy/control/CompilationUnit$PrimaryClassNodeOperation;I)V
    .registers 5

    if-ltz p2, :cond_0

    const/16 v0, 0x9

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->a8:[Ljava/util/LinkedList;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phase "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public j6(Lorg/codehaus/groovy/control/CompilationUnit$SourceUnitOperation;I)V
    .registers 5

    if-ltz p2, :cond_0

    const/16 v0, 0x9

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->a8:[Ljava/util/LinkedList;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phase "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public j6(Lorg/codehaus/groovy/control/CompilerConfiguration;)V
    .registers 4

    invoke-super {p0, p1}, Lorg/codehaus/groovy/control/ProcessingUnit;->j6(Lorg/codehaus/groovy/control/CompilerConfiguration;)V

    invoke-virtual {p1}, Lorg/codehaus/groovy/control/CompilerConfiguration;->DW()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->Ws:Z

    iget-boolean v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->QX:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/groovy/control/ProcessingUnit;->FH:Lgroovy/lang/GroovyClassLoader;

    instance-of v1, v0, Lgroovy/lang/GroovyClassLoader;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/groovy/control/CompilationUnit;->j6(Lorg/codehaus/groovy/control/CompilerConfiguration;Lgroovy/lang/GroovyClassLoader;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/groovy/control/CompilationUnit;->QX:Z

    return-void
.end method
