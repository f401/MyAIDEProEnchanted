.class final Lcom/google/android/gms/internal/measurement/_c$b;
.super Lcom/google/android/gms/internal/measurement/_c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/_c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/_c$d;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final FH(Ljava/lang/Object;J)Z
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/measurement/_c;->j6()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/_c;->u7(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :cond_b
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/_c;->tp(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final Hw(Ljava/lang/Object;J)F
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/_c$d;->j6(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public final Zo(Ljava/lang/Object;J)B
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/measurement/_c;->j6()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/_c;->VH(Ljava/lang/Object;J)B

    move-result p1

    return p1

    :cond_b
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/_c;->gn(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

.method public final j6(JB)V
    .registers 4

    invoke-static {p1, p2, p3}, Llibcore/io/Memory;->pokeByte(JB)V

    return-void
.end method

.method public final j6(Ljava/lang/Object;JB)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/_c;->j6()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/_c;->j6(Ljava/lang/Object;JB)V

    return-void

    :cond_a
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/_c;->DW(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final j6(Ljava/lang/Object;JD)V
    .registers 12

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/_c$d;->j6(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final j6(Ljava/lang/Object;JF)V
    .registers 5

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/_c$d;->j6(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final j6(Ljava/lang/Object;JZ)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/_c;->j6()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/_c;->DW(Ljava/lang/Object;JZ)V

    return-void

    :cond_a
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/_c;->FH(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public final j6([BJJJ)V
    .registers 8

    long-to-int p3, p2

    long-to-int p2, p6

    invoke-static {p4, p5, p1, p3, p2}, Llibcore/io/Memory;->pokeByteArray(J[BII)V

    return-void
.end method

.method public final v5(Ljava/lang/Object;J)D
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/_c$d;->DW(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method
