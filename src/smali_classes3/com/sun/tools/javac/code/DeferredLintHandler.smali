.class public Lcom/sun/tools/javac/code/DeferredLintHandler;
.super Ljava/lang/Object;
.source "DeferredLintHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/code/DeferredLintHandler$LintLogger;
    }
.end annotation


# static fields
.field protected static final deferredLintHandlerKey:Lcom/sun/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Context$Key",
            "<",
            "Lcom/sun/tools/javac/code/DeferredLintHandler;",
            ">;"
        }
    .end annotation
.end field

.field public static final immediateHandler:Lcom/sun/tools/javac/code/DeferredLintHandler;


# instance fields
.field private currentPos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

.field private loggersQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/util/ListBuffer",
            "<",
            "Lcom/sun/tools/javac/code/DeferredLintHandler$LintLogger;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lcom/sun/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/code/DeferredLintHandler;->deferredLintHandlerKey:Lcom/sun/tools/javac/util/Context$Key;

    .line 89
    new-instance v0, Lcom/sun/tools/javac/code/DeferredLintHandler$1;

    invoke-direct {v0}, Lcom/sun/tools/javac/code/DeferredLintHandler$1;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/code/DeferredLintHandler;->immediateHandler:Lcom/sun/tools/javac/code/DeferredLintHandler;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/code/DeferredLintHandler;->loggersQueue:Ljava/util/Map;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/tools/javac/code/DeferredLintHandler$1;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/sun/tools/javac/code/DeferredLintHandler;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/sun/tools/javac/util/Context;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/code/DeferredLintHandler;->loggersQueue:Ljava/util/Map;

    .line 55
    sget-object v0, Lcom/sun/tools/javac/code/DeferredLintHandler;->deferredLintHandlerKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lcom/sun/tools/javac/util/Context;->put(Lcom/sun/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public static instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/DeferredLintHandler;
    .registers 2

    .line 48
    sget-object v0, Lcom/sun/tools/javac/code/DeferredLintHandler;->deferredLintHandlerKey:Lcom/sun/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/Context;->get(Lcom/sun/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/DeferredLintHandler;

    .line 49
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/sun/tools/javac/code/DeferredLintHandler;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/DeferredLintHandler;-><init>(Lcom/sun/tools/javac/util/Context;)V

    .line 51
    :cond_0
    return-object v0
.end method


# virtual methods
.method public flush(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/sun/tools/javac/code/DeferredLintHandler;->loggersQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/ListBuffer;

    .line 75
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/DeferredLintHandler$LintLogger;

    .line 77
    invoke-interface {v0}, Lcom/sun/tools/javac/code/DeferredLintHandler$LintLogger;->report()V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/DeferredLintHandler;->loggersQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1
    return-void
.end method

.method public report(Lcom/sun/tools/javac/code/DeferredLintHandler$LintLogger;)V
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/sun/tools/javac/code/DeferredLintHandler;->loggersQueue:Ljava/util/Map;

    iget-object v1, p0, Lcom/sun/tools/javac/code/DeferredLintHandler;->currentPos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/ListBuffer;

    .line 69
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    .line 71
    return-void
.end method

.method public setPos(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lcom/sun/tools/javac/code/DeferredLintHandler;
    .registers 4

    .line 84
    iput-object p1, p0, Lcom/sun/tools/javac/code/DeferredLintHandler;->currentPos:Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    .line 85
    iget-object v0, p0, Lcom/sun/tools/javac/code/DeferredLintHandler;->loggersQueue:Ljava/util/Map;

    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-object p0
.end method
