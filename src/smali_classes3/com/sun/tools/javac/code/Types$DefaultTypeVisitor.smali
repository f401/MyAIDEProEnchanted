.class public abstract Lcom/sun/tools/javac/code/Types$DefaultTypeVisitor;
.super Ljava/lang/Object;
.source "Types.java"

# interfaces
.implements Lcom/sun/tools/javac/code/Type$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DefaultTypeVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sun/tools/javac/code/Type$Visitor",
        "<TR;TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type;",
            "TS;)TR;"
        }
    .end annotation

    .line 3768
    invoke-virtual {p1, p0, p2}, Lcom/sun/tools/javac/code/Type;->accept(Lcom/sun/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$ArrayType;",
            "TS;)TR;"
        }
    .end annotation

    .line 3771
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$DefaultTypeVisitor;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$CapturedType;",
            "TS;)TR;"
        }
    .end annotation

    .line 3775
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$DefaultTypeVisitor;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$ClassType;",
            "TS;)TR;"
        }
    .end annotation

    .line 3769
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$DefaultTypeVisitor;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$ErrorType;",
            "TS;)TR;"
        }
    .end annotation

    .line 3778
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$DefaultTypeVisitor;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitForAll(Lcom/sun/tools/javac/code/Type$ForAll;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$ForAll;",
            "TS;)TR;"
        }
    .end annotation

    .line 3776
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$DefaultTypeVisitor;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$MethodType;",
            "TS;)TR;"
        }
    .end annotation

    .line 3772
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$DefaultTypeVisitor;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitPackageType(Lcom/sun/tools/javac/code/Type$PackageType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$PackageType;",
            "TS;)TR;"
        }
    .end annotation

    .line 3773
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$DefaultTypeVisitor;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$TypeVar;",
            "TS;)TR;"
        }
    .end annotation

    .line 3774
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$DefaultTypeVisitor;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitUndetVar(Lcom/sun/tools/javac/code/Type$UndetVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$UndetVar;",
            "TS;)TR;"
        }
    .end annotation

    .line 3777
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$DefaultTypeVisitor;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Type$WildcardType;",
            "TS;)TR;"
        }
    .end annotation

    .line 3770
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$DefaultTypeVisitor;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
