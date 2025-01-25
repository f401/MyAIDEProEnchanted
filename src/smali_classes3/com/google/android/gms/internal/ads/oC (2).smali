.class final Lcom/google/android/gms/internal/ads/oC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/uD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/uD<",
        "Lcom/google/android/gms/internal/ads/zD<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/gC;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/gC;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oC;->j6:Lcom/google/android/gms/internal/ads/gC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/gC;Lcom/google/android/gms/internal/ads/hC;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/oC;-><init>(Lcom/google/android/gms/internal/ads/gC;)V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Lcom/google/android/gms/internal/ads/wD;JJLjava/io/IOException;)I
    .registers 14

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zD;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oC;->j6:Lcom/google/android/gms/internal/ads/gC;

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/gC;->DW(Lcom/google/android/gms/internal/ads/zD;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/wD;JJ)V
    .registers 12

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zD;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oC;->j6:Lcom/google/android/gms/internal/ads/gC;

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/gC;->DW(Lcom/google/android/gms/internal/ads/zD;JJ)V

    return-void
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/wD;JJZ)V
    .registers 13

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zD;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oC;->j6:Lcom/google/android/gms/internal/ads/gC;

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/gC;->FH(Lcom/google/android/gms/internal/ads/zD;JJ)V

    return-void
.end method
