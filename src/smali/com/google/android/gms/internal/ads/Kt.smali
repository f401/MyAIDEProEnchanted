.class public abstract Lcom/google/android/gms/internal/ads/Kt;
.super Ljava/lang/Object;


# instance fields
.field DW:I

.field private FH:I

.field Hw:Lcom/google/android/gms/internal/ads/Nt;

.field j6:I

.field private v5:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/gms/internal/ads/Kt;->DW:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ads/Kt;->FH:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Kt;->v5:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/Lt;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Kt;-><init>()V

    return-void
.end method

.method public static VH(I)I
    .registers 3

    and-int/lit8 v0, p0, 0x1

    neg-int v0, v0

    ushr-int/lit8 v1, p0, 0x1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static j6(J)J
    .registers 6

    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    neg-long v0, v0

    const/4 v2, 0x1

    ushr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static j6([BII)Lcom/google/android/gms/internal/ads/Kt;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/Kt;->j6([BIIZ)Lcom/google/android/gms/internal/ads/Kt;

    move-result-object v0

    return-object v0
.end method

.method static j6([BIIZ)Lcom/google/android/gms/internal/ads/Kt;
    .registers 10

    new-instance v0, Lcom/google/android/gms/internal/ads/Mt;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Mt;-><init>([BIIZLcom/google/android/gms/internal/ads/Lt;)V

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/Mt;->Hw(I)I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract DW()F
.end method

.method public abstract DW(I)Z
.end method

.method public abstract EQ()Ljava/lang/String;
.end method

.method public final FH(I)I
    .registers 4

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Kt;->DW:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/Kt;->DW:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Recursion limit cannot be negative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract FH()Ljava/lang/String;
.end method

.method public abstract Hw()I
.end method

.method public abstract Hw(I)I
.end method

.method public abstract J0()I
.end method

.method public abstract J8()I
.end method

.method public abstract Mr()I
.end method

.method public abstract QX()J
.end method

.method public abstract VH()I
.end method

.method public abstract Ws()I
.end method

.method public abstract XL()I
.end method

.method public abstract Zo()J
.end method

.method public abstract Zo(I)V
.end method

.method public abstract aM()J
.end method

.method public abstract gn()J
.end method

.method public abstract j3()Z
.end method

.method public abstract j6()D
.end method

.method public abstract j6(Lcom/google/android/gms/internal/ads/Zu;Lcom/google/android/gms/internal/ads/Ut;)Lcom/google/android/gms/internal/ads/Pu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/ads/Pu;",
            ">(",
            "Lcom/google/android/gms/internal/ads/Zu",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/Ut;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract j6(I)V
.end method

.method public abstract tp()Z
.end method

.method public abstract u7()I
.end method

.method public abstract v5()J
.end method

.method public abstract v5(I)V
.end method

.method public abstract we()Lcom/google/android/gms/internal/ads/yt;
.end method
