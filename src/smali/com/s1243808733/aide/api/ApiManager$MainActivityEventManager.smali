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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/s1243808733/aide/api/MainActivityEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

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
    .locals 8

    const/4 v2, 0x0

    .line 41
    const-string v0, "IMainActivity"

    invoke-static {v0}, Lcom/blankj/utilcode/util/MetaDataUtils;->getMetaDataInApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-static {v3}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 45
    array-length v0, v4

    if-eqz v0, :cond_0

    .line 46
    array-length v5, v4

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_3

    aget-object v6, v4, v1

    .line 47
    invoke-static {v3}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 49
    :cond_2
    :try_start_0
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/api/MainActivityEvent;

    .line 51
    iget-object v7, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mIMainActivity:Ljava/util/Map;

    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 53
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v6}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    goto :goto_2

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mIMainActivity:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v2, [Lcom/s1243808733/aide/api/MainActivityEvent;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/aide/api/MainActivityEvent;

    iput-object v0, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mArray:[Lcom/s1243808733/aide/api/MainActivityEvent;

    goto :goto_0
.end method


# virtual methods
.method public find(Ljava/lang/String;)Lcom/s1243808733/aide/api/MainActivityEvent;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mIMainActivity:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/api/MainActivityEvent;

    return-object v0
.end method

.method public find(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->find(Ljava/lang/String;)Lcom/s1243808733/aide/api/MainActivityEvent;

    move-result-object v0

    return-object v0
.end method

.method public onBeforeSigningAPK(Ljava/io/File;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mArray:[Lcom/s1243808733/aide/api/MainActivityEvent;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 102
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/s1243808733/aide/api/MainActivityEvent;->onBeforeSigningAPK(Ljava/io/File;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    .line 62
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mArray:[Lcom/s1243808733/aide/api/MainActivityEvent;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 63
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/s1243808733/aide/api/MainActivityEvent;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    const/4 v0, 0x0

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mArray:[Lcom/s1243808733/aide/api/MainActivityEvent;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 70
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/s1243808733/aide/api/MainActivityEvent;->onCreateOptionsMenu(Landroid/view/Menu;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)V
    .locals 3

    const/4 v0, 0x0

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mArray:[Lcom/s1243808733/aide/api/MainActivityEvent;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 95
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/s1243808733/aide/api/MainActivityEvent;->onMenuOpened(ILandroid/view/Menu;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mArray:[Lcom/s1243808733/aide/api/MainActivityEvent;

    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 78
    aget-object v1, v1, v2

    invoke-interface {v1, p1}, Lcom/s1243808733/aide/api/MainActivityEvent;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    const/4 v0, 0x0

    .line 87
    :goto_0
    iget-object v1, p0, Lcom/s1243808733/aide/api/ApiManager$MainActivityEventManager;->mArray:[Lcom/s1243808733/aide/api/MainActivityEvent;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 88
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/s1243808733/aide/api/MainActivityEvent;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
