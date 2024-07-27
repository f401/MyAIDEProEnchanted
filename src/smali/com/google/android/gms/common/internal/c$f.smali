.class abstract Lcom/google/android/gms/common/internal/c$f;
.super Lcom/google/android/gms/common/internal/c$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c$h",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final Hw:I

.field private final Zo:Lcom/google/android/gms/common/internal/c;

.field private final v5:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/internal/c;ILandroid/os/Bundle;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c$f;->Zo:Lcom/google/android/gms/common/internal/c;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/c$h;-><init>(Lcom/google/android/gms/common/internal/c;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/common/internal/c$f;->Hw:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/c$f;->v5:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected final FH()V
    .registers 1

    return-void
.end method

.method protected abstract j6(Lcom/google/android/gms/common/ConnectionResult;)V
.end method

.method protected final synthetic j6(Ljava/lang/Object;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v0, 0x0

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$f;->Zo:Lcom/google/android/gms/common/internal/c;

    invoke-static {v1, v5, v0}, Lcom/google/android/gms/common/internal/c;->zza(Lcom/google/android/gms/common/internal/c;ILandroid/os/IInterface;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/google/android/gms/common/internal/c$f;->Hw:I

    if-eqz v1, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$f;->Zo:Lcom/google/android/gms/common/internal/c;

    invoke-static {v1, v5, v0}, Lcom/google/android/gms/common/internal/c;->zza(Lcom/google/android/gms/common/internal/c;ILandroid/os/IInterface;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$f;->v5:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    const-string v0, "pendingIntent"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_2
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    iget v2, p0, Lcom/google/android/gms/common/internal/c$f;->Hw:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/c$f;->j6(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$f;->Zo:Lcom/google/android/gms/common/internal/c;

    invoke-static {v1, v5, v0}, Lcom/google/android/gms/common/internal/c;->zza(Lcom/google/android/gms/common/internal/c;ILandroid/os/IInterface;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A fatal developer error has occurred. Class name: %s. Start service action: %s. Service Descriptor: %s. "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/google/android/gms/common/internal/c$f;->Zo:Lcom/google/android/gms/common/internal/c;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/c;->getStartServiceAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/gms/common/internal/c$f;->Zo:Lcom/google/android/gms/common/internal/c;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/c;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c$f;->v5()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$f;->Zo:Lcom/google/android/gms/common/internal/c;

    invoke-static {v1, v5, v0}, Lcom/google/android/gms/common/internal/c;->zza(Lcom/google/android/gms/common/internal/c;ILandroid/os/IInterface;)V

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/c$f;->j6(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method protected abstract v5()Z
.end method
