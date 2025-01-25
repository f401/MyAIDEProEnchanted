.class public final Lcom/blankj/utilcode/util/BusUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/BusUtils$Bus;,
        Lcom/blankj/utilcode/util/BusUtils$BusInfo;,
        Lcom/blankj/utilcode/util/BusUtils$LazyHolder;,
        Lcom/blankj/utilcode/util/BusUtils$ThreadMode;
    }
.end annotation


# static fields
.field private static final NULL:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "BusUtils"


# instance fields
.field private final mClassName_BusesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mClassName_Tag_Arg4StickyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mClassName_TagsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTag_BusInfoListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/blankj/utilcode/util/BusUtils$BusInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "nULl"

    sput-object v0, Lcom/blankj/utilcode/util/BusUtils;->NULL:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_BusesMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_TagsMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/blankj/utilcode/util/BusUtils;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/blankj/utilcode/util/BusUtils$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/blankj/utilcode/util/BusUtils;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/blankj/utilcode/util/BusUtils;Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/blankj/utilcode/util/BusUtils;->realInvokeMethod(Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V

    return-void
.end method

.method private consumeSticky(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9

    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The bus of tag <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> is not exists."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BusUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void

    :cond_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;

    iget-object v0, v1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->subClassNames:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-boolean v0, v1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->sticky:Z

    if-eqz v0, :cond_2a

    iget-object v3, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    monitor-enter v3

    :try_start_4e
    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    iget-object v4, v1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->className:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_60

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    :cond_60
    monitor-exit v3

    goto :goto_2a

    :catchall_62
    move-exception v0

    monitor-exit v3
    :try_end_64
    .catchall {:try_start_4e .. :try_end_64} :catchall_62

    throw v0

    :cond_65
    const/4 v0, 0x1

    :try_start_66
    invoke-direct {p0, p1, p3, v1, v0}, Lcom/blankj/utilcode/util/BusUtils;->invokeBus(Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V

    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_62

    goto :goto_2a
.end method

.method private consumeStickyIfExist(Ljava/lang/Object;)V
    .registers 7

    iget-object v1, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_13

    :goto_12
    return-void

    :cond_13
    iget-object v3, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    monitor-enter v3

    :try_start_16
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/blankj/utilcode/util/BusUtils;->consumeSticky(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1e

    :catchall_3a
    move-exception v1

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_16 .. :try_end_3c} :catchall_3a

    throw v1

    :cond_3d
    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3a

    goto :goto_12
.end method

.method private getClassName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_78

    :cond_7
    const/4 v0, -0x1

    :goto_8
    packed-switch v0, :pswitch_data_9a

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_f
    return-object v0

    :sswitch_10
    const-string v0, "short"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_8

    :sswitch_1a
    const-string v0, "float"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_8

    :sswitch_24
    const-string v0, "boolean"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_2e
    const-string v0, "long"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_8

    :sswitch_38
    const-string v0, "char"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_8

    :sswitch_42
    const-string v0, "byte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_8

    :sswitch_4c
    const-string v0, "int"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_56
    const-string v0, "double"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_8

    :pswitch_60  #0x7
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_f

    :pswitch_63  #0x6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_f

    :pswitch_66  #0x5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_f

    :pswitch_69  #0x4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_f

    :pswitch_6c  #0x3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_f

    :pswitch_6f  #0x2
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_f

    :pswitch_72  #0x1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_f

    :pswitch_75  #0x0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_f

    :sswitch_data_78
    .sparse-switch
        -0x4f08842f -> :sswitch_56
        0x197ef -> :sswitch_4c
        0x2e6108 -> :sswitch_42
        0x2e9356 -> :sswitch_38
        0x32c67c -> :sswitch_2e
        0x3db6c28 -> :sswitch_24
        0x5d0225c -> :sswitch_1a
        0x685847c -> :sswitch_10
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_75  #00000000
        :pswitch_72  #00000001
        :pswitch_6f  #00000002
        :pswitch_6c  #00000003
        :pswitch_69  #00000004
        :pswitch_66  #00000005
        :pswitch_63  #00000006
        :pswitch_60  #00000007
    .end packed-switch
.end method

.method private static getInstance()Lcom/blankj/utilcode/util/BusUtils;
    .registers 1

    invoke-static {}, Lcom/blankj/utilcode/util/BusUtils$LazyHolder;->access$000()Lcom/blankj/utilcode/util/BusUtils;

    move-result-object v0

    return-object v0
.end method

.method private getMethodByBusInfo(Lcom/blankj/utilcode/util/BusUtils$BusInfo;)Ljava/lang/reflect/Method;
    .registers 7

    :try_start_0
    const-string v0, ""

    iget-object v1, p1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->paramType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->className:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->funName:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    iget-object v0, p1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->className:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->funName:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->paramType:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/blankj/utilcode/util/BusUtils;->getClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_31
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_31} :catch_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_31} :catch_33

    move-result-object v0

    goto :goto_19

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_37
    const/4 v0, 0x0

    goto :goto_19

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_37
.end method

.method private init()V
    .registers 1

    return-void
.end method

.method private invokeBus(Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/BusUtils;->invokeBus(Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V

    return-void
.end method

.method private invokeBus(Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V
    .registers 6

    iget-object v0, p3, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->method:Ljava/lang/reflect/Method;

    if-nez v0, :cond_d

    invoke-direct {p0, p3}, Lcom/blankj/utilcode/util/BusUtils;->getMethodByBusInfo(Lcom/blankj/utilcode/util/BusUtils$BusInfo;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iput-object v0, p3, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->method:Ljava/lang/reflect/Method;

    :cond_d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/blankj/utilcode/util/BusUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V

    goto :goto_a
.end method

.method private invokeBuses(Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/blankj/utilcode/util/BusUtils$BusInfo;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/blankj/utilcode/util/BusUtils;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_20

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p2, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->method:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1a} :catch_3a

    goto :goto_8

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    :try_start_20
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p2, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->method:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_39} :catch_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_39} :catch_3a

    goto :goto_24

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1f
.end method

.method private invokeMethod(Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/BusUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V

    return-void
.end method

.method private invokeMethod(Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V
    .registers 15

    const/4 v9, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    new-instance v0, Lcom/blankj/utilcode/util/BusUtils$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/blankj/utilcode/util/BusUtils$1;-><init>(Lcom/blankj/utilcode/util/BusUtils;Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V

    iget-object v1, p3, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->threadMode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_7c

    :cond_17
    const/4 v1, -0x1

    :goto_18
    if-eqz v1, :cond_78

    if-eq v1, v8, :cond_70

    if-eq v1, v7, :cond_68

    if-eq v1, v6, :cond_60

    if-eq v1, v9, :cond_58

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_25
    return-void

    :sswitch_26
    const-string v2, "CACHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v6

    goto :goto_18

    :sswitch_30
    const-string v2, "MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    goto :goto_18

    :sswitch_3a
    const-string v2, "CPU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v7

    goto :goto_18

    :sswitch_44
    const-string v2, "IO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v8

    goto :goto_18

    :sswitch_4e
    const-string v2, "SINGLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v9

    goto :goto_18

    :cond_58
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->getSinglePool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_25

    :cond_60
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_25

    :cond_68
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->getCpuPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_25

    :cond_70
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->getIoPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_25

    :cond_78
    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_25

    :sswitch_data_7c
    .sparse-switch
        -0x6e3487b8 -> :sswitch_4e
        0x926 -> :sswitch_44
        0x10588 -> :sswitch_3a
        0x23fdb9 -> :sswitch_30
        0x76083522 -> :sswitch_26
    .end sparse-switch
.end method

.method public static post(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/BusUtils;->NULL:Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/BusUtils;->post(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static post(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/BusUtils;->getInstance()Lcom/blankj/utilcode/util/BusUtils;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/blankj/utilcode/util/BusUtils;->postInner(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private postInner(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/BusUtils;->postInner(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method private postInner(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 6

    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The bus of tag <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> is not exists."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BusUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "BusUtils"

    const-string v1, "Please check whether the bus plugin is applied."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return-void

    :cond_35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/BusUtils$BusInfo;

    invoke-direct {p0, p2, v0, p3}, Lcom/blankj/utilcode/util/BusUtils;->invokeBus(Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V

    goto :goto_39
.end method

.method public static postSticky(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/blankj/utilcode/util/BusUtils;->NULL:Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/BusUtils;->postSticky(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static postSticky(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Lcom/blankj/utilcode/util/BusUtils;->getInstance()Lcom/blankj/utilcode/util/BusUtils;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/blankj/utilcode/util/BusUtils;->postStickyInner(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private postStickyInner(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9

    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The bus of tag <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> is not exists."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BusUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void

    :cond_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/BusUtils$BusInfo;

    iget-boolean v1, v0, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->sticky:Z

    if-nez v1, :cond_3f

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/blankj/utilcode/util/BusUtils;->invokeBus(Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V

    goto :goto_2a

    :cond_3f
    iget-object v3, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    monitor-enter v3

    :try_start_42
    iget-object v1, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->className:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_5a

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v4, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    iget-object v5, v0, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->className:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_42 .. :try_end_5e} :catchall_63

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/blankj/utilcode/util/BusUtils;->invokeBus(Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V

    goto :goto_2a

    :catchall_63
    move-exception v0

    :try_start_64
    monitor-exit v3
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v0
.end method

.method private realInvokeMethod(Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V
    .registers 9

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-nez p1, :cond_51

    iget-object v0, p3, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->subClassNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_BusesMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_d

    :cond_2d
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_54

    if-nez p4, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " was not registered before."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BusUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    :goto_50
    return-void

    :cond_51
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_54
    invoke-direct {p0, p2, p3, v1}, Lcom/blankj/utilcode/util/BusUtils;->invokeBuses(Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Ljava/util/Set;)V

    goto :goto_50
.end method

.method private recordTags(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_TagsMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_6f

    iget-object v2, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_TagsMap:Ljava/util/Map;

    monitor-enter v2

    :try_start_d
    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_TagsMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_6e

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3c
    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;
    :try_end_48
    .catchall {:try_start_d .. :try_end_48} :catchall_66

    :try_start_48
    iget-object v6, v1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->className:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3c

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->subClassNames:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catch Ljava/lang/ClassNotFoundException; {:try_start_48 .. :try_end_60} :catch_61
    .catchall {:try_start_48 .. :try_end_60} :catchall_66

    goto :goto_3c

    :catch_61
    move-exception v1

    :try_start_62
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_3c

    :catchall_66
    move-exception v0

    monitor-exit v2
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_66

    throw v0

    :cond_69
    :try_start_69
    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_TagsMap:Ljava/util/Map;

    invoke-interface {v0, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_66

    :cond_6f
    return-void
.end method

.method public static register(Ljava/lang/Object;)V
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/BusUtils;->getInstance()Lcom/blankj/utilcode/util/BusUtils;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/BusUtils;->registerInner(Ljava/lang/Object;)V

    return-void
.end method

.method private registerBus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/blankj/utilcode/util/BusUtils;->registerBus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method private registerBus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .registers 19

    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_29

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v1, p0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v0

    :goto_15
    new-instance v0, Lcom/blankj/utilcode/util/BusUtils$BusInfo;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/blankj/utilcode/util/BusUtils$BusInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_29
    move-object v9, v0

    goto :goto_15
.end method

.method static registerBus4Test(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .registers 17

    invoke-static {}, Lcom/blankj/utilcode/util/BusUtils;->getInstance()Lcom/blankj/utilcode/util/BusUtils;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/blankj/utilcode/util/BusUtils;->registerBus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method private registerInner(Ljava/lang/Object;)V
    .registers 8

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_BusesMap:Ljava/util/Map;

    monitor-enter v4

    :try_start_f
    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_BusesMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_24

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iget-object v1, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_BusesMap:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_24
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The bus of <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "> already registered."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BusUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_2

    :catchall_47
    move-exception v0

    monitor-exit v4
    :try_end_49
    .catchall {:try_start_f .. :try_end_49} :catchall_47

    throw v0

    :cond_4a
    :try_start_4a
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_47

    if-eqz v1, :cond_53

    invoke-direct {p0, v2, v3}, Lcom/blankj/utilcode/util/BusUtils;->recordTags(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_53
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/BusUtils;->consumeStickyIfExist(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static removeSticky(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/BusUtils;->getInstance()Lcom/blankj/utilcode/util/BusUtils;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/BusUtils;->removeStickyInner(Ljava/lang/String;)V

    return-void
.end method

.method private removeStickyInner(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The bus of tag <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> is not exists."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BusUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_25
    return-void

    :cond_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/BusUtils$BusInfo;

    iget-boolean v2, v0, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->sticky:Z

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    monitor-enter v2

    :try_start_3d
    iget-object v3, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    iget-object v0, v0, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->className:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_4f

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    :cond_4f
    monitor-exit v2

    goto :goto_25

    :catchall_51
    move-exception v0

    monitor-exit v2
    :try_end_53
    .catchall {:try_start_3d .. :try_end_53} :catchall_51

    throw v0

    :cond_54
    :try_start_54
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_51

    goto :goto_2a
.end method

.method public static toString_()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/blankj/utilcode/util/BusUtils;->getInstance()Lcom/blankj/utilcode/util/BusUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/BusUtils;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unregister(Ljava/lang/Object;)V
    .registers 2

    invoke-static {}, Lcom/blankj/utilcode/util/BusUtils;->getInstance()Lcom/blankj/utilcode/util/BusUtils;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/BusUtils;->unregisterInner(Ljava/lang/Object;)V

    return-void
.end method

.method private unregisterInner(Ljava/lang/Object;)V
    .registers 5

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_BusesMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_e
    iget-object v2, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_BusesMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1e

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The bus of <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> was not registered before."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "BusUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_2

    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_e .. :try_end_3d} :catchall_3b

    throw v0

    :cond_3e
    :try_start_3e
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_3b

    goto :goto_2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BusUtils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
