.class final synthetic Lcom/google/android/gms/internal/ads/Tn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Z

.field private final FH:J

.field private final j6:Lcom/google/android/gms/internal/ads/Jn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Jn;ZJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Tn;->j6:Lcom/google/android/gms/internal/ads/Jn;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/Tn;->DW:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/Tn;->FH:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tn;->j6:Lcom/google/android/gms/internal/ads/Jn;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Tn;->DW:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Tn;->FH:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Jn;->DW(ZJ)V

    return-void
.end method
