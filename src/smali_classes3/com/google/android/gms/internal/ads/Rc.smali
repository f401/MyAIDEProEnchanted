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
    .registers 5

    rem-int/lit8 p2, p2, 0x10

    mul-int/lit8 p2, p2, 0x4

    ushr-long/2addr p0, p2

    const-wide/16 v0, 0xf

    and-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method static j6()Z
    .registers 13

    sget-object v0, Lcom/google/android/gms/internal/ads/Rc;->j6:Lcom/google/android/gms/internal/ads/Oc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Oc;->gn()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Oc;->u7()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Oc;->VH()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Oc;->Zo()I

    move-result v0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    const/16 v9, 0x10

    if-ge v1, v9, :cond_28

    sget-wide v10, Lcom/google/android/gms/internal/ads/Rc;->v5:J

    cmp-long v12, v10, v5

    if-eqz v12, :cond_28

    invoke-static {v10, v11, v1}, Lcom/google/android/gms/internal/ads/Rc;->j6(JI)I

    move-result v10

    goto :goto_37

    :cond_28
    sget v10, Lcom/google/android/gms/internal/ads/Rc;->Hw:F

    cmpl-float v11, v10, v7

    if-eqz v11, :cond_34

    int-to-float v11, v1

    mul-float v10, v10, v11

    float-to-int v10, v10

    add-int/2addr v10, v4

    goto :goto_37

    :cond_34
    const v10, 0x7fffffff

    :goto_37
    if-gt v2, v10, :cond_54

    if-ge v1, v9, :cond_46

    sget-wide v9, Lcom/google/android/gms/internal/ads/Rc;->FH:J

    cmp-long v2, v9, v5

    if-eqz v2, :cond_46

    invoke-static {v9, v10, v1}, Lcom/google/android/gms/internal/ads/Rc;->j6(JI)I

    move-result v8

    goto :goto_50

    :cond_46
    sget v2, Lcom/google/android/gms/internal/ads/Rc;->DW:F

    cmpl-float v5, v2, v7

    if-eqz v5, :cond_50

    int-to-float v1, v1

    mul-float v2, v2, v1

    float-to-int v8, v2

    :cond_50
    :goto_50
    add-int/2addr v3, v0

    if-gt v3, v8, :cond_54

    return v4

    :cond_54
    const/4 v0, 0x0

    return v0
.end method
