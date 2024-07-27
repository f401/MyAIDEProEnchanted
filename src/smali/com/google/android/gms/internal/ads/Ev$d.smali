.class abstract Lcom/google/android/gms/internal/ads/Ev$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/Ev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "d"
.end annotation


# instance fields
.field j6:Lsun/misc/Unsafe;


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ev$d;->j6:Lsun/misc/Unsafe;

    return-void
.end method


# virtual methods
.method public final DW(Ljava/lang/Object;J)J
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ev$d;->j6:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract FH(Ljava/lang/Object;J)Z
.end method

.method public abstract Hw(Ljava/lang/Object;J)F
.end method

.method public abstract Zo(Ljava/lang/Object;J)B
.end method

.method public final j6(Ljava/lang/Object;J)I
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ev$d;->j6:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public abstract j6(JB)V
.end method

.method public abstract j6(Ljava/lang/Object;JB)V
.end method

.method public abstract j6(Ljava/lang/Object;JD)V
.end method

.method public abstract j6(Ljava/lang/Object;JF)V
.end method

.method public final j6(Ljava/lang/Object;JI)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ev$d;->j6:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final j6(Ljava/lang/Object;JJ)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ev$d;->j6:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public abstract j6(Ljava/lang/Object;JZ)V
.end method

.method public abstract j6([BJJJ)V
.end method

.method public abstract v5(Ljava/lang/Object;J)D
.end method
