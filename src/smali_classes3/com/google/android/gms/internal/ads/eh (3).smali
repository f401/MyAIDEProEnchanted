.class public final Lcom/google/android/gms/internal/ads/eh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Tg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Tg<",
        "Lcom/google/android/gms/internal/ads/W;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Z

.field private final FH:Z

.field private final j6:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/eh;->j6:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/eh;->DW:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/eh;->FH:Z

    return-void
.end method


# virtual methods
.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Kg;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/ka;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v3, "images"

    const/4 v4, 0x0

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/eh;->j6:Z

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/eh;->DW:Z

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/eh;->j6:Z

    const-string v4, "app_icon"

    invoke-virtual {v7, v8, v4, v2, v3}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v2

    const-string v3, "video"

    invoke-virtual {v7, v8, v3}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v3

    invoke-virtual/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/Hm;

    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/V;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_47
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lcom/google/android/gms/internal/ads/Hm;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v1

    const-string v3, "headline"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/eh;->FH:Z

    if-eqz v5, :cond_94

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/pk;->DW()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_66

    sget v6, Labcd/ex;->s7:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_68

    :cond_66
    const-string v5, "Test Ad"

    :goto_68
    if-eqz v3, :cond_92

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_94

    :cond_92
    move-object v6, v5

    goto :goto_95

    :cond_94
    :goto_94
    move-object v6, v3

    :goto_95
    const-string v3, "body"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/gms/internal/ads/Ga;

    const-string v2, "call_to_action"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "rating"

    const-wide/high16 v11, -0x4010000000000000L  # -1.0

    invoke-virtual {v8, v2, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    const-string v2, "store"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "price"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/google/android/gms/internal/ads/P;

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    if-eqz v1, :cond_d2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->yS()Lcom/google/android/gms/internal/ads/bp;

    move-result-object v4

    move-object/from16 v17, v4

    goto :goto_d4

    :cond_d2
    move-object/from16 v17, v2

    :goto_d4
    if-eqz v1, :cond_dd

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_df

    :cond_dd
    move-object/from16 v18, v2

    :goto_df
    new-instance v1, Lcom/google/android/gms/internal/ads/W;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v5, v1

    move-object v8, v3

    invoke-direct/range {v5 .. v20}, Lcom/google/android/gms/internal/ads/W;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ga;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/P;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/kI;Landroid/view/View;Labcd/ox;Ljava/lang/String;)V

    return-object v1
.end method
