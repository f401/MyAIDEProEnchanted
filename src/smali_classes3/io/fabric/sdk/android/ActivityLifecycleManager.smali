.class public Lio/fabric/sdk/android/ActivityLifecycleManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/ActivityLifecycleManager$a;
    }
.end annotation


# instance fields
.field private DW:Lio/fabric/sdk/android/ActivityLifecycleManager$a;

.field private final j6:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lio/fabric/sdk/android/ActivityLifecycleManager;->j6:Landroid/app/Application;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_18

    new-instance v0, Lio/fabric/sdk/android/ActivityLifecycleManager$a;

    invoke-direct {v0, p1}, Lio/fabric/sdk/android/ActivityLifecycleManager$a;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lio/fabric/sdk/android/ActivityLifecycleManager;->DW:Lio/fabric/sdk/android/ActivityLifecycleManager$a;

    :cond_18
    return-void
.end method


# virtual methods
.method public j6()V
    .registers 2

    iget-object v0, p0, Lio/fabric/sdk/android/ActivityLifecycleManager;->DW:Lio/fabric/sdk/android/ActivityLifecycleManager$a;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lio/fabric/sdk/android/ActivityLifecycleManager$a;->j6(Lio/fabric/sdk/android/ActivityLifecycleManager$a;)V

    :cond_7
    return-void
.end method

.method public j6(Lio/fabric/sdk/android/ActivityLifecycleManager$b;)Z
    .registers 3

    iget-object v0, p0, Lio/fabric/sdk/android/ActivityLifecycleManager;->DW:Lio/fabric/sdk/android/ActivityLifecycleManager$a;

    if-eqz v0, :cond_c

    invoke-static {v0, p1}, Lio/fabric/sdk/android/ActivityLifecycleManager$a;->j6(Lio/fabric/sdk/android/ActivityLifecycleManager$a;Lio/fabric/sdk/android/ActivityLifecycleManager$b;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method
