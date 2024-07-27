.class public abstract Lorg/codehaus/groovy/control/ProcessingUnit;
.super Ljava/lang/Object;


# instance fields
.field protected DW:Lorg/codehaus/groovy/control/CompilerConfiguration;

.field protected FH:Lgroovy/lang/GroovyClassLoader;

.field protected Hw:Lorg/codehaus/groovy/control/ErrorCollector;

.field protected j6:I


# direct methods
.method public constructor <init>(Lorg/codehaus/groovy/control/CompilerConfiguration;Lgroovy/lang/GroovyClassLoader;Lorg/codehaus/groovy/control/ErrorCollector;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/codehaus/groovy/control/ProcessingUnit;->j6:I

    iput-object p1, p0, Lorg/codehaus/groovy/control/ProcessingUnit;->DW:Lorg/codehaus/groovy/control/CompilerConfiguration;

    invoke-virtual {p0, p2}, Lorg/codehaus/groovy/control/ProcessingUnit;->j6(Lgroovy/lang/GroovyClassLoader;)V

    if-nez p1, :cond_0

    new-instance p1, Lorg/codehaus/groovy/control/CompilerConfiguration;

    invoke-direct {p1}, Lorg/codehaus/groovy/control/CompilerConfiguration;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/control/ProcessingUnit;->j6(Lorg/codehaus/groovy/control/CompilerConfiguration;)V

    if-nez p3, :cond_1

    new-instance p3, Lorg/codehaus/groovy/control/ErrorCollector;

    invoke-virtual {p0}, Lorg/codehaus/groovy/control/ProcessingUnit;->DW()Lorg/codehaus/groovy/control/CompilerConfiguration;

    move-result-object v0

    invoke-direct {p3, v0}, Lorg/codehaus/groovy/control/ErrorCollector;-><init>(Lorg/codehaus/groovy/control/CompilerConfiguration;)V

    :cond_1
    iput-object p3, p0, Lorg/codehaus/groovy/control/ProcessingUnit;->Hw:Lorg/codehaus/groovy/control/ErrorCollector;

    return-void
.end method


# virtual methods
.method public DW()Lorg/codehaus/groovy/control/CompilerConfiguration;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/control/ProcessingUnit;->DW:Lorg/codehaus/groovy/control/CompilerConfiguration;

    return-object v0
.end method

.method public FH()Lorg/codehaus/groovy/control/ErrorCollector;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/control/ProcessingUnit;->Hw:Lorg/codehaus/groovy/control/ErrorCollector;

    return-object v0
.end method

.method public j6()Lgroovy/lang/GroovyClassLoader;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/control/ProcessingUnit;->FH:Lgroovy/lang/GroovyClassLoader;

    return-object v0
.end method

.method public j6(Lgroovy/lang/GroovyClassLoader;)V
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    const-class v0, Lorg/codehaus/groovy/control/ProcessingUnit;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lgroovy/lang/GroovyClassLoader;

    iget-object v1, p0, Lorg/codehaus/groovy/control/ProcessingUnit;->DW:Lorg/codehaus/groovy/control/CompilerConfiguration;

    invoke-direct {p1, v0, v1}, Lgroovy/lang/GroovyClassLoader;-><init>(Ljava/lang/ClassLoader;Lorg/codehaus/groovy/control/CompilerConfiguration;)V

    :cond_1
    iput-object p1, p0, Lorg/codehaus/groovy/control/ProcessingUnit;->FH:Lgroovy/lang/GroovyClassLoader;

    return-void
.end method

.method public j6(Lorg/codehaus/groovy/control/CompilerConfiguration;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/control/ProcessingUnit;->DW:Lorg/codehaus/groovy/control/CompilerConfiguration;

    return-void
.end method
