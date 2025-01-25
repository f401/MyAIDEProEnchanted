.class public Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;
.super Lcom/s1243808733/aide/api/MainActivityEventWrapper;
.source "ApiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/api/ApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainActivityEventManager"
.end annotation


# instance fields
.field private mArray:[Lcom/s1243808733/aide/api/MainActivityEvent;

.field private mIMainActivity:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/s1243808733/aide/api/MainActivityEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/s1243808733/aide/api/MainActivityEventWrapper;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mIMainActivity:Ljava/util/Map;

    .line 29
    invoke-direct {p0}, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->init()V

    return-void
.end method

.method private init()V
    .registers 9

    .line 41
    const-string v0, "IMainActivity"

    invoke-static {v0}, Lcom/blankj/utilcode/util/MetaDataUtils;->getMetaDataInApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-void

    .line 44
    :cond_d
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 45
    array-length v2, v1

    if-nez v2, :cond_19

    goto :goto_53

    .line 46
    :cond_19
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v2, :cond_43

    aget-object v5, v1, v4

    .line 47
    invoke-static {v0}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27

    goto :goto_40

    .line 49
    :cond_27
    :try_start_27
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 50
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/s1243808733/aide/api/MainActivityEvent;

    .line 51
    iget-object v7, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mIMainActivity:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_37

    goto :goto_40

    :catchall_37
    move-exception v5

    .line 53
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-static {v6}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    :goto_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 56
    :cond_43
    iget-object v0, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mIMainActivity:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v3, [Lcom/s1243808733/aide/api/MainActivityEvent;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/aide/api/MainActivityEvent;

    iput-object v0, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mArray:[Lcom/s1243808733/aide/api/MainActivityEvent;

    :cond_53
    :goto_53
    return-void
.end method


# virtual methods
.method public find(Ljava/lang/String;)Lcom/s1243808733/aide/api/MainActivityEvent;
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mIMainActivity:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/aide/api/MainActivityEvent;

    return-object p1
.end method

.method public find(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->find(Ljava/lang/String;)Lcom/s1243808733/aide/api/MainActivityEvent;

    move-result-object p1

    return-object p1
.end method

.method public onBeforeSigningAPK(Ljava/io/File;Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x0

    .line 101
    :goto_1
    iget-object v1, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mArray:[Lcom/s1243808733/aide/api/MainActivityEvent;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 102
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/s1243808733/aide/api/MainActivityEvent;->onBeforeSigningAPK(Ljava/io/File;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6

    const/4 v0, 0x0

    .line 62
    :goto_1
    iget-object v1, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mArray:[Lcom/s1243808733/aide/api/MainActivityEvent;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 63
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/s1243808733/aide/api/MainActivityEvent;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 5

    const/4 v0, 0x0

    .line 69
    :goto_1
    iget-object v1, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mArray:[Lcom/s1243808733/aide/api/MainActivityEvent;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 70
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/s1243808733/aide/api/MainActivityEvent;->onCreateOptionsMenu(Landroid/view/Menu;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)V
    .registers 6

    const/4 v0, 0x0

    .line 94
    :goto_1
    iget-object v1, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mArray:[Lcom/s1243808733/aide/api/MainActivityEvent;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 95
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/s1243808733/aide/api/MainActivityEvent;->onMenuOpened(ILandroid/view/Menu;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 77
    :goto_2
    iget-object v2, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mArray:[Lcom/s1243808733/aide/api/MainActivityEvent;

    array-length v3, v2

    if-ge v0, v3, :cond_13

    .line 78
    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lcom/s1243808733/aide/api/MainActivityEvent;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 5

    const/4 v0, 0x0

    .line 87
    :goto_1
    iget-object v1, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mArray:[Lcom/s1243808733/aide/api/MainActivityEvent;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 88
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/s1243808733/aide/api/MainActivityEvent;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method
