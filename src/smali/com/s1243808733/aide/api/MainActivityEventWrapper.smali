.class public abstract Lcom/s1243808733/aide/api/MainActivityEventWrapper;
.super Ljava/lang/Object;
.source "MainActivityEventWrapper.java"

# interfaces
.implements Lcom/s1243808733/aide/api/MainActivityEvent;


# instance fields
.field protected convert:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeSigningAPK(Ljava/io/File;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 13
    iput-object p1, p0, Lcom/s1243808733/aide/api/MainActivityEventWrapper;->convert:Landroid/app/Activity;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)V
    .registers 3

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method protected final updateBuildDialog(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .line 40
    :try_start_0
    invoke-static {p1}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p1

    .line 41
    const-string v0, "j6"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/16 p2, 0x3c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    goto :goto_1a

    :catchall_19
    move-exception p1

    :goto_1a
    return-void
.end method
