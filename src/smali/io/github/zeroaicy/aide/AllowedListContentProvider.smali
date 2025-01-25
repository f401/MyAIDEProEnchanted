.class public Lio/github/zeroaicy/aide/AllowedListContentProvider;
.super Ljava/lang/Object;
.source "AllowedListContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/zeroaicy/aide/AllowedListContentProvider$Provider;
    }
.end annotation


# static fields
.field private static allowedListContentProvider:Lio/github/zeroaicy/aide/AllowedListContentProvider;


# instance fields
.field providers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/github/zeroaicy/aide/AllowedListContentProvider$Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/github/zeroaicy/aide/AllowedListContentProvider;

    invoke-direct {v0}, Lio/github/zeroaicy/aide/AllowedListContentProvider;-><init>()V

    sput-object v0, Lio/github/zeroaicy/aide/AllowedListContentProvider;->allowedListContentProvider:Lio/github/zeroaicy/aide/AllowedListContentProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/aide/AllowedListContentProvider;->providers:Ljava/util/Set;

    return-void
.end method

.method public static get()Lio/github/zeroaicy/aide/AllowedListContentProvider;
    .registers 1

    .line 30
    sget-object v0, Lio/github/zeroaicy/aide/AllowedListContentProvider;->allowedListContentProvider:Lio/github/zeroaicy/aide/AllowedListContentProvider;

    return-object v0
.end method


# virtual methods
.method public addDefaultMethod(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lio/github/zeroaicy/aide/AllowedListContentProvider;->providers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 44
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    .line 45
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/zeroaicy/aide/AllowedListContentProvider$Provider;

    .line 46
    invoke-interface {v1, p1}, Lio/github/zeroaicy/aide/AllowedListContentProvider$Provider;->addDefaultMethod(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public addProvider(Lio/github/zeroaicy/aide/AllowedListContentProvider$Provider;)Lio/github/zeroaicy/aide/AllowedListContentProvider;
    .registers 3

    if-nez p1, :cond_3

    return-object p0

    .line 16
    :cond_3
    iget-object v0, p0, Lio/github/zeroaicy/aide/AllowedListContentProvider;->providers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public hasDefaultMethod(Ljava/lang/String;)Z
    .registers 4

    .line 35
    iget-object v0, p0, Lio/github/zeroaicy/aide/AllowedListContentProvider;->providers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p1, 0x0

    return p1

    .line 37
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/zeroaicy/aide/AllowedListContentProvider$Provider;

    .line 38
    invoke-interface {v0, p1}, Lio/github/zeroaicy/aide/AllowedListContentProvider$Provider;->hasDefaultMethod(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
