.class final Lcom/google/android/gms/internal/ads/Rc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final DW:F

.field private static final FH:J

.field private static final Hw:F

.field private static final j6:Lcom/google/android/gms/internal/ads/Oc;

.field private static final v5:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/Oc;->j6()Lcom/google/android/gms/internal/ads/Oc;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/Rc;->j6:Lcom/google/android/gms/internal/ads/Oc;

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->Of:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/Rc;->DW:F

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->qP:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/ads/Rc;->FH:J

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->PT:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/Rc;->Hw:F

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->MP:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/ads/Rc;->v5:J

    return-void
.end method

.method private static j6(JI)I
    .registers 7

    rem-int/lit8 v0, p2, 0x10

    mul-int/lit8 v0, v0, 0x4

    ushr-long v0, p0, v0

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static j6()Z
    .registers 12

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const v0, 0x7fffffff

    const/16 v8, 0x10

    sget-object v1, Lcom/google/android/gms/internal/ads/Rc;->j6:Lcom/google/android/gms/internal/ads/Oc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Oc;->gn()I

    move-result v2

    sget-object v1, Lcom/google/android/gms/internal/ads/Rc;->j6:Lcom/google/android/gms/internal/ads/Oc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Oc;->u7()I

    move-result v3

    sget-object v1, Lcom/google/android/gms/internal/ads/Rc;->j6:Lcom/google/android/gms/internal/ads/Oc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Oc;->VH()I

    move-result v4

    sget-object v1, Lcom/google/android/gms/internal/ads/Rc;->j6:Lcom/google/android/gms/internal/ads/Oc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Oc;->Zo()I

    move-result v5

    if-ge v2, v8, :cond_1

    sget-wide v6, Lcom/google/android/gms/internal/ads/Rc;->v5:J

    cmp-long v1, v6, v10

    if-eqz v1, :cond_1

    invoke-static {v6, v7, v2}, Lcom/google/android/gms/internal/ads/Rc;->j6(JI)I

    move-result v1

    :goto_0
    if-gt v3, v1, :cond_4

    if-ge v2, v8, :cond_3

    sget-wide v6, Lcom/google/android/gms/internal/ads/Rc;->FH:J

    cmp-long v1, v6, v10

    if-eqz v1, :cond_3

    invoke-static {v6, v7, v2}, Lcom/google/android/gms/internal/ads/Rc;->j6(JI)I

    move-result v0

    :cond_0
    :goto_1
    add-int v1, v4, v5

    if-gt v1, v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_1
    sget v1, Lcom/google/android/gms/internal/ads/Rc;->Hw:F

    cmpl-float v6, v1, v9

    if-eqz v6, :cond_2

    int-to-float v6, v2

    mul-float/2addr v1, v6

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    sget v1, Lcom/google/android/gms/internal/ads/Rc;->DW:F

    cmpl-float v3, v1, v9

    if-eqz v3, :cond_0

    int-to-float v0, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method
