.class public abstract Lcom/google/android/gms/internal/ads/fx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ex;


# static fields
.field protected static volatile j6:Lcom/google/android/gms/internal/ads/Ax;


# instance fields
.field protected DW:Landroid/view/MotionEvent;

.field protected EQ:D

.field protected FH:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected Hw:J

.field private J0:D

.field protected J8:F

.field protected Mr:Landroid/util/DisplayMetrics;

.field protected QX:F

.field protected VH:J

.field protected Ws:F

.field protected XL:F

.field protected Zo:J

.field private aM:Z

.field protected gn:J

.field protected j3:Z

.field protected tp:J

.field protected u7:J

.field protected v5:J

.field private we:D


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fx;->FH:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->Hw:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->v5:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->Zo:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->VH:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->gn:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->u7:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->tp:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/fx;->aM:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/fx;->j3:Z

    :try_start_1f
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->b:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/google/android/gms/internal/ads/zw;->j6()V

    goto :goto_3a

    :cond_35
    sget-object v0, Lcom/google/android/gms/internal/ads/fx;->j6:Lcom/google/android/gms/internal/ads/Ax;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Fx;->j6(Lcom/google/android/gms/internal/ads/Ax;)Z

    :goto_3a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fx;->Mr:Landroid/util/DisplayMetrics;
    :try_end_44
    .catchall {:try_start_1f .. :try_end_44} :catchall_45

    goto :goto_46

    :catchall_45
    move-exception p1

    :goto_46
    return-void
.end method

.method private final j6(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;
    .registers 7

    if-eqz p3, :cond_a

    :try_start_2
    invoke-virtual {p0, p1, p4, p5}, Lcom/google/android/gms/internal/ads/fx;->j6(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/br;

    move-result-object p1

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/fx;->aM:Z

    goto :goto_f

    :cond_a
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/ads/fx;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Fp;)Lcom/google/android/gms/internal/ads/br;

    move-result-object p1

    :goto_f
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cw;->j6()I

    move-result p3

    if-nez p3, :cond_18

    goto :goto_1d

    :cond_18
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zw;->j6(Lcom/google/android/gms/internal/ads/br;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2e

    :cond_1d
    :goto_1d
    const/4 p1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_22
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_22} :catch_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_22} :catch_26
    .catchall {:try_start_2 .. :try_end_22} :catchall_23

    goto :goto_2e

    :catchall_23
    move-exception p1

    const/4 p1, 0x3

    goto :goto_2a

    :catch_26
    move-exception p1

    goto :goto_29

    :catch_28
    move-exception p1

    :goto_29
    const/4 p1, 0x7

    :goto_2a
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2e
    return-object p1
.end method


# virtual methods
.method protected abstract DW(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/Gx;
.end method

.method protected abstract j6([Ljava/lang/StackTraceElement;)J
.end method

.method protected abstract j6(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/br;
.end method

.method protected abstract j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Fp;)Lcom/google/android/gms/internal/ads/br;
.end method

.method public final j6(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lcom/google/android/gms/internal/ads/Hx;->j6()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->u9:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_21

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The caller must not be called from the UI thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    :goto_21
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/fx;->j6(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/fx;->j6(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 12

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/fx;->j6(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final j6(III)V
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/fx;->DW:Landroid/view/MotionEvent;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/fx;->Mr:Landroid/util/DisplayMetrics;

    if-eqz v1, :cond_38

    move/from16 v2, p3

    int-to-long v4, v2

    move/from16 v2, p1

    int-to-float v2, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    mul-float v9, v2, v1

    move/from16 v2, p2

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide v2, v6

    move v6, v8

    move v7, v9

    move v8, v1

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/fx;->DW:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/fx;->j3:Z

    return-void
.end method

.method public final j6(Landroid/view/MotionEvent;)V
    .registers 16

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fx;->aM:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->VH:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->Zo:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->v5:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->Hw:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->gn:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->tp:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->u7:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fx;->FH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1b

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fx;->FH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fx;->DW:Landroid/view/MotionEvent;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/fx;->aM:Z

    :cond_35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_73

    if-eq v0, v3, :cond_42

    if-eq v0, v2, :cond_42

    goto :goto_85

    :cond_42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v6, v0

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/fx;->we:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v8, v4, v8

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/fx;->J0:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v10, v6, v10

    iget-wide v12, p0, Lcom/google/android/gms/internal/ads/fx;->EQ:D

    mul-double v8, v8, v8

    mul-double v10, v10, v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v12, v8

    iput-wide v12, p0, Lcom/google/android/gms/internal/ads/fx;->EQ:D

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/fx;->we:D

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/fx;->J0:D

    goto :goto_85

    :cond_73
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/fx;->EQ:D

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v4, v0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/fx;->we:D

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v4, v0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/fx;->J0:D

    :goto_85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v4, 0x1

    if-eqz v0, :cond_127

    if-eq v0, v3, :cond_f1

    if-eq v0, v2, :cond_9d

    const/4 p1, 0x3

    if-eq v0, p1, :cond_96

    goto/16 :goto_144

    :cond_96
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->VH:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->VH:J

    goto/16 :goto_144

    :cond_9d
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/fx;->v5:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    add-int/2addr v0, v3

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/fx;->v5:J

    :try_start_a8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fx;->DW(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/Gx;

    move-result-object p1

    if-eqz p1, :cond_b8

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Gx;->v5:Ljava/lang/Long;

    if-eqz v0, :cond_b8

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Gx;->gn:Ljava/lang/Long;

    if-eqz v0, :cond_b8

    const/4 v0, 0x1

    goto :goto_b9

    :cond_b8
    const/4 v0, 0x0

    :goto_b9
    if-eqz v0, :cond_cd

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/fx;->u7:J

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Gx;->v5:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Gx;->gn:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/fx;->u7:J

    :cond_cd
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fx;->Mr:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_dc

    if-eqz p1, :cond_dc

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Gx;->Zo:Ljava/lang/Long;

    if-eqz v0, :cond_dc

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Gx;->u7:Ljava/lang/Long;

    if-eqz v0, :cond_dc

    const/4 v1, 0x1

    :cond_dc
    if-eqz v1, :cond_144

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->tp:J

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/Gx;->Zo:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Gx;->u7:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->tp:J
    :try_end_f0
    .catch Lcom/google/android/gms/internal/ads/xx; {:try_start_a8 .. :try_end_f0} :catch_125

    goto :goto_144

    :cond_f1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fx;->DW:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fx;->FH:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fx;->FH:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_110

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/fx;->FH:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_110
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->Zo:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->Zo:J

    :try_start_115
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fx;->j6([Ljava/lang/StackTraceElement;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->gn:J
    :try_end_124
    .catch Lcom/google/android/gms/internal/ads/xx; {:try_start_115 .. :try_end_124} :catch_125

    goto :goto_144

    :catch_125
    move-exception p1

    goto :goto_144

    :cond_127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/fx;->J8:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/fx;->Ws:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/fx;->QX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/fx;->XL:F

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->Hw:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->Hw:J

    :cond_144
    :goto_144
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/fx;->j3:Z

    return-void
.end method
