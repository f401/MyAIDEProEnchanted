.class public interface abstract Lcom/sun/tools/javac/code/Type$Visitor;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Visitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$ArrayType;",
            "TS;)TR;"
        }
    .end annotation
.end method

.method public abstract visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$CapturedType;",
            "TS;)TR;"
        }
    .end annotation
.end method

.method public abstract visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$ClassType;",
            "TS;)TR;"
        }
    .end annotation
.end method

.method public abstract visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$ErrorType;",
            "TS;)TR;"
        }
    .end annotation
.end method

.method public abstract visitForAll(Lcom/sun/tools/javac/code/Type$ForAll;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$ForAll;",
            "TS;)TR;"
        }
    .end annotation
.end method

.method public abstract visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$MethodType;",
            "TS;)TR;"
        }
    .end annotation
.end method

.method public abstract visitPackageType(Lcom/sun/tools/javac/code/Type$PackageType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$PackageType;",
            "TS;)TR;"
        }
    .end annotation
.end method

.method public abstract visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "TS;)TR;"
        }
    .end annotation
.end method

.method public abstract visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$TypeVar;",
            "TS;)TR;"
        }
    .end annotation
.end method

.method public abstract visitUndetVar(Lcom/sun/tools/javac/code/Type$UndetVar;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$UndetVar;",
            "TS;)TR;"
        }
    .end annotation
.end method

.method public abstract visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$WildcardType;",
            "TS;)TR;"
        }
    .end annotation
.end method
