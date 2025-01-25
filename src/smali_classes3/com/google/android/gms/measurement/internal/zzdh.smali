.class final Lcom/google/android/gms/measurement/internal/zzdh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzaef:Lcom/google/android/gms/measurement/internal/zzcx;

.field private final zzare:Lcom/google/android/gms/measurement/internal/zzda;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzda;Lcom/google/android/gms/measurement/internal/zzcx;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdh;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdh;->zzaef:Lcom/google/android/gms/measurement/internal/zzcx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdh;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdh;->zzaef:Lcom/google/android/gms/measurement/internal/zzcx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzda;->zza(Lcom/google/android/gms/measurement/internal/zzcx;)V

    return-void
.end method
