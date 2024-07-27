.class public final Lcom/sun/source/util/TaskEvent;
.super Ljava/lang/Object;
.source "TaskEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/source/util/TaskEvent$Kind;
    }
.end annotation


# instance fields
.field private clazz:Ljavax/lang/model/element/TypeElement;

.field private file:Ljavax/tools/JavaFileObject;

.field private kind:Lcom/sun/source/util/TaskEvent$Kind;

.field private unit:Lcom/sun/source/tree/CompilationUnitTree;


# direct methods
.method public constructor <init>(Lcom/sun/source/util/TaskEvent$Kind;)V
    .registers 3

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;Ljavax/tools/JavaFileObject;Lcom/sun/source/tree/CompilationUnitTree;Ljavax/lang/model/element/TypeElement;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/util/TaskEvent$Kind;Lcom/sun/source/tree/CompilationUnitTree;)V
    .registers 5

    .line 80
    invoke-interface {p2}, Lcom/sun/source/tree/CompilationUnitTree;->getSourceFile()Ljavax/tools/JavaFileObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;Ljavax/tools/JavaFileObject;Lcom/sun/source/tree/CompilationUnitTree;Ljavax/lang/model/element/TypeElement;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/util/TaskEvent$Kind;Lcom/sun/source/tree/CompilationUnitTree;Ljavax/lang/model/element/TypeElement;)V
    .registers 5

    .line 84
    invoke-interface {p2}, Lcom/sun/source/tree/CompilationUnitTree;->getSourceFile()Ljavax/tools/JavaFileObject;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;Ljavax/tools/JavaFileObject;Lcom/sun/source/tree/CompilationUnitTree;Ljavax/lang/model/element/TypeElement;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/util/TaskEvent$Kind;Ljavax/tools/JavaFileObject;)V
    .registers 4

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/sun/source/util/TaskEvent;-><init>(Lcom/sun/source/util/TaskEvent$Kind;Ljavax/tools/JavaFileObject;Lcom/sun/source/tree/CompilationUnitTree;Ljavax/lang/model/element/TypeElement;)V

    .line 77
    return-void
.end method

.method private constructor <init>(Lcom/sun/source/util/TaskEvent$Kind;Ljavax/tools/JavaFileObject;Lcom/sun/source/tree/CompilationUnitTree;Ljavax/lang/model/element/TypeElement;)V
    .registers 5

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/sun/source/util/TaskEvent;->kind:Lcom/sun/source/util/TaskEvent$Kind;

    .line 89
    iput-object p2, p0, Lcom/sun/source/util/TaskEvent;->file:Ljavax/tools/JavaFileObject;

    .line 90
    iput-object p3, p0, Lcom/sun/source/util/TaskEvent;->unit:Lcom/sun/source/tree/CompilationUnitTree;

    .line 91
    iput-object p4, p0, Lcom/sun/source/util/TaskEvent;->clazz:Ljavax/lang/model/element/TypeElement;

    .line 92
    return-void
.end method


# virtual methods
.method public getCompilationUnit()Lcom/sun/source/tree/CompilationUnitTree;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/sun/source/util/TaskEvent;->unit:Lcom/sun/source/tree/CompilationUnitTree;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/util/TaskEvent$Kind;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/sun/source/util/TaskEvent;->kind:Lcom/sun/source/util/TaskEvent$Kind;

    return-object v0
.end method

.method public getSourceFile()Ljavax/tools/JavaFileObject;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/sun/source/util/TaskEvent;->file:Ljavax/tools/JavaFileObject;

    return-object v0
.end method

.method public getTypeElement()Ljavax/lang/model/element/TypeElement;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/sun/source/util/TaskEvent;->clazz:Ljavax/lang/model/element/TypeElement;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskEvent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/source/util/TaskEvent;->kind:Lcom/sun/source/util/TaskEvent$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/source/util/TaskEvent;->file:Ljavax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/source/util/TaskEvent;->clazz:Ljavax/lang/model/element/TypeElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
