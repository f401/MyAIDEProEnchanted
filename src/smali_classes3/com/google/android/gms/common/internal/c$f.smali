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
        "Lcom/google/android/gms/common/internal/c$h<",
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
    .registers 6

    check-cast p1, Ljava/lang/Boolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/google/android/gms/common/internal/c$f;->Zo:Lcom/google/android/gms/common/internal/c;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/c;->zza(Lcom/google/android/gms/common/internal/c;ILandroid/os/IInterface;)V

    return-void

    :cond_c
    iget p1, p0, Lcom/google/android/gms/common/internal/c$f;->Hw:I

    if-eqz p1, :cond_5e

    const/16 v2, 0xa

    if-eq p1, v2, :cond_2e

    iget-object p1, p0, Lcom/google/android/gms/common/internal/c$f;->Zo:Lcom/google/android/gms/common/internal/c;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/c;->zza(Lcom/google/android/gms/common/internal/c;ILandroid/os/IInterface;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/c$f;->v5:Landroid/os/Bundle;

    if-eqz p1, :cond_26

    const-string v0, "pendingIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/PendingIntent;

    :cond_26
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    iget v0, p0, Lcom/google/android/gms/common/internal/c$f;->Hw:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_70

    :cond_2e
    iget-object p1, p0, Lcom/google/android/gms/common/internal/c$f;->Zo:Lcom/google/android/gms/common/internal/c;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/c;->zza(Lcom/google/android/gms/common/internal/c;ILandroid/os/IInterface;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/common/internal/c$f;->Zo:Lcom/google/android/gms/common/internal/c;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/c;->getStartServiceAction()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$f;->Zo:Lcom/google/android/gms/common/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v0, "A fatal developer error has occurred. Class name: %s. Start service action: %s. Service Descriptor: %s. "

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5e
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c$f;->v5()Z

    move-result p1

    if-nez p1, :cond_73

    iget-object p1, p0, Lcom/google/android/gms/common/internal/c$f;->Zo:Lcom/google/android/gms/common/internal/c;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/c;->zza(Lcom/google/android/gms/common/internal/c;ILandroid/os/IInterface;)V

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x8

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    :goto_70
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/c$f;->j6(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_73
    return-void
.end method

.method protected abstract v5()Z
.end method
