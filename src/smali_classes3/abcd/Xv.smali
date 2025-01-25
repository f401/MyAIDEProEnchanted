.class public Labcd/Xv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appfour/backbone/api/objects/EventData;


# instance fields
.field public DW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->j6:Ljava/lang/String;

    :cond_19
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_65

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-eqz v3, :cond_55

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4a

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3f

    const/4 v4, 0x3

    if-eq v3, v4, :cond_34

    goto :goto_62

    :cond_34
    iget-object v3, p0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    invoke-static {v4}, Labcd/aw;->j6(Z)Labcd/aw;

    move-result-object v4

    goto :goto_5f

    :cond_3f
    iget-object v3, p0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Labcd/aw;->j6(D)Labcd/aw;

    move-result-object v4

    goto :goto_5f

    :cond_4a
    iget-object v3, p0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Labcd/aw;->j6(J)Labcd/aw;

    move-result-object v4

    goto :goto_5f

    :cond_55
    iget-object v3, p0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Labcd/aw;->j6(Ljava/lang/String;)Labcd/aw;

    move-result-object v4

    :goto_5f
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_65
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

    if-eqz v0, :cond_89

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/Xv;->v5:Ljava/lang/String;

    :cond_89
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/Xv;->Zo:J

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Labcd/Xv;->VH:Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Labcd/Xv;->tp:Z

    return-void
.end method

.method private j6(Lcom/appfour/backbone/api/objects/InAppProduct;)Lcom/appfour/backbone/api/objects/UIScene;
    .registers 18

    invoke-static {}, Labcd/zw;->j6()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x2

    div-int/lit8 v12, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v13, v2, 0x2

    new-instance v2, Landroid/graphics/Rect;

    sub-int v4, v12, v1

    sub-int v5, v13, v1

    add-int v6, v12, v1

    add-int/2addr v1, v13

    invoke-direct {v2, v4, v5, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    new-instance v1, Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/InAppProduct;->getMarket()Lcom/appfour/backbone/api/objects/Market;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appfour/backbone/api/objects/Market;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v1, v0, v7, v4, v8}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Purchase "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/appfour/backbone/api/Api;->identifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v15, Lcom/appfour/backbone/api/objects/UIScene;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v14, v3, [Lcom/appfour/backbone/api/objects/UISceneWidget;

    aput-object v1, v14, v8

    new-instance v1, Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v7, v0, v8}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    aput-object v1, v14, v7

    move-object v4, v15

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    invoke-direct/range {v4 .. v14}, Lcom/appfour/backbone/api/objects/UIScene;-><init>(IIIZZIIII[Lcom/appfour/backbone/api/objects/UISceneWidget;)V

    return-object v15
.end method

.method private j6(Lcom/appfour/backbone/api/objects/Market;)Lcom/appfour/backbone/api/objects/UIScene;
    .registers 18

    invoke-static {}, Labcd/zw;->j6()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x2

    div-int/lit8 v12, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v13, v2, 0x2

    new-instance v2, Landroid/graphics/Rect;

    sub-int v4, v12, v1

    sub-int v5, v13, v1

    add-int v6, v12, v1

    add-int/2addr v1, v13

    invoke-direct {v2, v4, v5, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    new-instance v1, Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/Market;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v1, v0, v7, v4, v8}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Install "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v15, Lcom/appfour/backbone/api/objects/UIScene;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v14, v3, [Lcom/appfour/backbone/api/objects/UISceneWidget;

    aput-object v1, v14, v8

    new-instance v1, Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v7, v0, v8}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    aput-object v1, v14, v7

    move-object v4, v15

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    invoke-direct/range {v4 .. v14}, Lcom/appfour/backbone/api/objects/UIScene;-><init>(IIIZZIIII[Lcom/appfour/backbone/api/objects/UISceneWidget;)V

    return-object v15
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserInputAction;)Lcom/appfour/backbone/api/objects/UIScene;
    .registers 16

    invoke-static {}, Labcd/zw;->j6()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserInputAction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Labcd/zw;->j6(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserInputAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v2

    invoke-static {v2}, Labcd/zw;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->DW()I

    move-result v6

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserInputAction;->isBackKey()Z

    move-result v7

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserInputAction;->isBackKey()Z

    move-result v0

    new-instance v3, Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v8

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserInputAction;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {v3, v1, v9, v8, v10}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserInputAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getType()I

    move-result v1

    if-eqz v1, :cond_5b

    new-instance v1, Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v8

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserInputAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object p1

    invoke-interface {v8, p1}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v10, p1, v10}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    goto :goto_5c

    :cond_5b
    const/4 v1, 0x0

    :goto_5c
    new-instance p1, Lcom/appfour/backbone/api/objects/UIScene;

    xor-int/lit8 v8, v0, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/appfour/backbone/api/objects/UISceneWidget;

    aput-object v3, v13, v9

    aput-object v1, v13, v10

    move-object v3, p1

    move v9, v0

    move v10, v2

    invoke-direct/range {v3 .. v13}, Lcom/appfour/backbone/api/objects/UIScene;-><init>(IIIZZIIII[Lcom/appfour/backbone/api/objects/UISceneWidget;)V

    return-object p1
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserLaunchAction;)Lcom/appfour/backbone/api/objects/UIScene;
    .registers 16

    invoke-static {}, Labcd/zw;->j6()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v11, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v12, v2, 0x2

    new-instance v2, Landroid/graphics/Rect;

    sub-int v3, v11, v1

    sub-int v4, v12, v1

    add-int v5, v11, v1

    add-int/2addr v1, v12

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Lcom/appfour/backbone/api/objects/UIScene;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x1

    new-array v13, v0, [Lcom/appfour/backbone/api/objects/UISceneWidget;

    new-instance v3, Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v9

    invoke-virtual {p1}, Lcom/appfour/backbone/api/objects/UserLaunchAction;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-interface {v9, p1}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v9, 0x0

    invoke-direct {v3, v2, v0, p1, v9}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    aput-object v3, v13, v9

    move-object v3, v1

    move v9, v11

    move v10, v12

    invoke-direct/range {v3 .. v13}, Lcom/appfour/backbone/api/objects/UIScene;-><init>(IIIZZIIII[Lcom/appfour/backbone/api/objects/UISceneWidget;)V

    return-object v1
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserNotificationAction;)Lcom/appfour/backbone/api/objects/UIScene;
    .registers 18

    invoke-static {}, Labcd/zw;->j6()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Lcom/appfour/backbone/api/objects/UIScene;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v11, v0, 0x2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v12, v0, 0x2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v13, v0, 0x2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v14, v0, 0x2

    const/4 v0, 0x1

    new-array v15, v0, [Lcom/appfour/backbone/api/objects/UISceneWidget;

    new-instance v3, Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v5

    move-object/from16 v10, p1

    invoke-interface {v5, v10}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v0, v5, v4}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    aput-object v3, v15, v4

    move-object v5, v2

    const/4 v0, 0x0

    move v10, v0

    invoke-direct/range {v5 .. v15}, Lcom/appfour/backbone/api/objects/UIScene;-><init>(IIIZZIIII[Lcom/appfour/backbone/api/objects/UISceneWidget;)V

    return-object v2
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)Lcom/appfour/backbone/api/objects/UIScene;
    .registers 23

    invoke-static {}, Labcd/zw;->j6()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Labcd/zw;->j6(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v2

    invoke-static {v2}, Labcd/zw;->j6(Lcom/appfour/backbone/api/objects/UserActionWindow;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWidget()Lcom/appfour/backbone/api/objects/UserActionWidget;

    move-result-object v3

    invoke-static {v3}, Labcd/zw;->j6(Lcom/appfour/backbone/api/objects/UserActionWidget;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/appfour/backbone/api/runtime/a;->DW()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX1()I

    move-result v0

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY1()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getX2()I

    move-result v10

    iget v11, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getY2()I

    move-result v12

    iget v13, v2, Landroid/graphics/Rect;->top:I

    new-instance v14, Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v15

    move/from16 v16, v7

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-interface {v15, v7}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x0

    move/from16 v17, v6

    const/4 v6, 0x1

    invoke-direct {v14, v1, v15, v7, v6}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appfour/backbone/api/objects/UserActionWindow;->getType()I

    move-result v1

    if-eqz v1, :cond_77

    new-instance v1, Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWindow()Lcom/appfour/backbone/api/objects/UserActionWindow;

    move-result-object v15

    invoke-interface {v7, v15}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v2, v6, v7, v6}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    goto :goto_78

    :cond_77
    const/4 v1, 0x0

    :goto_78
    new-instance v2, Lcom/appfour/backbone/api/objects/UIScene;

    const/4 v15, 0x0

    const/16 v18, 0x0

    add-int/2addr v0, v4

    add-int v19, v8, v9

    add-int v20, v10, v11

    add-int/2addr v13, v12

    const/4 v4, 0x3

    new-array v12, v4, [Lcom/appfour/backbone/api/objects/UISceneWidget;

    const/4 v4, 0x0

    aput-object v14, v12, v4

    aput-object v1, v12, v6

    new-instance v1, Lcom/appfour/backbone/api/objects/UISceneWidget;

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/appfour/backbone/api/objects/UserTouchAction;->getWidget()Lcom/appfour/backbone/api/objects/UserActionWidget;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v3, v6, v7, v4}, Lcom/appfour/backbone/api/objects/UISceneWidget;-><init>(Landroid/graphics/Rect;ZLjava/lang/CharSequence;Z)V

    const/4 v3, 0x2

    aput-object v1, v12, v3

    move-object v4, v2

    move/from16 v6, v17

    move/from16 v7, v16

    move v8, v15

    move/from16 v9, v18

    move v10, v0

    move/from16 v11, v19

    move-object v0, v12

    move/from16 v12, v20

    move-object v14, v0

    invoke-direct/range {v4 .. v14}, Lcom/appfour/backbone/api/objects/UIScene;-><init>(IIIZZIIII[Lcom/appfour/backbone/api/objects/UISceneWidget;)V

    return-object v2
.end method


# virtual methods
.method public j6(Ljava/io/DataOutputStream;)V
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Labcd/Xv;->j6:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v1, p0, Labcd/Xv;->j6:Ljava/lang/String;

    if-eqz v1, :cond_16

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_16
    iget-object v1, p0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/aw;

    iget-object v4, v3, Labcd/aw;->j6:Ljava/lang/String;

    if-eqz v4, :cond_51

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, v3, Labcd/aw;->j6:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_29

    :cond_51
    iget-object v4, v3, Labcd/aw;->DW:Ljava/lang/Long;

    if-eqz v4, :cond_62

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, v3, Labcd/aw;->DW:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_29

    :cond_62
    iget-object v4, v3, Labcd/aw;->FH:Ljava/lang/Double;

    if-eqz v4, :cond_74

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, v3, Labcd/aw;->FH:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_29

    :cond_74
    iget-object v4, v3, Labcd/aw;->Hw:Ljava/lang/Boolean;

    if-eqz v4, :cond_29

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, v3, Labcd/aw;->Hw:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_29

    :cond_86
    iget-boolean v1, p0, Labcd/Xv;->FH:Z

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-boolean v1, p0, Labcd/Xv;->gn:Z

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-boolean v1, p0, Labcd/Xv;->Hw:Z

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-boolean v1, p0, Labcd/Xv;->u7:Z

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v1, p0, Labcd/Xv;->v5:Ljava/lang/String;

    if-eqz v1, :cond_9f

    goto :goto_a0

    :cond_9f
    const/4 v0, 0x0

    :goto_a0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Labcd/Xv;->v5:Ljava/lang/String;

    if-eqz v0, :cond_aa

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_aa
    iget-wide v0, p0, Labcd/Xv;->Zo:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-boolean v0, p0, Labcd/Xv;->VH:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-boolean v0, p0, Labcd/Xv;->tp:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    return-void
.end method

.method public setCrash(Ljava/lang/Throwable;Z)Lcom/appfour/backbone/api/objects/EventData;
    .registers 3

    iput-object p1, p0, Labcd/Xv;->we:Ljava/lang/Throwable;

    iput-boolean p2, p0, Labcd/Xv;->VH:Z

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/appfour/backbone/api/runtime/a;->DW(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Labcd/Xv;->J0:Ljava/lang/String;

    invoke-static {}, Lcom/appfour/backbone/api/runtime/b;->j6()Lcom/appfour/backbone/api/runtime/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/appfour/backbone/api/runtime/a;->j6(Ljava/lang/Throwable;)Ljava/lang/StackTraceElement;

    move-result-object p2

    iput-object p2, p0, Labcd/Xv;->J8:Ljava/lang/StackTraceElement;

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

    if-nez p3, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_d
    iput-object p1, p0, Labcd/Xv;->v5:Ljava/lang/String;

    return-object p0
.end method

.method public setOutcome(Z)Lcom/appfour/backbone/api/objects/EventData;
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Labcd/Xv;->u7:Z

    return-object p0
.end method

.method public setParameter(Ljava/lang/String;Lcom/appfour/backbone/api/objects/CatchExceptions;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/appfour/backbone/api/objects/CatchExceptions<",
            "*>;)",
            "Lcom/appfour/backbone/api/objects/EventData;"
        }
    .end annotation

    invoke-static {p2}, Lcom/appfour/backbone/api/Api;->catch_(Lcom/appfour/backbone/api/objects/CatchExceptions;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Labcd/Xv;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    return-object p0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 6

    if-nez p2, :cond_4

    goto/16 :goto_a8

    :cond_4
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_12

    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_a8

    goto :goto_16

    :cond_12
    instance-of v0, p2, Ljava/lang/Enum;

    if-eqz v0, :cond_25

    :goto_16
    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1c
    invoke-static {p2}, Labcd/aw;->j6(Ljava/lang/String;)Labcd/aw;

    move-result-object p2

    :goto_20
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a8

    :cond_25
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_36

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v1

    :goto_31
    invoke-static {v1, v2}, Labcd/aw;->j6(J)Labcd/aw;

    move-result-object p2

    goto :goto_20

    :cond_36
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_43

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->longValue()J

    move-result-wide v1

    goto :goto_31

    :cond_43
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_50

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->longValue()J

    move-result-wide v1

    goto :goto_31

    :cond_50
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    int-to-long v1, p2

    goto :goto_31

    :cond_5e
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_31

    :cond_6b
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v1

    :goto_77
    invoke-static {v1, v2}, Labcd/aw;->j6(D)Labcd/aw;

    move-result-object p2

    goto :goto_20

    :cond_7c
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_89

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_77

    :cond_89
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Labcd/aw;->j6(Z)Labcd/aw;

    move-result-object p2

    goto :goto_20

    :cond_9a
    invoke-static {p2}, Lcom/appfour/backbone/api/Api;->identifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a8

    iget-object v0, p0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1c

    :cond_a8
    :goto_a8
    return-object p0
.end method

.method public setParameterAnonymous(Ljava/lang/String;Lcom/appfour/backbone/api/objects/CatchExceptions;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/appfour/backbone/api/objects/CatchExceptions<",
            "*>;)",
            "Lcom/appfour/backbone/api/objects/EventData;"
        }
    .end annotation

    invoke-static {p2}, Lcom/appfour/backbone/api/Api;->catch_(Lcom/appfour/backbone/api/objects/CatchExceptions;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Labcd/Xv;->setParameterAnonymous(Ljava/lang/String;Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    return-object p0
.end method

.method public setParameterAnonymous(Ljava/lang/String;Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 4

    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    check-cast p2, Ljava/lang/CharSequence;

    :cond_6
    invoke-virtual {p0, p1, p2}, Labcd/Xv;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    return-object p0
.end method

.method public setUIScene(Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 3

    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UIScene;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/appfour/backbone/api/objects/UIScene;

    :goto_6
    iput-object p1, p0, Labcd/Xv;->EQ:Lcom/appfour/backbone/api/objects/UIScene;

    goto :goto_4b

    :cond_9
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserNotificationAction;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/appfour/backbone/api/objects/UserNotificationAction;

    invoke-direct {p0, p1}, Labcd/Xv;->j6(Lcom/appfour/backbone/api/objects/UserNotificationAction;)Lcom/appfour/backbone/api/objects/UIScene;

    move-result-object p1

    goto :goto_6

    :cond_14
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserTouchAction;

    if-eqz v0, :cond_1f

    check-cast p1, Lcom/appfour/backbone/api/objects/UserTouchAction;

    invoke-direct {p0, p1}, Labcd/Xv;->j6(Lcom/appfour/backbone/api/objects/UserTouchAction;)Lcom/appfour/backbone/api/objects/UIScene;

    move-result-object p1

    goto :goto_6

    :cond_1f
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserInputAction;

    if-eqz v0, :cond_2a

    check-cast p1, Lcom/appfour/backbone/api/objects/UserInputAction;

    invoke-direct {p0, p1}, Labcd/Xv;->j6(Lcom/appfour/backbone/api/objects/UserInputAction;)Lcom/appfour/backbone/api/objects/UIScene;

    move-result-object p1

    goto :goto_6

    :cond_2a
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/UserLaunchAction;

    if-eqz v0, :cond_35

    check-cast p1, Lcom/appfour/backbone/api/objects/UserLaunchAction;

    invoke-direct {p0, p1}, Labcd/Xv;->j6(Lcom/appfour/backbone/api/objects/UserLaunchAction;)Lcom/appfour/backbone/api/objects/UIScene;

    move-result-object p1

    goto :goto_6

    :cond_35
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/InAppProduct;

    if-eqz v0, :cond_40

    check-cast p1, Lcom/appfour/backbone/api/objects/InAppProduct;

    invoke-direct {p0, p1}, Labcd/Xv;->j6(Lcom/appfour/backbone/api/objects/InAppProduct;)Lcom/appfour/backbone/api/objects/UIScene;

    move-result-object p1

    goto :goto_6

    :cond_40
    instance-of v0, p1, Lcom/appfour/backbone/api/objects/Market;

    if-eqz v0, :cond_4b

    check-cast p1, Lcom/appfour/backbone/api/objects/Market;

    invoke-direct {p0, p1}, Labcd/Xv;->j6(Lcom/appfour/backbone/api/objects/Market;)Lcom/appfour/backbone/api/objects/UIScene;

    move-result-object p1

    goto :goto_6

    :cond_4b
    :goto_4b
    return-object p0
.end method

.method public setValue(Lcom/appfour/backbone/api/objects/CatchExceptions;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appfour/backbone/api/objects/CatchExceptions<",
            "*>;)",
            "Lcom/appfour/backbone/api/objects/EventData;"
        }
    .end annotation

    invoke-static {p1}, Lcom/appfour/backbone/api/Api;->catch_(Lcom/appfour/backbone/api/objects/CatchExceptions;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/Xv;->setValue(Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 3

    if-nez p1, :cond_3

    goto :goto_4f

    :cond_3
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_4f

    goto :goto_15

    :cond_11
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_1c

    :goto_15
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_19
    iput-object p1, p0, Labcd/Xv;->j6:Ljava/lang/String;

    goto :goto_4f

    :cond_1c
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_21

    goto :goto_15

    :cond_21
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_26

    goto :goto_15

    :cond_26
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_2b

    goto :goto_15

    :cond_2b
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_30

    goto :goto_15

    :cond_30
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_35

    goto :goto_15

    :cond_35
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3a

    goto :goto_15

    :cond_3a
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3f

    goto :goto_15

    :cond_3f
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_44

    goto :goto_15

    :cond_44
    invoke-static {p1}, Lcom/appfour/backbone/api/Api;->identifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4f

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_4f
    :goto_4f
    return-object p0
.end method

.method public setValueAnonymous(Lcom/appfour/backbone/api/objects/CatchExceptions;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appfour/backbone/api/objects/CatchExceptions<",
            "*>;)",
            "Lcom/appfour/backbone/api/objects/EventData;"
        }
    .end annotation

    invoke-static {p1}, Lcom/appfour/backbone/api/Api;->catch_(Lcom/appfour/backbone/api/objects/CatchExceptions;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/Xv;->setValueAnonymous(Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    return-object p0
.end method

.method public setValueAnonymous(Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;
    .registers 3

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/CharSequence;

    :cond_6
    invoke-virtual {p0, p1}, Labcd/Xv;->setValue(Ljava/lang/Object;)Lcom/appfour/backbone/api/objects/EventData;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    :try_start_0
    new-instance v0, Labcd/_v;

    invoke-direct {v0, p0}, Labcd/_v;-><init>(Labcd/Xv;)V

    invoke-virtual {v0}, Labcd/_v;->j6()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    const-string v0, "invalid"

    return-object v0
.end method
