.class public Lio/github/zeroaicy/readclass/classInfo/DefaultMethodAllowedList;
.super Ljava/lang/Object;
.source "DefaultMethodAllowedList.java"


# static fields
.field private static allowedListContentProvider:Lio/github/zeroaicy/aide/AllowedListContentProvider;

.field private static isDisableDefaultMethod:Z

.field private static final isMainProcess:Z

.field public static final mDefaultMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodAllowedList;->isMainProcess:Z

    if-eqz v0, :cond_13

    const/16 v0, 0x14

    goto :goto_15

    :cond_13
    const/16 v0, 0x12c

    :goto_15
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    sput-object v1, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodAllowedList;->mDefaultMethods:Ljava/util/Set;

    const/4 v0, 0x1

    sput-boolean v0, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodAllowedList;->isDisableDefaultMethod:Z

    invoke-static {}, Lio/github/zeroaicy/aide/AllowedListContentProvider;->get()Lio/github/zeroaicy/aide/AllowedListContentProvider;

    move-result-object v0

    new-instance v1, Lio/github/zeroaicy/readclass/classInfo/DefaultProvider;

    invoke-direct {v1}, Lio/github/zeroaicy/readclass/classInfo/DefaultProvider;-><init>()V

    invoke-virtual {v0, v1}, Lio/github/zeroaicy/aide/AllowedListContentProvider;->addProvider(Lio/github/zeroaicy/aide/AllowedListContentProvider$Provider;)Lio/github/zeroaicy/aide/AllowedListContentProvider;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodAllowedList;->allowedListContentProvider:Lio/github/zeroaicy/aide/AllowedListContentProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
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

    if-eqz p0, :cond_19

    .line 38
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 39
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodAllowedList;->mDefaultMethods:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 40
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodAllowedList;->allowedListContentProvider:Lio/github/zeroaicy/aide/AllowedListContentProvider;

    if-eqz v0, :cond_19

    .line 41
    invoke-virtual {v0, p0}, Lio/github/zeroaicy/aide/AllowedListContentProvider;->addDefaultMethod(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public static getDisableDefaultMethod()Z
    .registers 1

    .line 24
    sget-boolean v0, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodAllowedList;->isDisableDefaultMethod:Z

    return v0
.end method

.method public static hasDefaultMethod(Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_a

    .line 48
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 49
    :cond_a
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodAllowedList;->mDefaultMethods:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 51
    sget-object v0, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodAllowedList;->allowedListContentProvider:Lio/github/zeroaicy/aide/AllowedListContentProvider;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p0}, Lio/github/zeroaicy/aide/AllowedListContentProvider;->hasDefaultMethod(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    :goto_20
    return p0

    :cond_21
    return v0
.end method

.method public static setDisableDefaultMethod(Z)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 27
    sput-boolean p0, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodAllowedList;->isDisableDefaultMethod:Z

    return-void
.end method
