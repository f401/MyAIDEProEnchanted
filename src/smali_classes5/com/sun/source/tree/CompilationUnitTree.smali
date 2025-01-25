.class public interface abstract Lcom/sun/source/tree/CompilationUnitTree;
.super Ljava/lang/Object;
.source "CompilationUnitTree.java"

# interfaces
.implements Lcom/sun/source/tree/Tree;


# virtual methods
.method public abstract getImports()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/ImportTree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLineMap()Lcom/sun/source/tree/LineMap;
.end method

.method public abstract getPackageAnnotations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/AnnotationTree;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageName()Lcom/sun/source/tree/ExpressionTree;
.end method

.method public abstract getSourceFile()Ljavax/tools/JavaFileObject;
.end method

.method public abstract getTypeDecls()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/sun/source/tree/Tree;",
            ">;"
        }
    .end annotation
.end method
