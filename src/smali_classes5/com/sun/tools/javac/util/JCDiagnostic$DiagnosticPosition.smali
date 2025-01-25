.class public interface abstract Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;
.super Ljava/lang/Object;
.source "JCDiagnostic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/JCDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DiagnosticPosition"
.end annotation


# virtual methods
.method public abstract getEndPosition(Ljava/util/Map;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getPreferredPosition()I
.end method

.method public abstract getStartPosition()I
.end method

.method public abstract getTree()Lcom/sun/tools/javac/tree/JCTree;
.end method
