.class abstract Lcom/google/android/gms/measurement/internal/zzfn;
.super Lcom/google/android/gms/measurement/internal/zzfm;


# instance fields
.field private zzvz:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzfm;-><init>(Lcom/google/android/gms/measurement/internal/zzfo;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzamv:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzb(Lcom/google/android/gms/measurement/internal/zzfn;)V

    return-void
.end method


# virtual methods
.method final isInitialized()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfn;->zzvz:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzcl()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract zzgy()Z
.end method

.method public final zzq()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfn;->zzvz:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzfn;->zzgy()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzamv:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmg()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzfn;->zzvz:Z

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
