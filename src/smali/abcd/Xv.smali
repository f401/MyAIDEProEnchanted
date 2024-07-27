.class public Labcd/Xv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appfour/backbone/api/objects/EventData;


# instance fields
.field public DW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/aw;",
            ">;"
        }
    .end annotation
.end field

.field public EQ:Lcom/appfour/backbone/api/objects/UIScene;

.field public FH:Z

.field public Hw:Z

.field public J0:Ljava/lang/String;

.field public J8:Ljava/lang/StackTraceElement;

.field public VH:Z

.field public Zo:J

.field public gn:Z

.field public j6:Ljava/lang/String;

.field public tp:Z

.field public u7:Z

.field public v5:Ljava/lang/String;

.field public we:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->j6:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Labcd/aw;->j6(Z)Labcd/aw;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Labcd/aw;->j6(D)Labcd/aw;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Labcd/aw;->j6(J)Labcd/aw;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Labcd/aw;->j6(Ljava/lang/String;)Labcd/aw;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Labcd/Xv;->FH:Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Labcd/Xv;->gn:Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Labcd/Xv;->Hw:Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Labcd/Xv;->u7:Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->v5:Ljava/lang/String;

    :cond_6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/Xv;->Zo:J

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Labcd/Xv;->VH:Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Labcd/Xv;->tp:Z

    return-void
.end method

.method private j6(Lcom/appfour/backbone/api/objects/InAppProduct;)Lcom/appfour/backbone/api/objects/UIScene;
    .registers 14

    const/4 v11, 0x1

    const/4 v3, 0x0

    invoke-static {}, Labcd/zw;->j6()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v6, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v7, v2, 0x2

    new-instance v4, Landroid/graphics/Rect;

    sub-int v2, v6, v1

    sub-int v5, v7, v1

    add-int v8, v6, v1

    add-int/2addr v1, v7

    invoke-direct {v4, v2, v5, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    new-instance v5, Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/InAppProduct;->getMarket()Lcom/appfour/backbone/api/objects/Market;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appfour/backbone/api/objects/Market;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v0, v11, v8, v3}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Purchase "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/appfour/backbone/api/Api;->identifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/appfour/backbone/api/objects/UIScene;

    const/4 v9, 0x2

    new-array v10, v9, [Lcom/appfour/backbone/api/objects/UISceneWidget;

    aput-object v5, v10, v3

    new-instance v5, Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v4, v11, v8, v3}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    aput-object v5, v10, v11

    move v4, v3

    move v5, v3

    move v8, v6

    move v9, v7

    invoke-direct/range {v0 .. v10}, Lcom/appfour/backbone/api/objects/UIScene;-><init>(IIIZZIIII[Lcom/appfour/backbone/api/objects/UISceneWidget;)V

    return-object v0
.end method

.method private j6(Lcom/appfour/backbone/api/objects/Market;)Lcom/appfour/backbone/api/objects/UIScene;
    .registers 14

    const/4 v11, 0x1

    const/4 v3, 0x0

    invoke-static {}, Labcd/zw;->j6()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v6, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v7, v2, 0x2

    new-instance v4, Landroid/graphics/Rect;

    sub-int v2, v6, v1

    sub-int v5, v7, v1

    add-int v8, v6, v1

    add-int/2addr v1, v7

    invoke-direct {v4, v2, v5, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    new-instance v5, Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/Market;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v0, v11, v8, v3}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Install "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/appfour/backbone/api/objects/UIScene;

    const/4 v9, 0x2

    new-array v10, v9, [Lcom/appfour/backbone/api/objects/UISceneWidget;

    aput-object v5, v10, v3

    new-instance v5, Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v4, v11, v8, v3}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    aput-object v5, v10, v11

    move v4, v3

    move v5, v3

    move v8, v6

    move v9, v7

    invoke-direct/range {v0 .. v10}, Lcom/appfour/backbone/api/objects/UIScene;-><init>(IIIZZIIII[Lcom/appfour/backbone/api/objects/UISceneWidget;)V

    return-object v0
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserInputAction;)Lcom/appfour/backbone/api/objects/UIScene;
    .registers 14

    const/4 v11, 0x1

    const/4 v6, 0x0

    invoke-static {}, Labcd/zw;->j6()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserInputAction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Labcd/zw;->j6(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserInputAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v1

    invoke-static {v1}, Labcd/zw;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->DW()I

    move-result v3

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserInputAction;->isBackKey()Z

    move-result v4

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserInputAction;->isBackKey()Z

    move-result v8

    new-instance v9, Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserInputAction;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-interface {v0, v10}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v5, v6, v0, v11}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserInputAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v5

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserInputAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v10

    invoke-interface {v5, v10}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v7, v11, v5, v11}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    move-object v7, v0

    :goto_0
    new-instance v0, Lcom/appfour/backbone/api/objects/UIScene;

    xor-int/lit8 v5, v8, 0x1

    const/4 v8, 0x2

    new-array v10, v8, [Lcom/appfour/backbone/api/objects/UISceneWidget;

    aput-object v9, v10, v6

    aput-object v7, v10, v11

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-direct/range {v0 .. v10}, Lcom/appfour/backbone/api/objects/UIScene;-><init>(IIIZZIIII[Lcom/appfour/backbone/api/objects/UISceneWidget;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_0
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserLaunchAction;)Lcom/appfour/backbone/api/objects/UIScene;
    .registers 14

    const/4 v11, 0x1

    const/4 v3, 0x0

    invoke-static {}, Labcd/zw;->j6()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v6, v1, 0x2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v7, v1, 0x2

    new-instance v4, Landroid/graphics/Rect;

    sub-int v1, v6, v0

    sub-int v5, v7, v0

    add-int v8, v6, v0

    add-int/2addr v0, v7

    invoke-direct {v4, v1, v5, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Lcom/appfour/backbone/api/objects/UIScene;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    new-array v10, v11, [Lcom/appfour/backbone/api/objects/UISceneWidget;

    new-instance v5, Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v8

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserLaunchAction;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v4, v11, v8, v3}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    aput-object v5, v10, v3

    move v4, v3

    move v5, v3

    move v8, v6

    move v9, v7

    invoke-direct/range {v0 .. v10}, Lcom/appfour/backbone/api/objects/UIScene;-><init>(IIIZZIIII[Lcom/appfour/backbone/api/objects/UISceneWidget;)V

    return-object v0
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserNotificationAction;)Lcom/appfour/backbone/api/objects/UIScene;
    .registers 15

    const/4 v12, 0x1

    const/4 v3, 0x0

    invoke-static {}, Labcd/zw;->j6()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v4, Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-direct {v4, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Lcom/appfour/backbone/api/objects/UIScene;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v6, v5, 0x2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v7, v5, 0x2

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v8, v5, 0x2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v9, v5, 0x2

    new-array v10, v12, [Lcom/appfour/backbone/api/objects/UISceneWidget;

    new-instance v5, Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v11

    invoke-interface {v11, p1}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v4, v12, v11, v3}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    aput-object v5, v10, v3

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v10}, Lcom/appfour/backbone/api/objects/UIScene;-><init>(IIIZZIIII[Lcom/appfour/backbone/api/objects/UISceneWidget;)V

    return-object v0
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)Lcom/appfour/backbone/api/objects/UIScene;
    .registers 25

    invoke-static {}, Labcd/zw;->j6()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Labcd/zw;->j6(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v6

    invoke-static {v6}, Labcd/zw;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWidget()Lcom/appfour/backbone/api/objects/UserActionWidget;

    move-result-object v6

    invoke-static {v6}, Labcd/zw;->j6(Lcom/appfour/backbone/api/objects/UserActionWidget;)Landroid/graphics/Rect;

    move-result-object v17

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v5

    invoke-interface {v5}, Lcom/appfour/backbone/api/runtime/a;->DW()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v11

    iget v12, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v13

    iget v14, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX2()I

    move-result v15

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY2()I

    move-result v19

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    new-instance v21, Lcom/appfour/backbone/api/objects/UISceneWidget;

    const/4 v5, 0x0

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move/from16 v2, v22

    invoke-direct {v0, v9, v5, v1, v2}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getType()I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/appfour/backbone/api/objects/UISceneWidget;

    const/4 v9, 0x1

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const/16 v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-direct {v5, v10, v9, v0, v1}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    move-object/from16 v16, v5

    :goto_0
    new-instance v5, Lcom/appfour/backbone/api/objects/UIScene;

    const/4 v9, 0x0

    const/4 v10, 0x0

    add-int/2addr v11, v12

    add-int v12, v13, v14

    add-int v13, v15, v18

    add-int v14, v19, v20

    const/4 v15, 0x3

    new-array v15, v15, [Lcom/appfour/backbone/api/objects/UISceneWidget;

    const/16 v18, 0x0

    aput-object v21, v15, v18

    const/16 v18, 0x1

    aput-object v16, v15, v18

    const/16 v16, 0x2

    new-instance v18, Lcom/appfour/backbone/api/objects/UISceneWidget;

    const/16 v19, 0x1

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWidget()Lcom/appfour/backbone/api/objects/UserActionWidget;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    aput-object v18, v15, v16

    invoke-direct/range {v5 .. v15}, Lcom/appfour/backbone/api/objects/UIScene;-><init>(IIIZZIIII[Lcom/appfour/backbone/api/objects/UISceneWidget;)V

    return-object v5

    :cond_0
    const/4 v5, 0x0

    move-object/from16 v16, v5

    goto :goto_0
.end method


# virtual methods
.method public j6(Ljava/io/DataOutputStream;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Labcd/Xv;->j6:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Labcd/Xv;->j6:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/aw;

    iget-object v1, v0, Labcd/aw;->j6:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, v0, Labcd/aw;->j6:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v1, v0, Labcd/aw;->DW:Ljava/lang/Long;

    if-eqz v1, :cond_4

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, v0, Labcd/aw;->DW:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_1

    :cond_4
    iget-object v1, v0, Labcd/aw;->FH:Ljava/lang/Double;

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, v0, Labcd/aw;->FH:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_1

    :cond_5
    iget-object v1, v0, Labcd/aw;->Hw:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, v0, Labcd/aw;->Hw:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Labcd/Xv;->FH:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-boolean v0, p0, Labcd/Xv;->gn:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-boolean v0, p0, Labcd/Xv;->Hw:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-boolean v0, p0, Labcd/Xv;->u7:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Labcd/Xv;->v5:Ljava/lang/String;

    if-eqz v0, :cond_8

    :goto_2
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Labcd/Xv;->v5:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_7
    iget-wide v0, p0, Labcd/Xv;->Zo:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-boolean v0, p0, Labcd/Xv;->VH:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-boolean v0, p0, Labcd/Xv;->tp:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    return-void

    :cond_8
    move v2, v3

    goto :goto_2
.end method

.method public setCrash(Ljava/lang/Throwable;Z)Lcom/appfour/backbone/api/objects/EventData;
    .registers 4

    iput-object p1, p0, Labcd/Xv;->we:Ljava/lang/Throwable;

    iput-boolean p2, p0, Labcd/Xv;->VH:Z

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appfour/backbone/api/runtime/a;->DW(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->J0:Ljava/lang/String;

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Throwable;)Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->J8:Ljava/lang/StackTraceElement;

    invoke-virtual {p0, p1}, Labcd/Xv;->setValue(Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    return-object p0
.end method

.method public setIsInstall(Z)Lcom/appfour/backbone/api/objects/EventData;
    .registers 2

    iput-boolean p1, p0, Labcd/Xv;->gn:Z

    return-object p0
.end method

.method public setIsProperty(Z)Lcom/appfour/backbone/api/objects/EventData;
    .registers 2

    iput-boolean p1, p0, Labcd/Xv;->tp:Z

    return-object p0
.end method

.method public setIsScreenView(Z)Lcom/appfour/backbone/api/objects/EventData;
    .registers 2

    iput-boolean p1, p0, Labcd/Xv;->Hw:Z

    return-object p0
.end method

.method public setIsUserActive(Z)Lcom/appfour/backbone/api/objects/EventData;
    .registers 2

    iput-boolean p1, p0, Labcd/Xv;->FH:Z

    return-object p0
.end method

.method public setOutcome(JLjava/lang/CharSequence;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Xv;->u7:Z

    iput-wide p1, p0, Labcd/Xv;->Zo:J

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Labcd/Xv;->v5:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setOutcome(Z)Lcom/appfour/backbone/api/objects/EventData;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Xv;->u7:Z

    return-object p0
.end method

.method public setParameter(Ljava/lang/String;Lcom/appfour/backbone/api/objects/CatchExceptions;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/appfour/backbone/api/objects/CatchExceptions",
            "<*>;)",
            "Lcom/appfour/backbone/api/objects/EventData;"
        }
    .end annotation

    invoke-static {p2}, Lcom/appfour/backbone/api/Api;->catch_(Lcom/appfour/backbone/api/objects/CatchExceptions;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Labcd/Xv;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    return-object p0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 7

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/aw;->j6(Ljava/lang/String;)Labcd/aw;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    instance-of v0, p2, Ljava/lang/Enum;

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/aw;->j6(Ljava/lang/String;)Labcd/aw;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Labcd/aw;->j6(J)Labcd/aw;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_5

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Labcd/aw;->j6(J)Labcd/aw;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Labcd/aw;->j6(J)Labcd/aw;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_7

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Labcd/aw;->j6(J)Labcd/aw;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_8

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Labcd/aw;->j6(J)Labcd/aw;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_9

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Labcd/aw;->j6(D)Labcd/aw;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_a

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Labcd/aw;->j6(D)Labcd/aw;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Labcd/aw;->j6(Z)Labcd/aw;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    invoke-static {p2}, Lcom/appfour/backbone/api/Api;->identifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/aw;->j6(Ljava/lang/String;)Labcd/aw;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public setParameterAnonymous(Ljava/lang/String;Lcom/appfour/backbone/api/objects/CatchExceptions;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/appfour/backbone/api/objects/CatchExceptions",
            "<*>;)",
            "Lcom/appfour/backbone/api/objects/EventData;"
        }
    .end annotation

    invoke-static {p2}, Lcom/appfour/backbone/api/Api;->catch_(Lcom/appfour/backbone/api/objects/CatchExceptions;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Labcd/Xv;->setParameterAnonymous(Ljava/lang/String;Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    return-object p0
.end method

.method public setParameterAnonymous(Ljava/lang/String;Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 4

    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Labcd/Xv;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Labcd/Xv;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    goto :goto_0
.end method

.method public setUIScene(Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 3

    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UIScene;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/appfour/backbone/api/objects/UIScene;

    iput-object p1, p0, Labcd/Xv;->EQ:Lcom/appfour/backbone/api/objects/UIScene;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserNotificationAction;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/appfour/backbone/api/objects/UserNotificationAction;

    invoke-direct {p0, p1}, Labcd/Xv;->j6(Lcom/appfour/backbone/api/objects/UserNotificationAction;)Lcom/appfour/backbone/api/objects/UIScene;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->EQ:Lcom/appfour/backbone/api/objects/UIScene;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserTouchAction;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/appfour/backbone/api/objects/UserTouchAction;

    invoke-direct {p0, p1}, Labcd/Xv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)Lcom/appfour/backbone/api/objects/UIScene;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->EQ:Lcom/appfour/backbone/api/objects/UIScene;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserInputAction;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/appfour/backbone/api/objects/UserInputAction;

    invoke-direct {p0, p1}, Labcd/Xv;->j6(Lcom/appfour/backbone/api/objects/UserInputAction;)Lcom/appfour/backbone/api/objects/UIScene;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->EQ:Lcom/appfour/backbone/api/objects/UIScene;

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserLaunchAction;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/appfour/backbone/api/objects/UserLaunchAction;

    invoke-direct {p0, p1}, Labcd/Xv;->j6(Lcom/appfour/backbone/api/objects/UserLaunchAction;)Lcom/appfour/backbone/api/objects/UIScene;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->EQ:Lcom/appfour/backbone/api/objects/UIScene;

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/InAppProduct;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/appfour/backbone/api/objects/InAppProduct;

    invoke-direct {p0, p1}, Labcd/Xv;->j6(Lcom/appfour/backbone/api/objects/InAppProduct;)Lcom/appfour/backbone/api/objects/UIScene;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->EQ:Lcom/appfour/backbone/api/objects/UIScene;

    goto :goto_0

    :cond_6
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/Market;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/appfour/backbone/api/objects/Market;

    invoke-direct {p0, p1}, Labcd/Xv;->j6(Lcom/appfour/backbone/api/objects/Market;)Lcom/appfour/backbone/api/objects/UIScene;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->EQ:Lcom/appfour/backbone/api/objects/UIScene;

    goto :goto_0
.end method

.method public setValue(Lcom/appfour/backbone/api/objects/CatchExceptions;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appfour/backbone/api/objects/CatchExceptions",
            "<*>;)",
            "Lcom/appfour/backbone/api/objects/EventData;"
        }
    .end annotation

    invoke-static {p1}, Lcom/appfour/backbone/api/Api;->catch_(Lcom/appfour/backbone/api/objects/CatchExceptions;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/Xv;->setValue(Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->j6:Ljava/lang/String;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->j6:Ljava/lang/String;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->j6:Ljava/lang/String;

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->j6:Ljava/lang/String;

    goto :goto_0

    :cond_5
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->j6:Ljava/lang/String;

    goto :goto_0

    :cond_6
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->j6:Ljava/lang/String;

    goto :goto_0

    :cond_7
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->j6:Ljava/lang/String;

    goto :goto_0

    :cond_8
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->j6:Ljava/lang/String;

    goto :goto_0

    :cond_9
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->j6:Ljava/lang/String;

    goto :goto_0

    :cond_a
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->j6:Ljava/lang/String;

    goto :goto_0

    :cond_b
    invoke-static {p1}, Lcom/appfour/backbone/api/Api;->identifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->j6:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setValueAnonymous(Lcom/appfour/backbone/api/objects/CatchExceptions;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appfour/backbone/api/objects/CatchExceptions",
            "<*>;)",
            "Lcom/appfour/backbone/api/objects/EventData;"
        }
    .end annotation

    invoke-static {p1}, Lcom/appfour/backbone/api/Api;->catch_(Lcom/appfour/backbone/api/objects/CatchExceptions;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/Xv;->setValueAnonymous(Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    return-object p0
.end method

.method public setValueAnonymous(Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 3

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Labcd/Xv;->setValue(Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Labcd/Xv;->setValue(Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    :try_start_0
    new-instance v0, Labcd/_v;

    invoke-direct {v0, p0}, Labcd/_v;-><init>(Labcd/Xv;)V

    invoke-virtual {v0}, Labcd/_v;->j6()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "invalid"

    goto :goto_0
.end method
