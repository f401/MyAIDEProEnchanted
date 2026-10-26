.class public Lcom/s1243808733/aide/application/service/ClearApplUserDataService;
.super Landroid/app/Service;
.source "ClearApplUserDataService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 18
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 19
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/service/ClearApplUserDataService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 20
    invoke-virtual {v0}, Landroid/app/ActivityManager;->clearApplicationUserData()Z

    return-void
.end method
