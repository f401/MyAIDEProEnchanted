.class public final Lcom/google/android/gms/internal/ads/So;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/ads/internal/ta;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzbbi;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ix;",
            "Lcom/google/android/gms/ads/internal/ta;",
            ")",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/internal/ads/To;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/To;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;Ljava/lang/String;)V

    sget-object p0, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    invoke-static {v0, v7, p0}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/YF;)Lcom/google/android/gms/internal/ads/Mo;
    .registers 24

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->n5:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static/range {p0 .. p10}, Lcom/google/android/gms/internal/ads/Ep;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/YF;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v0

    return-object v0

    :cond_1a
    :try_start_1a
    new-instance v0, Lcom/google/android/gms/internal/ads/Uo;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/Uo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/YF;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ql;->j6(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/Mo;
    :try_end_39
    .catchall {:try_start_1a .. :try_end_39} :catchall_3a

    return-object v0

    :catchall_3a
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/Wo;

    const-string v2, "Webview initialization failed."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Wo;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
