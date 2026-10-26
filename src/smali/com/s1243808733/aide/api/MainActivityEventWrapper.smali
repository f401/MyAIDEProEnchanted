.class public abstract Lcom/s1243808733/aide/api/MainActivityEventWrapper;
.super Ljava/lang/Object;
.source "MainActivityEventWrapper.java"

# interfaces
.implements Lcom/s1243808733/aide/api/MainActivityEvent;


# instance fields
.field protected convert:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeSigningAPK(Ljava/io/File;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/s1243808733/aide/api/MainActivityEventWrapper;->convert:Landroid/app/Activity;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method protected final updateBuildDialog(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .line 40
    :try_start_0
    invoke-static {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    .line 41
    const-string v1, "j6"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0
.end method
