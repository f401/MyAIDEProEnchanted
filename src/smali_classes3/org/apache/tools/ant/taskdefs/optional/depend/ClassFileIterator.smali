.class public interface abstract Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator;
.super Ljava/lang/Object;
.source "ClassFileIterator.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getNextClassFile()Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;",
            ">;"
        }
    .end annotation
.end method
