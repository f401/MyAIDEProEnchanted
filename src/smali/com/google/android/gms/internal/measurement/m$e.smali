.class final Lcom/google/android/gms/internal/measurement/m$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation


# instance fields
.field final j6:Lcom/google/android/gms/internal/measurement/m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/m;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/m$e;->j6:Lcom/google/android/gms/internal/measurement/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m$e;->j6:Lcom/google/android/gms/internal/measurement/m;

    new-instance v1, Lcom/google/android/gms/internal/measurement/J;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/J;-><init>(Lcom/google/android/gms/internal/measurement/m$e;Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m$e;->j6:Lcom/google/android/gms/internal/measurement/m;

    new-instance v1, Lcom/google/android/gms/internal/measurement/P;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/P;-><init>(Lcom/google/android/gms/internal/measurement/m$e;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m$e;->j6:Lcom/google/android/gms/internal/measurement/m;

    new-instance v1, Lcom/google/android/gms/internal/measurement/M;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/M;-><init>(Lcom/google/android/gms/internal/measurement/m$e;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m$e;->j6:Lcom/google/android/gms/internal/measurement/m;

    new-instance v1, Lcom/google/android/gms/internal/measurement/L;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/L;-><init>(Lcom/google/android/gms/internal/measurement/m$e;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/measurement/m$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/m$e;->j6:Lcom/google/android/gms/internal/measurement/m;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/m$a;-><init>(Lcom/google/android/gms/internal/measurement/m;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/m$e;->j6:Lcom/google/android/gms/internal/measurement/m;

    new-instance v2, Lcom/google/android/gms/internal/measurement/O;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/O;-><init>(Lcom/google/android/gms/internal/measurement/m$e;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/m$a;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/m$b;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/m$a;->FH(J)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m$e;->j6:Lcom/google/android/gms/internal/measurement/m;

    new-instance v1, Lcom/google/android/gms/internal/measurement/K;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/K;-><init>(Lcom/google/android/gms/internal/measurement/m$e;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/m$e;->j6:Lcom/google/android/gms/internal/measurement/m;

    new-instance v1, Lcom/google/android/gms/internal/measurement/N;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/N;-><init>(Lcom/google/android/gms/internal/measurement/m$e;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/m;->j6(Lcom/google/android/gms/internal/measurement/m;Lcom/google/android/gms/internal/measurement/m$b;)V

    return-void
.end method
