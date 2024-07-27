.class final Lcom/google/android/gms/measurement/internal/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzaff:Lcom/google/android/gms/measurement/internal/zza;

.field private final zzafg:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zza;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzd;->zzaff:Lcom/google/android/gms/measurement/internal/zza;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzd;->zzafg:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzd;->zzaff:Lcom/google/android/gms/measurement/internal/zza;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzd;->zzafg:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zza;->zza(Lcom/google/android/gms/measurement/internal/zza;J)V

    return-void
.end method
