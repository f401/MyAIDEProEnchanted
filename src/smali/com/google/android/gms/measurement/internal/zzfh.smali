.class final Lcom/google/android/gms/measurement/internal/zzfh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzafg:J

.field private final zzatd:Lcom/google/android/gms/measurement/internal/zzfd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfd;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfh;->zzatd:Lcom/google/android/gms/measurement/internal/zzfd;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzfh;->zzafg:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfh;->zzatd:Lcom/google/android/gms/measurement/internal/zzfd;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzfh;->zzafg:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfd;->zza(Lcom/google/android/gms/measurement/internal/zzfd;J)V

    return-void
.end method
