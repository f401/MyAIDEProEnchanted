.class public Labcd/_v;
.super Ljava/lang/Object;


# instance fields
.field public DW:J

.field public EQ:Ljava/lang/String;

.field public FH:Ljava/lang/String;

.field public Hw:Ljava/lang/String;

.field public J0:J

.field public VH:Ljava/lang/String;

.field public Zo:Ljava/lang/String;

.field public gn:Ljava/lang/String;

.field public j6:Labcd/Xv;

.field public tp:Ljava/lang/String;

.field public u7:Ljava/lang/String;

.field public v5:I

.field public we:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Labcd/Xv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/_v;->j6:Labcd/Xv;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Labcd/Xv;JLjava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 20

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p3

    iput-object v1, v0, Labcd/_v;->j6:Labcd/Xv;

    move-wide v1, p4

    iput-wide v1, v0, Labcd/_v;->DW:J

    invoke-interface {p8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Labcd/_v;->FH:Ljava/lang/String;

    move v1, p7

    iput v1, v0, Labcd/_v;->v5:I

    invoke-interface {p6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Labcd/_v;->Hw:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Labcd/_v;->Zo:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Labcd/_v;->VH:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Labcd/_v;->tp:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Labcd/_v;->u7:Ljava/lang/String;

    move-object v1, p1

    iput-object v1, v0, Labcd/_v;->gn:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Labcd/_v;->EQ:Ljava/lang/String;

    move-wide/from16 v1, p13

    iput-wide v1, v0, Labcd/_v;->we:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Labcd/_v;->J0:J

    return-void
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UIScene;)Ljava/lang/String;
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "deviceWidth"

    iget v3, p1, Lcom/appfour/backbone/api/objects/UIScene;->deviceWidth:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "deviceHeight"

    iget v3, p1, Lcom/appfour/backbone/api/objects/UIScene;->deviceHeight:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "imeHeight"

    iget v3, p1, Lcom/appfour/backbone/api/objects/UIScene;->imeHeight:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "pressedBackKey"

    iget-boolean v3, p1, Lcom/appfour/backbone/api/objects/UIScene;->pressedBackKey:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "pressedKey"

    iget-boolean v3, p1, Lcom/appfour/backbone/api/objects/UIScene;->pressedKey:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "touchX"

    iget v3, p1, Lcom/appfour/backbone/api/objects/UIScene;->touchX:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "touchY"

    iget v3, p1, Lcom/appfour/backbone/api/objects/UIScene;->touchY:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "touchX2"

    iget v3, p1, Lcom/appfour/backbone/api/objects/UIScene;->touchX2:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "touchY2"

    iget v3, p1, Lcom/appfour/backbone/api/objects/UIScene;->touchY2:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object p1, p1, Lcom/appfour/backbone/api/objects/UIScene;->widgets:[Lcom/appfour/backbone/api/objects/UISceneWidget;

    array-length v3, p1

    const/4 v4, 0x0

    :goto_51
    if-ge v4, v3, :cond_97

    aget-object v5, p1, v4

    if-eqz v5, :cond_91

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "x"

    iget v8, v5, Lcom/appfour/backbone/api/objects/UISceneWidget;->x:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "y"

    iget v8, v5, Lcom/appfour/backbone/api/objects/UISceneWidget;->y:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "width"

    iget v8, v5, Lcom/appfour/backbone/api/objects/UISceneWidget;->width:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "height"

    iget v8, v5, Lcom/appfour/backbone/api/objects/UISceneWidget;->height:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "fill"

    iget-boolean v8, v5, Lcom/appfour/backbone/api/objects/UISceneWidget;->fill:Z

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v7, "text"

    iget-object v8, v5, Lcom/appfour/backbone/api/objects/UISceneWidget;->text:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "textAlignTop"

    iget-boolean v5, v5, Lcom/appfour/backbone/api/objects/UISceneWidget;->textAlignTop:Z

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_94

    :cond_91
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_94
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    :cond_97
    const-string p1, "widgets"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j6(Ljava/lang/Throwable;Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-direct {p0, p1}, Labcd/_v;->j6(Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p2, :cond_13

    const-string v0, "exceptionRootLocation"

    invoke-direct {p0, p2}, Labcd/_v;->j6(Ljava/lang/StackTraceElement;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13
    const-string p2, "exceptionRootClassName"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j6(Ljava/lang/StackTraceElement;)Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "className"

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "methodName"

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "fileName"

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "line"

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method private j6(Ljava/lang/Throwable;)Lorg/json/JSONObject;
    .registers 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exceptionClassName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "message"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_2c
    if-ge v4, v3, :cond_3a

    aget-object v5, v2, v4

    invoke-direct {p0, v5}, Labcd/_v;->j6(Ljava/lang/StackTraceElement;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_3a
    const-string v2, "stackTrace"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_52

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/_v;->j6(Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "cause"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_52
    return-object v0
.end method


# virtual methods
.method public j6()Lorg/json/JSONObject;
    .registers 10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p0, Labcd/_v;->DW:J

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-nez v6, :cond_10

    move-object v1, v3

    goto :goto_14

    :cond_10
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :goto_14
    const-string v2, "timestampMicros"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "variantName"

    iget-object v2, p0, Labcd/_v;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Labcd/_v;->v5:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "appVersionCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "applicationId"

    iget-object v2, p0, Labcd/_v;->FH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceId"

    iget-object v2, p0, Labcd/_v;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sessionId"

    iget-object v2, p0, Labcd/_v;->VH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eventId"

    iget-object v2, p0, Labcd/_v;->gn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "processName"

    iget-object v2, p0, Labcd/_v;->tp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "eventName"

    iget-object v2, p0, Labcd/_v;->u7:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "propertyEventId"

    iget-object v2, p0, Labcd/_v;->EQ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v1, p0, Labcd/_v;->we:J

    cmp-long v6, v1, v4

    if-gez v6, :cond_64

    move-object v1, v3

    goto :goto_68

    :cond_64
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :goto_68
    const-string v2, "propertyEventTimestamp"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v1, p0, Labcd/_v;->J0:J

    cmp-long v6, v1, v4

    if-gez v6, :cond_75

    move-object v1, v3

    goto :goto_79

    :cond_75
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    :goto_79
    const-string v2, "recordingStartTimestamp"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-object v1, v1, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ed

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "params"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-object v2, v2, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9e
    :goto_9e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ed

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/aw;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iget-object v8, v6, Labcd/aw;->j6:Ljava/lang/String;

    if-eqz v8, :cond_c4

    const-string v6, "stringValue"

    :goto_c0
    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_db

    :cond_c4
    iget-object v8, v6, Labcd/aw;->DW:Ljava/lang/Long;

    if-eqz v8, :cond_cb

    const-string v6, "longValue"

    goto :goto_c0

    :cond_cb
    iget-object v8, v6, Labcd/aw;->FH:Ljava/lang/Double;

    if-eqz v8, :cond_d2

    const-string v6, "doubleValue"

    goto :goto_c0

    :cond_d2
    iget-object v6, v6, Labcd/aw;->Hw:Ljava/lang/Boolean;

    if-eqz v6, :cond_9e

    const-string v8, "booleanValue"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_db
    const-string v6, "key"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "value"

    invoke-virtual {v5, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9e

    :cond_ed
    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-object v1, v1, Labcd/Xv;->j6:Ljava/lang/String;

    const-string v2, "summary"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-boolean v1, v1, Labcd/Xv;->tp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isAudienceProperty"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-boolean v1, v1, Labcd/Xv;->FH:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isUserAction"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-boolean v1, v1, Labcd/Xv;->Hw:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isScreenView"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-boolean v1, v1, Labcd/Xv;->gn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isInstall"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-boolean v1, v1, Labcd/Xv;->u7:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isOutcome"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-object v2, v1, Labcd/Xv;->v5:Ljava/lang/String;

    if-eqz v2, :cond_143

    iget-wide v1, v1, Labcd/Xv;->Zo:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :cond_143
    const-string v1, "revenueMicros"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-object v1, v1, Labcd/Xv;->v5:Ljava/lang/String;

    const-string v2, "revenueCurrency"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-object v1, v1, Labcd/Xv;->we:Ljava/lang/Throwable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_15b

    const/4 v1, 0x1

    goto :goto_15c

    :cond_15b
    const/4 v1, 0x0

    :goto_15c
    const-string v4, "isCrash"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-object v4, v1, Labcd/Xv;->we:Ljava/lang/Throwable;

    if-eqz v4, :cond_170

    iget-boolean v1, v1, Labcd/Xv;->VH:Z

    if-eqz v1, :cond_170

    const/4 v2, 0x1

    :cond_170
    const-string v1, "isFatalCrash"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-object v2, v1, Labcd/Xv;->we:Ljava/lang/Throwable;

    iget-object v3, v1, Labcd/Xv;->J8:Ljava/lang/StackTraceElement;

    iget-object v1, v1, Labcd/Xv;->J0:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Labcd/_v;->j6(Ljava/lang/Throwable;Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "exception"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-object v1, v1, Labcd/Xv;->EQ:Lcom/appfour/backbone/api/objects/UIScene;

    invoke-direct {p0, v1}, Labcd/_v;->j6(Lcom/appfour/backbone/api/objects/UIScene;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uiScene"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
