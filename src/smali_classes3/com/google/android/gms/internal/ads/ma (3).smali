.class public Lcom/google/android/gms/internal/ads/ma;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ia;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/ja;

.field EQ:Z

.field private final FH:Landroid/content/Context;

.field private final Hw:Lcom/google/android/gms/internal/ads/Q;

.field private J0:Lcom/google/android/gms/internal/ads/_j;

.field private J8:Lcom/google/android/gms/internal/ads/Aa;

.field private QX:J

.field private final VH:Lcom/google/android/gms/internal/ads/ka;

.field private Ws:Z

.field private XL:J

.field private final Zo:Lcom/google/android/gms/internal/ads/dh;

.field private aM:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Lcom/google/android/gms/internal/ads/ix;

.field private final j6:Ljava/lang/Object;

.field tp:Z

.field private final u7:Lcom/google/android/gms/internal/ads/zzbbi;

.field private final v5:Lorg/json/JSONObject;

.field private we:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/dh;Lcom/google/android/gms/internal/ads/ix;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/ka;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->j6:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ma;->Ws:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ma;->QX:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ma;->XL:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->aM:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ma;->FH:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ma;->DW:Lcom/google/android/gms/internal/ads/ja;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ma;->Zo:Lcom/google/android/gms/internal/ads/dh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ma;->gn:Lcom/google/android/gms/internal/ads/ix;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ma;->v5:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/ma;->VH:Lcom/google/android/gms/internal/ads/ka;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/ma;->u7:Lcom/google/android/gms/internal/ads/zzbbi;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/ma;->we:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/internal/ads/Q;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/Q;-><init>(Lcom/google/android/gms/internal/ads/dh;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ma;->Hw:Lcom/google/android/gms/internal/ads/Q;

    return-void
.end method

.method private final VH(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 14

    const-string v0, "window"

    const-string v1, "relative_to"

    const-string v2, "y"

    const-string v3, "x"

    const-string v4, "height"

    const-string v5, "width"

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_14

    return-object v6

    :cond_14
    :try_start_14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ma;->Zo(Landroid/view/View;)[I

    move-result-object v7

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/ma;->j6(I)I

    move-result v9

    invoke-virtual {v8, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/ma;->j6(I)I

    move-result v9

    invoke-virtual {v8, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v9, 0x0

    aget v10, v7, v9

    invoke-direct {p0, v10}, Lcom/google/android/gms/internal/ads/ma;->j6(I)I

    move-result v10

    invoke-virtual {v8, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v10, 0x1

    aget v11, v7, v10

    invoke-direct {p0, v11}, Lcom/google/android/gms/internal/ads/ma;->j6(I)I

    move-result v11

    invoke-virtual {v8, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v8, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "frame"

    invoke-virtual {v6, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_5f

    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/ma;->j6(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_7f

    :cond_5f
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    aget v4, v7, v9

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/ma;->j6(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    aget v3, v7, v10

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/ma;->j6(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_7f
    const-string v0, "visible_bounds"

    invoke-virtual {v6, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_84} :catch_85

    goto :goto_8b

    :catch_85
    move-exception p1

    const-string p1, "Unable to get native ad view bounding box"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :goto_8b
    return-object v6
.end method

.method private static Zo(Landroid/view/View;)[I
    .registers 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    return-object v0
.end method

.method private static gn(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Nk;->Hw(Landroid/view/View;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    const-string v1, "contained_in_scroll_view"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    move-exception p0

    :goto_1c
    return-object v0
.end method

.method private final j6(I)I
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->FH:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private final j6(Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/ma;->j6(I)I

    move-result v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/ma;->j6(I)I

    move-result v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/ma;->j6(I)I

    move-result v1

    const-string v2, "x"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ma;->j6(I)I

    move-result p1

    const-string v1, "y"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "relative_to"

    const-string v1, "self"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private final j6(Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_106

    if-nez p2, :cond_b

    goto/16 :goto_106

    :cond_b
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ma;->Zo(Landroid/view/View;)[I

    move-result-object p2

    monitor-enter p1

    :try_start_10
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_101

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_18

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ma;->Zo(Landroid/view/View;)[I

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_40
    .catchall {:try_start_10 .. :try_end_40} :catchall_103

    :try_start_40
    const-string v7, "width"

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/ma;->j6(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "height"

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/ads/ma;->j6(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "x"

    const/4 v8, 0x0

    aget v9, v4, v8

    aget v10, p2, v8

    sub-int/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/ads/ma;->j6(I)I

    move-result v9

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "y"

    const/4 v9, 0x1

    aget v10, v4, v9

    aget v11, p2, v9

    sub-int/2addr v10, v11

    invoke-direct {p0, v10}, Lcom/google/android/gms/internal/ads/ma;->j6(I)I

    move-result v10

    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "relative_to"

    const-string v10, "ad_view"

    invoke-virtual {v6, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "frame"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_94

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/ma;->j6(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_c7

    :cond_94
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "width"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "height"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "x"

    aget v10, v4, v8

    aget v8, p2, v8

    sub-int/2addr v10, v8

    invoke-direct {p0, v10}, Lcom/google/android/gms/internal/ads/ma;->j6(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "y"

    aget v4, v4, v9

    aget v8, p2, v9

    sub-int/2addr v4, v8

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/ma;->j6(I)I

    move-result v4

    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "relative_to"

    const-string v7, "ad_view"

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v4, v6

    :goto_c7
    const-string v6, "visible_bounds"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_ee

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "text_color"

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "font_size"

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v4, "text"

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_ee
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f7
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_f7} :catch_f9
    .catchall {:try_start_40 .. :try_end_f7} :catchall_103

    goto/16 :goto_18

    :catch_f9
    move-exception v2

    :try_start_fa
    const-string v2, "Unable to get asset views information"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_101
    monitor-exit p1

    return-object v0

    :catchall_103
    move-exception p2

    monitor-exit p1
    :try_end_105
    .catchall {:try_start_fa .. :try_end_105} :catchall_103

    throw p2

    :cond_106
    :goto_106
    return-object v0
.end method

.method private final j6(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .registers 14

    const-string v0, "has_custom_click_handler"

    const-string v1, "Invalid call from a non-UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ad"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ma;->v5:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_1a

    const-string v2, "asset_view_signal"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1a
    if-eqz p2, :cond_21

    const-string p3, "ad_view_signal"

    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_21
    if-eqz p7, :cond_28

    const-string p2, "click_signal"

    invoke-virtual {v1, p2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_28
    if-eqz p4, :cond_2f

    const-string p2, "scroll_view_signal"

    invoke-virtual {v1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2f
    if-eqz p5, :cond_36

    const-string p2, "lock_screen_signal"

    invoke-virtual {v1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_36
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide p3

    const-string p5, "time_from_last_touch_down"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ma;->XL:J

    sub-long v2, p3, v2

    invoke-virtual {p2, p5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p5, "time_from_last_touch"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ma;->QX:J

    sub-long v2, p3, v2

    invoke-virtual {p2, p5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p5, "touch_signal"

    invoke-virtual {v1, p5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p5, "asset_id"

    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "template"

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/ma;->VH:Lcom/google/android/gms/internal/ads/ka;

    invoke-interface {p6}, Lcom/google/android/gms/internal/ads/ka;->x6()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->VH()Lcom/google/android/gms/internal/ads/Vk;

    const-string p5, "is_privileged_process"

    invoke-static {}, Lcom/google/android/gms/internal/ads/Vk;->j6()Z

    move-result p6

    invoke-virtual {p2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object p5, Lcom/google/android/gms/internal/ads/p;->Vq:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object p6

    invoke-virtual {p6, p5}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-eqz p5, :cond_a6

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/ma;->Hw:Lcom/google/android/gms/internal/ads/Q;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/Q;->DW()Lcom/google/android/gms/internal/ads/xb;

    move-result-object p5

    if-eqz p5, :cond_a6

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/ma;->v5:Lorg/json/JSONObject;

    const-string v2, "custom_one_point_five_click_enabled"

    invoke-virtual {p5, v2, p6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p5

    if-eqz p5, :cond_a6

    const-string p5, "custom_one_point_five_click_eligible"

    invoke-virtual {p2, p5, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_a6
    const-string p5, "timestamp"

    invoke-virtual {p2, p5, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ma;->DW:Lcom/google/android/gms/internal/ads/ja;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/ma;->VH:Lcom/google/android/gms/internal/ads/ka;

    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/ka;->vJ()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/google/android/gms/internal/ads/ja;->cb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/lb;

    move-result-object p3

    if-eqz p3, :cond_bb

    const/4 p3, 0x1

    goto :goto_bc

    :cond_bb
    const/4 p3, 0x0

    :goto_bc
    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/ma;->Ws:Z

    if-eqz p3, :cond_ce

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ma;->pn()Z

    move-result p3

    if-eqz p3, :cond_ce

    const-string p3, "custom_click_gesture_eligible"

    invoke-virtual {p2, p3, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_ce
    if-eqz p9, :cond_d5

    const-string p3, "is_custom_click_gesture"

    invoke-virtual {p2, p3, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_d5
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ma;->DW:Lcom/google/android/gms/internal/ads/ja;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/ma;->VH:Lcom/google/android/gms/internal/ads/ka;

    invoke-interface {p4}, Lcom/google/android/gms/internal/ads/ka;->vJ()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/google/android/gms/internal/ads/ja;->cb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/lb;

    move-result-object p3

    if-eqz p3, :cond_e4

    const/4 p6, 0x1

    :cond_e4
    invoke-virtual {v1, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_e7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_e7} :catch_133

    :try_start_e7
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ma;->v5:Lorg/json/JSONObject;

    const-string p4, "tracking_urls_and_actions"

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-nez p3, :cond_f6

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    :cond_f6
    const-string p4, "click_string"

    invoke-virtual {p3, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "click_signals"

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/ma;->gn:Lcom/google/android/gms/internal/ads/ix;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/ix;->j6()Lcom/google/android/gms/internal/ads/ex;

    move-result-object p5

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/ma;->FH:Landroid/content/Context;

    invoke-interface {p5, p6, p3, p1}, Lcom/google/android/gms/internal/ads/ex;->j6(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_10d} :catch_10e

    goto :goto_114

    :catch_10e
    move-exception p1

    :try_start_10f
    const-string p3, "Exception obtaining click signals"

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_114
    const-string p1, "click"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p8, :cond_120

    const-string p1, "provided_signals"

    invoke-virtual {v1, p1, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_120
    const-string p1, "ads_id"

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ma;->we:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ma;->Zo:Lcom/google/android/gms/internal/ads/dh;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/dh;->j6(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    const-string p2, "NativeAdEngineImpl.performClick"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/tm;->j6(Lcom/google/android/gms/internal/ads/Hm;Ljava/lang/String;)V
    :try_end_132
    .catch Lorg/json/JSONException; {:try_start_10f .. :try_end_132} :catch_133

    return-void

    :catch_133
    move-exception p1

    const-string p2, "Unable to create click JSON."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final j6(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->v5:Lorg/json/JSONObject;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    const-string v1, "allow_pub_event_reporting"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_c
    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final j6(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .registers 10

    const-string v0, "Invalid call from a non-UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ma;->tp:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    return v1

    :cond_b
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/ma;->tp:Z

    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ad"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ma;->v5:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ads_id"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ma;->we:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_27

    const-string v2, "asset_view_signal"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_27
    if-eqz p1, :cond_2e

    const-string p2, "ad_view_signal"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2e
    if-eqz p3, :cond_35

    const-string p1, "scroll_view_signal"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_35
    if-eqz p4, :cond_3c

    const-string p1, "lock_screen_signal"

    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3c
    if-eqz p5, :cond_43

    const-string p1, "provided_signals"

    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_43
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ma;->Zo:Lcom/google/android/gms/internal/ads/dh;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/dh;->Hw(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    const-string p2, "NativeAdEngineImpl.recordImpression"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/tm;->j6(Lcom/google/android/gms/internal/ads/Hm;Ljava/lang/String;)V
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_4e} :catch_5c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ma;->DW:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/ja;->DW(Lcom/google/android/gms/internal/ads/ia;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ma;->DW:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ja;->HE()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ma;->HO()V

    return v1

    :catch_5c
    move-exception p1

    const-string p2, "Unable to create impression JSON."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private final u7(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    :try_start_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    const-string v1, "can_show_on_lock_screen"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Nk;->FH(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    const-string p1, "is_keyguard_locked"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ma;->FH:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Nk;->EQ(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_22} :catch_23

    goto :goto_29

    :catch_23
    move-exception p1

    const-string p1, "Unable to get lock screen information"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :goto_29
    return-object v0
.end method

.method private static v5(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final DW()Lcom/google/android/gms/internal/ads/Aa;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->J8:Lcom/google/android/gms/internal/ads/Aa;

    return-object v0
.end method

.method public final DW(Landroid/os/Bundle;)V
    .registers 5

    if-nez p1, :cond_8

    const-string p1, "Touch event data is null. No touch event is reported."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string v0, "touch_reporting"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ma;->j6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string p1, "The ad slot cannot handle external touch events. You must be whitelisted to be able to report your touch events."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    return-void

    :cond_16
    const-string v0, "x"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    const-string v1, "y"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "duration_ms"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ma;->gn:Lcom/google/android/gms/internal/ads/ix;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ix;->j6()Lcom/google/android/gms/internal/ads/ex;

    move-result-object v2

    invoke-interface {v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/ex;->j6(III)V

    return-void
.end method

.method public final DW(Landroid/view/View;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->aM:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public DW(Landroid/view/View;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ma;->VH(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/ma;->j6(Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ma;->gn(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ma;->u7(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ma;->j6(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public final DW(Landroid/view/View;Lcom/google/android/gms/internal/ads/ga;)Z
    .registers 7

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->k4:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x11

    if-eqz v0, :cond_1b

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_21

    :cond_1b
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    :goto_21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ma;->VH:Lcom/google/android/gms/internal/ads/ka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ka;->DY()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_45

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_36

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_36
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ma;->DW:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/ja;->DW(Lcom/google/android/gms/internal/ads/ga;)V

    const/4 p1, 0x1

    return p1

    :cond_45
    const/4 p1, 0x0

    return p1
.end method

.method public DY()V
    .registers 4

    const-string v0, "Invalid call from a non-UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ma;->EQ:Z

    if-eqz v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ma;->EQ:Z

    :try_start_d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ma;->v5:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ads_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ma;->we:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ma;->Zo:Lcom/google/android/gms/internal/ads/dh;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dh;->FH(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    const-string v1, "NativeAdEngineImpl.recordDownloadedImpression"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/tm;->j6(Lcom/google/android/gms/internal/ads/Hm;Ljava/lang/String;)V
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final FH()Lcom/google/android/gms/internal/ads/_j;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->ei()Lcom/google/android/gms/internal/ads/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ma;->FH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ak;->FH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->J0:Lcom/google/android/gms/internal/ads/_j;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/google/android/gms/internal/ads/_j;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ma;->FH:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ma;->DW:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/ja;->ys()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/_j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->J0:Lcom/google/android/gms/internal/ads/_j;

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->J0:Lcom/google/android/gms/internal/ads/_j;

    return-object v0

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public final FH(Landroid/os/Bundle;)V
    .registers 12

    if-nez p1, :cond_8

    const-string p1, "Click data is null. No click is reported."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string v0, "click_reporting"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ma;->j6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string p1, "The ad slot cannot handle external click events. You must be whitelisted to be able to report your click events."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    return-void

    :cond_16
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v0, "click_signal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "asset_id"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, p1, v8}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/ma;->j6(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public final FH(Landroid/view/View;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->wE:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->gn:Lcom/google/android/gms/internal/ads/ix;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ix;->j6()Lcom/google/android/gms/internal/ads/ex;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ex;->j6(Landroid/view/View;)V

    :cond_20
    return-void
.end method

.method public final FH(Landroid/view/View;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/ma;->tp:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ma;->v5(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ma;->DW(Landroid/view/View;Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :cond_14
    sget-object v1, Lcom/google/android/gms/internal/ads/p;->RW:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5c

    if-eqz p2, :cond_5c

    monitor-enter p2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_5e

    :try_start_29
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_31

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ma;->v5(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ma;->DW(Landroid/view/View;Ljava/util/Map;)V

    monitor-exit p2
    :try_end_55
    .catchall {:try_start_29 .. :try_end_55} :catchall_59

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_5e

    return-void

    :cond_57
    :try_start_57
    monitor-exit p2

    goto :goto_5c

    :catchall_59
    move-exception p1

    monitor-exit p2
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_59

    :try_start_5b
    throw p1

    :cond_5c
    :goto_5c
    monitor-exit v0

    return-void

    :catchall_5e
    move-exception p1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_5e

    goto :goto_62

    :goto_61
    throw p1

    :goto_62
    goto :goto_61
.end method

.method public HO()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->DW:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ja;->HO()V

    return-void
.end method

.method public final Hw(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->DW:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ja;->j6(Landroid/view/View;)V

    return-void
.end method

.method public final RW()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->aM:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public Vq()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->DW:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ja;->BN()V

    return-void
.end method

.method public Xa()V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->Vq:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->v5:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->Hw:Lcom/google/android/gms/internal/ads/Q;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Q;->j6()V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->FH:Landroid/content/Context;

    return-object v0
.end method

.method public j6(Landroid/view/View$OnClickListener;Z)Landroid/view/View;
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->VH:Lcom/google/android/gms/internal/ads/ka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ka;->pn()Lcom/google/android/gms/internal/ads/P;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-nez p2, :cond_3b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/P;->Lx()I

    move-result p2

    const/16 v2, 0x9

    const/16 v3, 0xa

    if-eqz p2, :cond_35

    const/4 v4, 0x2

    const/16 v5, 0xb

    const/16 v6, 0xc

    if-eq p2, v4, :cond_2e

    const/4 v4, 0x3

    if-eq p2, v4, :cond_2a

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_31

    :cond_2a
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_38

    :cond_2e
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_31
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3b

    :cond_35
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_38
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_3b
    :goto_3b
    new-instance p2, Lcom/google/android/gms/internal/ads/T;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ma;->FH:Landroid/content/Context;

    invoke-direct {p2, v2, v0, v1}, Lcom/google/android/gms/internal/ads/T;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/P;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/p;->tj:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public j6()Lcom/google/android/gms/internal/ads/Mo;
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->v5:Lorg/json/JSONObject;

    if-eqz v0, :cond_43

    const-string v1, "overlay"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_43

    :cond_d
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Zo()Lcom/google/android/gms/internal/ads/So;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ma;->FH:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzwf;->j6(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzwf;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/ma;->gn:Lcom/google/android/gms/internal/ads/ix;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/ma;->u7:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yp;->j6(Lcom/google/android/gms/internal/ads/zzwf;)Lcom/google/android/gms/internal/ads/yp;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzwf;->j6:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/YF;->j6()Lcom/google/android/gms/internal/ads/YF;

    move-result-object v11

    invoke-static/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/So;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/YF;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/google/android/gms/internal/ads/oa;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/oa;-><init>(Lcom/google/android/gms/internal/ads/Mo;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ma;->Zo:Lcom/google/android/gms/internal/ads/dh;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/oa;->j6(Lcom/google/android/gms/internal/ads/dh;)V

    :cond_42
    return-object v0

    :cond_43
    :goto_43
    const/4 v0, 0x0

    return-object v0
.end method

.method public j6(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ma;->QX:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ma;->XL:J

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->gn:Lcom/google/android/gms/internal/ads/ix;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ix;->j6(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public j6(Landroid/view/View;)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->Vq:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->v5:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_24

    const-string p1, "setClickConfirmingView: Your account need to be whitelisted to use this feature.\nContact your account manager for more information."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->Hw:Lcom/google/android/gms/internal/ads/Q;

    if-eqz p1, :cond_36

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Q;->Zo:Ljava/lang/ref/WeakReference;

    :cond_36
    return-void
.end method

.method public final j6(Landroid/view/View;Lcom/google/android/gms/internal/ads/ga;)V
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ma;->DW(Landroid/view/View;Lcom/google/android/gms/internal/ads/ga;)Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    :cond_7
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->VH:Lcom/google/android/gms/internal/ads/ka;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/la;

    if-nez v1, :cond_1a

    return-void

    :cond_1a
    check-cast v0, Lcom/google/android/gms/internal/ads/la;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/la;->Hw()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/la;->Hw()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/la;->Hw()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/os/IBinder;

    if-eqz v1, :cond_40

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ha;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/Ga;

    move-result-object v0

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    :goto_41
    if-eqz v0, :cond_6a

    :try_start_43
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ga;->T6()Labcd/ox;

    move-result-object v0

    if-eqz v0, :cond_63

    invoke-static {v0}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ma;->FH:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_63} :catch_64

    :cond_63
    return-void

    :catch_64
    move-exception p1

    const-string p1, "Could not get drawable from image"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_6a
    return-void
.end method

.method public final j6(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Landroid/view/View;Z)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ma;->j6(Ljava/util/Map;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ma;->VH(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/internal/ads/ma;->gn(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ma;->u7(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v6

    const/4 v1, 0x0

    :try_start_16
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    move-object v2, p3

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_24} :catch_37

    :try_start_24
    const-string v1, "click_point"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "asset_id"
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2b} :catch_33

    move-object v7, p2

    :try_start_2c
    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_31

    move-object v8, v2

    goto :goto_3f

    :catch_31
    move-exception v0

    goto :goto_35

    :catch_33
    move-exception v0

    move-object v7, p2

    :goto_35
    move-object v1, v2

    goto :goto_39

    :catch_37
    move-exception v0

    move-object v7, p2

    :goto_39
    const-string v2, "Error occurred while grabbing click signals."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v1

    :goto_3f
    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    move/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/ma;->j6(Landroid/view/View;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public j6(Landroid/view/View;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public j6(Landroid/view/View;Ljava/util/Map;Landroid/os/Bundle;Landroid/view/View;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/os/Bundle;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "Invalid call from a non-UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    if-eqz p2, :cond_45

    monitor-enter p2

    :try_start_8
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/ma;->j6(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Landroid/view/View;Z)V

    monitor-exit p2

    return-void

    :cond_40
    monitor-exit p2

    goto :goto_45

    :catchall_42
    move-exception p1

    monitor-exit p2
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_42

    throw p1

    :cond_45
    :goto_45
    const-string v0, "6"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ma;->VH:Lcom/google/android/gms/internal/ads/ka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ka;->x6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string v3, "3099"

    :goto_55
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/ma;->j6(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Landroid/view/View;Z)V

    return-void

    :cond_5f
    const-string v0, "2"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ma;->VH:Lcom/google/android/gms/internal/ads/ka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ka;->x6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    const-string v3, "2099"

    goto :goto_55

    :cond_70
    const-string v0, "1"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ma;->VH:Lcom/google/android/gms/internal/ads/ka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ka;->x6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    const-string v3, "1099"

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/ma;->j6(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Landroid/view/View;Z)V

    :cond_89
    return-void
.end method

.method public j6(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_3e

    monitor-enter p2

    :try_start_d
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_15

    invoke-virtual {v1, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_15

    :cond_39
    monitor-exit p2

    goto :goto_3e

    :catchall_3b
    move-exception p1

    monitor-exit p2
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_3b

    throw p1

    :cond_3e
    :goto_3e
    if-eqz p3, :cond_6c

    monitor-enter p3

    :try_start_41
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_49
    :goto_49
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_67

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_49

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_49

    :cond_67
    monitor-exit p3

    return-void

    :catchall_69
    move-exception p1

    monitor-exit p3
    :try_end_6b
    .catchall {:try_start_41 .. :try_end_6b} :catchall_69

    throw p1

    :cond_6c
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Aa;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ma;->J8:Lcom/google/android/gms/internal/ads/Aa;

    return-void
.end method

.method public j6(Lcom/google/android/gms/internal/ads/xb;)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->Vq:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->v5:Lorg/json/JSONObject;

    const-string v1, "custom_one_point_five_click_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_24

    const-string p1, "setUnconfirmedClickListener: Your account need to be whitelisted to use this feature.\nContact your account manager for more information."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->Hw:Lcom/google/android/gms/internal/ads/Q;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Q;->j6(Lcom/google/android/gms/internal/ads/xb;)V

    return-void
.end method

.method public final j6(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->VH:Lcom/google/android/gms/internal/ads/ka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ka;->DY()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->VH:Lcom/google/android/gms/internal/ads/ka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ka;->x6()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "3010"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ma;->DW:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/ja;->ys()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ma;->VH:Lcom/google/android/gms/internal/ads/ka;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/ka;->x6()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_3f

    const-string v6, "2011"

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    :cond_3e
    const/4 v2, 0x1

    :cond_3f
    invoke-interface {v0, v4, v5, v2}, Lcom/google/android/gms/internal/ads/Hk;->j6(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->VH:Lcom/google/android/gms/internal/ads/ka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ka;->x6()Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ma;->DW:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/ja;->ys()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ma;->VH:Lcom/google/android/gms/internal/ads/ka;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/ka;->x6()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_76

    const-string v6, "1009"

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_75

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_76

    :cond_75
    const/4 v2, 0x1

    :cond_76
    invoke-interface {v0, v4, v5, v2}, Lcom/google/android/gms/internal/ads/Hk;->j6(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_79
    return-void
.end method

.method public final j6(Landroid/os/Bundle;)Z
    .registers 8

    const-string v0, "impression_reporting"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/ma;->j6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string p1, "The ad slot cannot handle external impression events. You must be whitelisted to whitelisted to be able to report your impression events."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_f
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, p1, v5}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/os/Bundle;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ma;->j6(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p1

    return p1
.end method

.method public k4()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->Zo:Lcom/google/android/gms/internal/ads/dh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dh;->j6()V

    return-void
.end method

.method public n5()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ma;->Ws:Z

    return-void
.end method

.method public pn()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->v5:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const-string v2, "allow_custom_click_gesture"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    return v1
.end method

.method public qI()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->DW:Lcom/google/android/gms/internal/ads/ja;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ja;->qI()V

    return-void
.end method

.method public qp()V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->J8:Lcom/google/android/gms/internal/ads/Aa;

    if-nez v0, :cond_a

    const-string v0, "Ad should be associated with an ad view before calling recordCustomClickGesture()"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ma;->Ws:Z

    if-nez v0, :cond_14

    const-string v0, "Custom click reporting failed. enableCustomClickGesture is not set."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ma;->pn()Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "Custom click reporting failed. Ad unit id not whitelisted."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->J8:Lcom/google/android/gms/internal/ads/Aa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Aa;->aM()Landroid/view/View;

    move-result-object v2

    const-string v3, "3099"

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->J8:Lcom/google/android/gms/internal/ads/Aa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Aa;->tR()Ljava/util/Map;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->J8:Lcom/google/android/gms/internal/ads/Aa;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Aa;->aM()Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/ma;->j6(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Landroid/view/View;Z)V

    return-void
.end method

.method public tj()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->v5:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const-string v2, "allow_pub_owned_ad_view"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    return v1
.end method

.method public x6()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ma;->VH:Lcom/google/android/gms/internal/ads/ka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ka;->pn()Lcom/google/android/gms/internal/ads/P;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/P;->wC()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method
