.class final Lcom/google/android/gms/measurement/internal/zzdq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzaed:Z

.field private final zzare:Lcom/google/android/gms/measurement/internal/zzda;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzda;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdq;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzdq;->zzaed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdq;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzdq;->zzaed:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Lcom/google/android/gms/measurement/internal/zzda;Z)V

    return-void
.end method
