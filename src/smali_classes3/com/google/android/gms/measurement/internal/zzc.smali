.class final Lcom/google/android/gms/measurement/internal/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzaee:Ljava/lang/String;

.field private final zzafe:J

.field private final zzaff:Lcom/google/android/gms/measurement/internal/zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zza;Ljava/lang/String;J)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzc;->zzaff:Lcom/google/android/gms/measurement/internal/zza;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzc;->zzaee:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzc;->zzafe:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzc;->zzaff:Lcom/google/android/gms/measurement/internal/zza;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzc;->zzaee:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzc;->zzafe:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zza;->zzb(Lcom/google/android/gms/measurement/internal/zza;Ljava/lang/String;J)V

    return-void
.end method
