.class public abstract Lcom/sun/source/util/JavacTask;
.super Ljava/lang/Object;
.source "JavacTask.java"

# interfaces
.implements Ljavax/tools/JavaCompiler$CompilationTask;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract analyze()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract generate()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getElements()Ljavax/lang/model/util/Elements;
.end method

.method public abstract getTypeMirror(Ljava/lang/Iterable;)Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/sun/source/tree/Tree;",
            ">;)",
            "Ljavax/lang/model/type/TypeMirror;"
        }
    .end annotation
.end method

.method public abstract getTypes()Ljavax/lang/model/util/Types;
.end method

.method public abstract parse()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/sun/source/tree/CompilationUnitTree;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setTaskListener(Lcom/sun/source/util/TaskListener;)V
.end method
