.class public Lio/github/zeroaicy/readclass/classInfo/DefaultMethodWhiteList;
.super Ljava/lang/Object;
.source "DefaultMethodWhiteList.java"


# static fields
.field private static isDisableDefaultMethod:Z

.field public static final mDefaultMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodWhiteList;->mDefaultMethods:Ljava/util/Set;

    const/4 v0, 0x1

    sput-boolean v0, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodWhiteList;->isDisableDefaultMethod:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDefaultMethod(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    if-eqz p0, :cond_0

    .line 37
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    sget-object v1, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodWhiteList;->mDefaultMethods:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static getDisableDefaultMethod()Z
    .registers 1

    .line 26
    sget-boolean v0, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodWhiteList;->isDisableDefaultMethod:Z

    return v0
.end method

.method public static hasDefaultMethod(Ljava/lang/String;)Z
    .registers 3

    .line 44
    if-eqz p0, :cond_0

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 46
    :cond_0
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodWhiteList;->mDefaultMethods:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setDisableDefaultMethod(Z)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 29
    sput-boolean p0, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodWhiteList;->isDisableDefaultMethod:Z

    return-void
.end method
