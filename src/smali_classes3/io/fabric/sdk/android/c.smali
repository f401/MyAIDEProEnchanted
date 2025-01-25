.class Lio/fabric/sdk/android/c;
.super Lio/fabric/sdk/android/ActivityLifecycleManager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/Fabric;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Lio/fabric/sdk/android/Fabric;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/Fabric;)V
    .registers 2

    iput-object p1, p0, Lio/fabric/sdk/android/c;->j6:Lio/fabric/sdk/android/Fabric;

    invoke-direct {p0}, Lio/fabric/sdk/android/ActivityLifecycleManager$b;-><init>()V

    return-void
.end method


# virtual methods
.method public FH(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lio/fabric/sdk/android/c;->j6:Lio/fabric/sdk/android/Fabric;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/Fabric;->setCurrentActivity(Landroid/app/Activity;)Lio/fabric/sdk/android/Fabric;

    return-void
.end method

.method public Hw(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lio/fabric/sdk/android/c;->j6:Lio/fabric/sdk/android/Fabric;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/Fabric;->setCurrentActivity(Landroid/app/Activity;)Lio/fabric/sdk/android/Fabric;

    return-void
.end method

.method public j6(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    iget-object p2, p0, Lio/fabric/sdk/android/c;->j6:Lio/fabric/sdk/android/Fabric;

    invoke-virtual {p2, p1}, Lio/fabric/sdk/android/Fabric;->setCurrentActivity(Landroid/app/Activity;)Lio/fabric/sdk/android/Fabric;

    return-void
.end method
