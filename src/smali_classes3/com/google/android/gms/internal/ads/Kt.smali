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
    .registers 2

    and-int/lit8 v0, p0, 0x1

    neg-int v0, v0

    ushr-int/lit8 p0, p0, 0x1

    xor-int/2addr p0, v0

    return p0
.end method

.method public static j6(J)J
    .registers 5

    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    neg-long v0, v0

    const/4 v2, 0x1

    ushr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static j6([BII)Lcom/google/android/gms/internal/ads/Kt;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/Kt;->j6([BIIZ)Lcom/google/android/gms/internal/ads/Kt;

    move-result-object p0

    return-object p0
.end method

.method static j6([BIIZ)Lcom/google/android/gms/internal/ads/Kt;
    .registers 11

    new-instance v6, Lcom/google/android/gms/internal/ads/Mt;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Mt;-><init>([BIIZLcom/google/android/gms/internal/ads/Lt;)V

    :try_start_b
    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/ads/Mt;->Hw(I)I
    :try_end_e
    .catch Lcom/google/android/gms/internal/ads/pu; {:try_start_b .. :try_end_e} :catch_f

    return-object v6

    :catch_f
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
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

    if-ltz p1, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/ads/Kt;->DW:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/Kt;->DW:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Recursion limit cannot be negative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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
            "Lcom/google/android/gms/internal/ads/Zu<",
            "TT;>;",
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
