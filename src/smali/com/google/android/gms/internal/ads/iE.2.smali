.class final Lcom/google/android/gms/internal/ads/iE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:J

.field private final FH:J

.field private final Hw:Lcom/google/android/gms/internal/ads/gE;

.field private final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gE;Ljava/lang/String;JJ)V
    .registers 8

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iE;->Hw:Lcom/google/android/gms/internal/ads/gE;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/iE;->j6:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/iE;->DW:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/iE;->FH:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iE;->Hw:Lcom/google/android/gms/internal/ads/gE;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gE;->j6(Lcom/google/android/gms/internal/ads/gE;)Lcom/google/android/gms/internal/ads/fE;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iE;->j6:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/iE;->DW:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/iE;->FH:J

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/fE;->j6(Ljava/lang/String;JJ)V

    return-void
.end method
