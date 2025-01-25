.class public final Lcom/google/android/gms/internal/ads/Cq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final DW:[B

.field private final FH:Lcom/google/android/gms/internal/ads/as;

.field private final Hw:Lcom/google/android/gms/internal/ads/ts;

.field private final j6:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;[BLcom/google/android/gms/internal/ads/as;Lcom/google/android/gms/internal/ads/ts;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;[B",
            "Lcom/google/android/gms/internal/ads/as;",
            "Lcom/google/android/gms/internal/ads/ts;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Cq;->j6:Ljava/lang/Object;

    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Cq;->DW:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Cq;->FH:Lcom/google/android/gms/internal/ads/as;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Cq;->Hw:Lcom/google/android/gms/internal/ads/ts;

    return-void
.end method


# virtual methods
.method public final DW()[B
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cq;->DW:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final j6()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Cq;->j6:Ljava/lang/Object;

    return-object v0
.end method
