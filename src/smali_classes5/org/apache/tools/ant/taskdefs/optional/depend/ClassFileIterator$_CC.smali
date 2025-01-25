.class public final synthetic Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator$_CC;
.super Ljava/lang/Object;
.source "ClassFileIterator.java"


# direct methods
.method public static $default$iterator(Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator$1;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator$1;-><init>(Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator;)V

    return-object v0
.end method
