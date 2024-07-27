.class public interface Lcom/s1243808733/android/dx/util/AnnotatedOutput;
.super Ljava/lang/Object;
.source "AnnotatedOutput.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/Output;


# virtual methods
.method public abstract annotate(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract annotate(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract annotates()Z
.end method

.method public abstract endAnnotation()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public abstract getAnnotationWidth()I
.end method

.method public abstract isVerbose()Z
.end method
