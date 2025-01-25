.class public interface abstract Lsun/misc/JavaLangAccess;
.super Ljava/lang/Object;
.source "JavaLangAccess.java"


# virtual methods
.method public abstract blockedOn(Ljava/lang/Thread;Lsun/nio/ch/Interruptible;)V
.end method

.method public abstract getAnnotationType(Ljava/lang/Class;)Lsun/reflect/annotation/AnnotationType;
.end method

.method public abstract getConstantPool(Ljava/lang/Class;)Lsun/reflect/ConstantPool;
.end method

.method public abstract getEnumConstantsShared(Ljava/lang/Class;)[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)[TE;"
        }
    .end annotation
.end method

.method public abstract setAnnotationType(Ljava/lang/Class;Lsun/reflect/annotation/AnnotationType;)V
.end method
