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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Labcd/_v;->j6:Labcd/Xv;

    iput-wide p4, p0, Labcd/_v;->DW:J

    invoke-interface {p8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Labcd/_v;->FH:Ljava/lang/String;

    iput p7, p0, Labcd/_v;->v5:I

    invoke-interface {p6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Labcd/_v;->Hw:Ljava/lang/String;

    iput-object p9, p0, Labcd/_v;->Zo:Ljava/lang/String;

    iput-object p10, p0, Labcd/_v;->VH:Ljava/lang/String;

    iput-object p11, p0, Labcd/_v;->tp:Ljava/lang/String;

    iput-object p2, p0, Labcd/_v;->u7:Ljava/lang/String;

    iput-object p1, p0, Labcd/_v;->gn:Ljava/lang/String;

    iput-object p12, p0, Labcd/_v;->EQ:Ljava/lang/String;

    move-wide/from16 v0, p13

    iput-wide v0, p0, Labcd/_v;->we:J

    move-wide/from16 v0, p15

    iput-wide v0, p0, Labcd/_v;->J0:J

    return-void
.end method

.method private j6(Lcom/appfour/backbone/api/objects/UIScene;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "deviceWidth"

    iget v3, p1, Lcom/appfour/backbone/api/objects/UIScene;->deviceWidth:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "deviceHeight"

    iget v3, p1, Lcom/appfour/backbone/api/objects/UIScene;->deviceHeight:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "imeHeight"

    iget v3, p1, Lcom/appfour/backbone/api/objects/UIScene;->imeHeight:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "pressedBackKey"

    iget-boolean v3, p1, Lcom/appfour/backbone/api/objects/UIScene;->pressedBackKey:Z

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "pressedKey"

    iget-boolean v3, p1, Lcom/appfour/backbone/api/objects/UIScene;->pressedKey:Z

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "touchX"

    iget v3, p1, Lcom/appfour/backbone/api/objects/UIScene;->touchX:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "touchY"

    iget v3, p1, Lcom/appfour/backbone/api/objects/UIScene;->touchY:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "touchX2"

    iget v3, p1, Lcom/appfour/backbone/api/objects/UIScene;->touchX2:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "touchY2"

    iget v3, p1, Lcom/appfour/backbone/api/objects/UIScene;->touchY2:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v4, p1, Lcom/appfour/backbone/api/objects/UIScene;->widgets:[Lcom/appfour/backbone/api/objects/UISceneWidget;

    array-length v5, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v4, v1

    if-eqz v6, :cond_1

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "x"

    iget v9, v6, Lcom/appfour/backbone/api/objects/UISceneWidget;->x:I

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "y"

    iget v9, v6, Lcom/appfour/backbone/api/objects/UISceneWidget;->y:I

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "width"

    iget v9, v6, Lcom/appfour/backbone/api/objects/UISceneWidget;->width:I

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "height"

    iget v9, v6, Lcom/appfour/backbone/api/objects/UISceneWidget;->height:I

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "fill"

    iget-boolean v9, v6, Lcom/appfour/backbone/api/objects/UISceneWidget;->fill:Z

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v8, "text"

    iget-object v9, v6, Lcom/appfour/backbone/api/objects/UISceneWidget;->text:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "textAlignTop"

    iget-boolean v6, v6, Lcom/appfour/backbone/api/objects/UISceneWidget;->textAlignTop:Z

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_2
    const-string v0, "widgets"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private j6(Ljava/lang/Throwable;Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Labcd/_v;->j6(Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz p2, :cond_1

    const-string v1, "exceptionRootLocation"

    invoke-direct {p0, p2}, Labcd/_v;->j6(Ljava/lang/StackTraceElement;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "exceptionRootClassName"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method private j6(Ljava/lang/Throwable;)Lorg/json/JSONObject;
    .registers 8

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "exceptionClassName"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "message"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    invoke-direct {p0, v5}, Labcd/_v;->j6(Ljava/lang/StackTraceElement;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "stackTrace"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "cause"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/_v;->j6(Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v1
.end method


# virtual methods
.method public j6()Lorg/json/JSONObject;
    .registers 12

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget-wide v0, p0, Labcd/_v;->DW:J

    cmp-long v6, v0, v8

    if-nez v6, :cond_1

    move-object v0, v2

    :goto_0
    const-string v1, "timestampMicros"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "variantName"

    iget-object v1, p0, Labcd/_v;->Hw:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appVersionCode"

    iget v1, p0, Labcd/_v;->v5:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "applicationId"

    iget-object v1, p0, Labcd/_v;->FH:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceId"

    iget-object v1, p0, Labcd/_v;->Zo:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sessionId"

    iget-object v1, p0, Labcd/_v;->VH:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "eventId"

    iget-object v1, p0, Labcd/_v;->gn:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "processName"

    iget-object v1, p0, Labcd/_v;->tp:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "eventName"

    iget-object v1, p0, Labcd/_v;->u7:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "propertyEventId"

    iget-object v1, p0, Labcd/_v;->EQ:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v0, p0, Labcd/_v;->we:J

    cmp-long v6, v0, v8

    if-gez v6, :cond_2

    move-object v0, v2

    :goto_1
    const-string v1, "propertyEventTimestamp"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v0, p0, Labcd/_v;->J0:J

    cmp-long v6, v0, v8

    if-gez v6, :cond_3

    move-object v0, v2

    :goto_2
    const-string v1, "recordingStartTimestamp"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-object v0, v0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const-string v0, "params"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-object v0, v0, Labcd/Xv;->DW:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/aw;

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    iget-object v10, v0, Labcd/aw;->j6:Ljava/lang/String;

    if-eqz v10, :cond_4

    const-string v0, "stringValue"

    invoke-virtual {v9, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    const-string v0, "key"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "value"

    invoke-virtual {v8, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v10, v0, Labcd/aw;->DW:Ljava/lang/Long;

    if-eqz v10, :cond_5

    const-string v0, "longValue"

    invoke-virtual {v9, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_5
    iget-object v10, v0, Labcd/aw;->FH:Ljava/lang/Double;

    if-eqz v10, :cond_6

    const-string v0, "doubleValue"

    invoke-virtual {v9, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_6
    iget-object v0, v0, Labcd/aw;->Hw:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const-string v10, "booleanValue"

    invoke-virtual {v9, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_7
    const-string v0, "summary"

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-object v1, v1, Labcd/Xv;->j6:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "isAudienceProperty"

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-boolean v1, v1, Labcd/Xv;->tp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "isUserAction"

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-boolean v1, v1, Labcd/Xv;->FH:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "isScreenView"

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-boolean v1, v1, Labcd/Xv;->Hw:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "isInstall"

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-boolean v1, v1, Labcd/Xv;->gn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "isOutcome"

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-boolean v1, v1, Labcd/Xv;->u7:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-object v1, v0, Labcd/Xv;->v5:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-wide v0, v0, Labcd/Xv;->Zo:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_8
    const-string v0, "revenueMicros"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "revenueCurrency"

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-object v1, v1, Labcd/Xv;->v5:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-object v0, v0, Labcd/Xv;->we:Ljava/lang/Throwable;

    if-eqz v0, :cond_9

    move v0, v3

    :goto_5
    const-string v1, "isCrash"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-object v1, v0, Labcd/Xv;->we:Ljava/lang/Throwable;

    if-eqz v1, :cond_a

    iget-boolean v0, v0, Labcd/Xv;->VH:Z

    if-eqz v0, :cond_a

    :goto_6
    const-string v0, "isFatalCrash"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Labcd/_v;->j6:Labcd/Xv;

    const-string v1, "exception"

    iget-object v2, v0, Labcd/Xv;->we:Ljava/lang/Throwable;

    iget-object v3, v0, Labcd/Xv;->J8:Ljava/lang/StackTraceElement;

    iget-object v0, v0, Labcd/Xv;->J0:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0}, Labcd/_v;->j6(Ljava/lang/Throwable;Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "uiScene"

    iget-object v1, p0, Labcd/_v;->j6:Labcd/Xv;

    iget-object v1, v1, Labcd/Xv;->EQ:Lcom/appfour/backbone/api/objects/UIScene;

    invoke-direct {p0, v1}, Labcd/_v;->j6(Lcom/appfour/backbone/api/objects/UIScene;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v5

    :cond_9
    move v0, v4

    goto :goto_5

    :cond_a
    move v3, v4

    goto :goto_6
.end method
