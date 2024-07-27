.class final Lcom/google/android/gms/internal/ads/Ev$b;
.super Lcom/google/android/gms/internal/ads/Ev$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/Ev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Ev$d;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final FH(Ljava/lang/Object;J)Z
    .registers 6

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ev;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/Ev;->u7(Ljava/lang/Object;J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/Ev;->tp(Ljava/lang/Object;J)Z

    move-result v0

    goto :goto_0
.end method

.method public final Hw(Ljava/lang/Object;J)F
    .registers 6

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Ev$d;->j6(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final Zo(Ljava/lang/Object;J)B
    .registers 6

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ev;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/Ev;->VH(Ljava/lang/Object;J)B

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/Ev;->gn(Ljava/lang/Object;J)B

    move-result v0

    goto :goto_0
.end method

.method public final j6(JB)V
    .registers 5

    invoke-static {p1, p2, p3}, Llibcore/io/Memory;->pokeByte(JB)V

    return-void
.end method

.method public final j6(Ljava/lang/Object;JB)V
    .registers 7

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ev;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/Ev;->j6(Ljava/lang/Object;JB)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;JB)V

    goto :goto_0
.end method

.method public final j6(Ljava/lang/Object;JD)V
    .registers 12

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Ev$d;->j6(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final j6(Ljava/lang/Object;JF)V
    .registers 7

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/Ev$d;->j6(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final j6(Ljava/lang/Object;JZ)V
    .registers 7

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ev;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/Ev;->DW(Ljava/lang/Object;JZ)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/Ev;->FH(Ljava/lang/Object;JZ)V

    goto :goto_0
.end method

.method public final j6([BJJJ)V
    .registers 10

    long-to-int v0, p2

    long-to-int v1, p6

    invoke-static {p4, p5, p1, v0, v1}, Llibcore/io/Memory;->pokeByteArray(J[BII)V

    return-void
.end method

.method public final v5(Ljava/lang/Object;J)D
    .registers 6

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Ev$d;->DW(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method
