.class final Lcom/google/android/gms/measurement/internal/zzdm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzads:Ljava/lang/String;

.field private final zzadz:Ljava/lang/String;

.field private final zzaeg:Z

.field private final zzagj:Ljava/lang/String;

.field private final zzard:Ljava/util/concurrent/atomic/AtomicReference;

.field private final zzare:Lcom/google/android/gms/measurement/internal/zzda;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzda;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzard:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzagj:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzads:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzadz:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzaeg:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgl()Lcom/google/android/gms/measurement/internal/zzeb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzard:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzagj:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzads:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzadz:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzdm;->zzaeg:Z

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzeb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
