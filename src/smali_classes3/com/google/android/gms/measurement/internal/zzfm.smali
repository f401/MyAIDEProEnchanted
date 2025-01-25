.class Lcom/google/android/gms/measurement/internal/zzfm;
.super Lcom/google/android/gms/measurement/internal/zzcr;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzct;


# instance fields
.field protected final zzamv:Lcom/google/android/gms/measurement/internal/zzfo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfo;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfo;->zzmh()Lcom/google/android/gms/measurement/internal/zzbw;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzcr;-><init>(Lcom/google/android/gms/measurement/internal/zzbw;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzamv:Lcom/google/android/gms/measurement/internal/zzfo;

    return-void
.end method


# virtual methods
.method public zzjr()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzamv:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public zzjs()Lcom/google/android/gms/measurement/internal/zzm;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzamv:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjs()Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    return-object v0
.end method

.method public zzjt()Lcom/google/android/gms/measurement/internal/zzt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfm;->zzamv:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->zzjt()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    return-object v0
.end method
