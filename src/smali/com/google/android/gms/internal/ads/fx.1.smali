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
            "Ljava/util/LinkedList",
            "<",
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
    .registers 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fx;->FH:Ljava/util/LinkedList;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->Hw:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->v5:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->Zo:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->VH:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->gn:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->u7:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->tp:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/fx;->aM:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/fx;->j3:Z

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->b:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zw;->j6()V

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fx;->Mr:Landroid/util/DisplayMetrics;

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/fx;->j6:Lcom/google/android/gms/internal/ads/Ax;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Fx;->j6(Lcom/google/android/gms/internal/ads/Ax;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private final j6(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;
    .registers 9

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p0, p1, p4, p5}, Lcom/google/android/gms/internal/ads/fx;->j6(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/br;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/fx;->aM:Z

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cw;->j6()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/fx;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Fp;)Lcom/google/android/gms/internal/ads/br;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zw;->j6(Lcom/google/android/gms/internal/ads/br;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_2
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2
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
    .registers 9

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/Hx;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->u9:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/fx;->j6(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The caller must not be called from the UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j6(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/fx;->j6(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    move-result-object v0

    return-object v0
.end method

.method public final j6(III)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/fx;->DW:Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/fx;->Mr:Landroid/util/DisplayMetrics;

    if-eqz v2, :cond_1

    move/from16 v0, p3

    int-to-long v4, v0

    move/from16 v0, p1

    int-to-float v7, v0

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    mul-float/2addr v7, v8

    move/from16 v0, p2

    int-to-float v9, v0

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/fx;->DW:Landroid/view/MotionEvent;

    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/fx;->j3:Z

    return-void

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/fx;->DW:Landroid/view/MotionEvent;

    goto :goto_0
.end method

.method public final j6(Landroid/view/MotionEvent;)V
    .registers 14

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fx;->aM:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->VH:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->Zo:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->v5:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->Hw:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->gn:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->tp:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->u7:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fx;->FH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fx;->FH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fx;->DW:Landroid/view/MotionEvent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/fx;->aM:Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    :cond_2
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/fx;->j3:Z

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v4, v0

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/fx;->we:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v2, v6

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/fx;->J0:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v8, v4, v8

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/fx;->EQ:D

    mul-double/2addr v6, v6

    mul-double/2addr v8, v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v6, v10

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/fx;->EQ:D

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->we:D

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/fx;->J0:D

    goto :goto_1

    :cond_4
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->EQ:D

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->we:D

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->J0:D

    goto :goto_1

    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->VH:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->VH:J

    goto :goto_2

    :cond_6
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->v5:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/fx;->v5:J

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fx;->DW(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/Gx;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/Gx;->v5:Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/Gx;->gn:Ljava/lang/Long;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_7

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/fx;->u7:J

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/Gx;->v5:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/Gx;->gn:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/fx;->u7:J

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fx;->Mr:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_c

    if-eqz v2, :cond_c

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/Gx;->Zo:Ljava/lang/Long;

    if-eqz v0, :cond_c

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/Gx;->u7:Ljava/lang/Long;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->tp:J

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/Gx;->Zo:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Gx;->u7:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->tp:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/xx; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fx;->DW:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fx;->FH:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fx;->DW:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fx;->FH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fx;->FH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_a
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->Zo:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->Zo:J

    :try_start_1
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/fx;->j6([Ljava/lang/StackTraceElement;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->gn:J
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/xx; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_b
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

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/fx;->XL:F

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->Hw:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/fx;->Hw:J

    goto/16 :goto_2

    :cond_c
    move v0, v1

    goto :goto_4
.end method
