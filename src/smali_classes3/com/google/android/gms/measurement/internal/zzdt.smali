.class final Lcom/google/android/gms/measurement/internal/zzdt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzare:Lcom/google/android/gms/measurement/internal/zzda;

.field private final zzarm:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzda;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdt;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzdt;->zzarm:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdt;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanm:Lcom/google/android/gms/measurement/internal/zzbg;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzdt;->zzarm:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdt;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzdt;->zzarm:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Session timeout duration set"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
