.class final Lcom/google/android/gms/measurement/internal/zzer;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

.field private final zzaqn:Lcom/google/android/gms/measurement/internal/zzfv;

.field private final zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

.field private final zzasl:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzeb;ZLcom/google/android/gms/measurement/internal/zzfv;Lcom/google/android/gms/measurement/internal/zzk;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzer;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzer;->zzasl:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzer;->zzaqn:Lcom/google/android/gms/measurement/internal/zzfv;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzer;->zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzer;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzd(Lcom/google/android/gms/measurement/internal/zzeb;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzer;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-void

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzer;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzer;->zzasl:Z

    if-eqz v2, :cond_20

    const/4 v2, 0x0

    goto :goto_22

    :cond_20
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzer;->zzaqn:Lcom/google/android/gms/measurement/internal/zzfv;

    :goto_22
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzer;->zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzeb;->zza(Lcom/google/android/gms/measurement/internal/zzaj;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzk;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzer;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zze(Lcom/google/android/gms/measurement/internal/zzeb;)V

    return-void
.end method
