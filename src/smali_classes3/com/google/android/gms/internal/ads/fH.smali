.class public final Lcom/google/android/gms/internal/ads/fH;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field public static final j6:Lcom/google/android/gms/internal/ads/fH;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/fH;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/fH;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/fH;->j6:Lcom/google/android/gms/internal/ads/fH;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/rI;)Lcom/google/android/gms/internal/ads/zzwb;
    .registers 28

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rI;->j6()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_f

    :cond_d
    const-wide/16 v1, -0x1

    :goto_f
    move-wide v5, v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rI;->DW()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rI;->Hw()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rI;->v5()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_30

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v9, v1

    move-object/from16 v1, p0

    goto :goto_33

    :cond_30
    move-object/from16 v1, p0

    move-object v9, v3

    :goto_33
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/rI;->j6(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rI;->J8()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rI;->Zo()Landroid/location/Location;

    move-result-object v15

    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/rI;->j6(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rI;->VH()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rI;->gn()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rI;->EQ()Lcom/google/android/gms/ads/search/a;

    move-result-object v2

    if-nez v2, :cond_a4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_6f

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Zl;->j6([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_71

    :cond_6f
    move-object/from16 v21, v3

    :goto_71
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rI;->u7()Z

    move-result v22

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rI;->QX()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rI;->XL()Ljava/lang/String;

    move-result-object v25

    new-instance v1, Lcom/google/android/gms/internal/ads/zzwb;

    move-object v3, v1

    const/16 v4, 0x8

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rI;->J0()Landroid/os/Bundle;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rI;->FH()Landroid/os/Bundle;

    move-result-object v18

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rI;->Ws()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/rI;->tp()Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0x0

    const/16 v4, 0x8

    invoke-direct/range {v3 .. v25}, Lcom/google/android/gms/internal/ads/zzwb;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzzs;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzvv;ILjava/lang/String;)V

    return-object v1

    :cond_a4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzs;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzzs;-><init>(Lcom/google/android/gms/ads/search/a;)V

    throw v3
.end method
