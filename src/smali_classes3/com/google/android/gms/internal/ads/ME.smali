.class final Lcom/google/android/gms/internal/ads/ME;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:J

.field private final FH:Lcom/google/android/gms/internal/ads/lE;

.field private final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/lE;Ljava/lang/String;J)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ME;->FH:Lcom/google/android/gms/internal/ads/lE;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ME;->j6:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/ME;->DW:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ME;->FH:Lcom/google/android/gms/internal/ads/lE;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/lE;->j6(Lcom/google/android/gms/internal/ads/lE;)Lcom/google/android/gms/internal/ads/Db$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ME;->j6:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ME;->DW:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Db$a;->j6(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ME;->FH:Lcom/google/android/gms/internal/ads/lE;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/lE;->j6(Lcom/google/android/gms/internal/ads/lE;)Lcom/google/android/gms/internal/ads/Db$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ME;->FH:Lcom/google/android/gms/internal/ads/lE;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Db$a;->j6(Ljava/lang/String;)V

    return-void
.end method
