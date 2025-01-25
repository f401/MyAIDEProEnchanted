.class public final Lcom/luajava/LuaJavaAPI;
.super Ljava/lang/Object;


# static fields
.field private static ArrayList_class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static Character_class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static HashMap_class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static List_class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static LuaFunction_class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static LuaObject_class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static LuaState_class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static LuaTable_class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static Map_class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static Number_class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static String_class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static methodCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public static methodsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->methodsMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/luajava/LuaJavaAPI;->methodCache:Ljava/util/HashMap;

    :try_start_e
    const-string v0, "com.luajava.LuaState"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_13} :catch_67

    move-result-object v0

    sput-object v0, Lcom/luajava/LuaJavaAPI;->LuaState_class:Ljava/lang/Class;

    :try_start_16
    const-string v0, "java.lang.String"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_1b} :catch_72

    move-result-object v0

    sput-object v0, Lcom/luajava/LuaJavaAPI;->String_class:Ljava/lang/Class;

    :try_start_1e
    const-string v0, "java.util.List"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_23} :catch_7d

    move-result-object v0

    sput-object v0, Lcom/luajava/LuaJavaAPI;->List_class:Ljava/lang/Class;

    :try_start_26
    const-string v0, "java.util.ArrayList"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_2b} :catch_88

    move-result-object v0

    sput-object v0, Lcom/luajava/LuaJavaAPI;->ArrayList_class:Ljava/lang/Class;

    :try_start_2e
    const-string v0, "java.util.HashMap"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_33
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2e .. :try_end_33} :catch_93

    move-result-object v0

    sput-object v0, Lcom/luajava/LuaJavaAPI;->HashMap_class:Ljava/lang/Class;

    :try_start_36
    const-string v0, "java.util.Map"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_36 .. :try_end_3b} :catch_9e

    move-result-object v0

    sput-object v0, Lcom/luajava/LuaJavaAPI;->Map_class:Ljava/lang/Class;

    :try_start_3e
    const-string v0, "com.luajava.LuaFunction"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3e .. :try_end_43} :catch_a9

    move-result-object v0

    sput-object v0, Lcom/luajava/LuaJavaAPI;->LuaFunction_class:Ljava/lang/Class;

    :try_start_46
    const-string v0, "com.luajava.LuaObject"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_46 .. :try_end_4b} :catch_b4

    move-result-object v0

    sput-object v0, Lcom/luajava/LuaJavaAPI;->LuaObject_class:Ljava/lang/Class;

    :try_start_4e
    const-string v0, "com.luajava.LuaTable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_53
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4e .. :try_end_53} :catch_bf

    move-result-object v0

    sput-object v0, Lcom/luajava/LuaJavaAPI;->LuaTable_class:Ljava/lang/Class;

    :try_start_56
    const-string v0, "java.lang.Number"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_56 .. :try_end_5b} :catch_ca

    move-result-object v0

    sput-object v0, Lcom/luajava/LuaJavaAPI;->Number_class:Ljava/lang/Class;

    :try_start_5e
    const-string v0, "java.lang.Character"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_63
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5e .. :try_end_63} :catch_d5

    move-result-object v0

    sput-object v0, Lcom/luajava/LuaJavaAPI;->Character_class:Ljava/lang/Class;

    return-void

    :catch_67
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_72
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_7d
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_88
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_93
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_9e
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_a9
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_b4
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_bf
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_ca
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_d5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static argError(Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "bad argument to \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\' ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " expected, got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {p0, v3}, Lcom/luajava/LuaJavaAPI;->typeName(Lcom/luajava/LuaState;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " value)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asTable(JLjava/lang/Object;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v3

    monitor-enter v3

    :try_start_6
    invoke-virtual {v3}, Lcom/luajava/LuaState;->newTable()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v0, 0x0

    :goto_18
    add-int/lit8 v4, v1, -0x1

    if-le v0, v4, :cond_22

    :cond_1c
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Lcom/luajava/LuaState;->pushValue(I)V

    monitor-exit v3

    return v2

    :cond_22
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    const/4 v4, -0x2

    add-int/lit8 v5, v0, 0x1

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcom/luajava/LuaState;->rawSetI(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_33
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_56

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    const/4 v0, -0x2

    int-to-long v6, v1

    invoke-virtual {v3, v0, v6, v7}, Lcom/luajava/LuaState;->rawSetI(IJ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3e

    :cond_56
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_1c

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    const/4 v0, -0x3

    invoke-virtual {v3, v0}, Lcom/luajava/LuaState;->setTable(I)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_82} :catch_83
    .catchall {:try_start_6 .. :try_end_82} :catchall_a1

    goto :goto_64

    :catch_83
    move-exception v0

    :try_start_84
    new-instance v1, Lcom/luajava/LuaException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "can not astable: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a1
    .catchall {:try_start_84 .. :try_end_a1} :catchall_a1

    :catchall_a1
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static callMethod(JLjava/lang/Object;Ljava/lang/String;)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v6

    monitor-enter v6

    :try_start_7
    sget-object v0, Lcom/luajava/LuaJavaAPI;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Lcom/luajava/LuaState;->getTop()I

    move-result v7

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/reflect/Method;

    move v5, v2

    :goto_19
    array-length v4, v0

    if-lt v5, v4, :cond_46

    :goto_1c
    if-nez v1, :cond_7e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_23
    array-length v3, v0

    if-lt v2, v3, :cond_6d

    new-instance v0, Lcom/luajava/LuaException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid method call. Invalid Parameters.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_46
    :try_start_46
    aget-object v4, v0, v5

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v4, v9

    if-eq v4, v7, :cond_53

    :cond_4f
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_19

    :cond_53
    move v4, v2

    :goto_54
    array-length v10, v9
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_43

    if-lt v4, v10, :cond_5d

    move v4, v3

    :goto_58
    if-eqz v4, :cond_4f

    aget-object v1, v0, v5

    goto :goto_1c

    :cond_5d
    :try_start_5d
    aget-object v10, v9, v4

    add-int/lit8 v11, v4, 0x1

    invoke-static {v6, v10, v11}, Lcom/luajava/LuaJavaAPI;->compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v4
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_67} :catch_6a
    .catchall {:try_start_5d .. :try_end_67} :catchall_43

    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    :catch_6a
    move-exception v4

    move v4, v2

    goto :goto_58

    :cond_6d
    :try_start_6d
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7b
    .catchall {:try_start_6d .. :try_end_7b} :catchall_43

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_7e
    :try_start_7e
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_8c

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_8c
    invoke-virtual {v1, p2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_8f} :catch_a1
    .catchall {:try_start_7e .. :try_end_8f} :catchall_43

    move-result-object v0

    if-nez v0, :cond_a8

    :try_start_92
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    monitor-exit v6

    move v0, v2

    :goto_a0
    return v0

    :catch_a1
    move-exception v0

    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_a8
    invoke-virtual {v6, v0}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    monitor-exit v6
    :try_end_ac
    .catchall {:try_start_92 .. :try_end_ac} :catchall_43

    move v0, v3

    goto :goto_a0
.end method

.method public static checkClass(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_12

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v2

    move v1, v0

    :goto_d
    array-length v3, v2

    if-lt v1, v3, :cond_17

    monitor-exit p0

    :goto_11
    return v0

    :cond_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_14

    goto :goto_11

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_17
    :try_start_17
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    aget-object v0, v2, v1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const/4 v0, 0x3

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_14

    goto :goto_11

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method public static checkField(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_4
    check-cast v1, Ljava/lang/reflect/Field;

    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_18

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_56

    move v4, v3

    :goto_f
    :try_start_f
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_f .. :try_end_12} :catch_1e
    .catchall {:try_start_f .. :try_end_12} :catchall_56

    move-result-object v5

    if-nez v5, :cond_22

    :try_start_15
    monitor-exit p0

    move v1, v2

    :goto_17
    return v1

    :cond_18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move v4, v2

    goto :goto_f

    :catch_1e
    move-exception v1

    monitor-exit p0

    move v1, v2

    goto :goto_17

    :cond_22
    if-eqz v4, :cond_31

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_31

    monitor-exit p0

    move v1, v2

    goto :goto_17

    :cond_31
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_56

    :try_start_34
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_42

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_42
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_45} :catch_59
    .catchall {:try_start_34 .. :try_end_45} :catchall_56

    move-result-object v1

    :try_start_46
    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    if-eqz v1, :cond_60

    const/4 v1, 0x5

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_56

    goto :goto_17

    :catchall_56
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_59
    move-exception v1

    :try_start_5a
    new-instance v2, Lcom/luajava/LuaException;

    invoke-direct {v2, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :cond_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_56

    move v1, v3

    goto :goto_17
.end method

.method public static checkMethod(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_62

    check-cast p1, Ljava/lang/Class;

    const/4 v0, 0x1

    move v3, v0

    :goto_a
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/luajava/LuaJavaAPI;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Method;

    if-nez v0, :cond_5c

    sget-object v0, Lcom/luajava/LuaJavaAPI;->methodsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Method;

    if-nez v0, :cond_30

    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v5, Lcom/luajava/LuaJavaAPI;->methodsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    move-object v2, v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_37
    array-length v6, v2

    if-lt v0, v6, :cond_68

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    if-eqz v3, :cond_4e

    invoke-virtual {p1}, Ljava/lang/Class;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    move v0, v1

    :goto_4b
    array-length v3, v2

    if-lt v0, v3, :cond_8e

    :cond_4e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Method;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    sget-object v2, Lcom/luajava/LuaJavaAPI;->methodCache:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    array-length v0, v0

    if-nez v0, :cond_a2

    monitor-exit p0

    move v0, v1

    :goto_61
    return v0

    :cond_62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    move v3, v1

    goto :goto_a

    :cond_68
    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    if-eqz v3, :cond_85

    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_85

    :cond_82
    :goto_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_85
    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8a
    .catchall {:try_start_2 .. :try_end_8a} :catchall_8b

    goto :goto_82

    :catchall_8b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8e
    :try_start_8e
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    aget-object v3, v2, v0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9f
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_a2
    const/4 v0, 0x2

    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_8e .. :try_end_a4} :catchall_8b

    goto :goto_61
.end method

.method private static compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;",
            "^",
            "Lcom/luajava/LuaException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    move-object v0, v1

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->type(I)I

    move-result v4

    packed-switch v4, :pswitch_data_118

    :pswitch_d  #0x2
    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Invalid Parameters."

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15  #0x1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_113

    move v0, v2

    :goto_20
    new-instance v1, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toBoolean(I)Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    move v2, v0

    :goto_2a
    if-nez v2, :cond_116

    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Invalid Parameter."

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_113

    move v0, v2

    goto :goto_20

    :pswitch_3e  #0x4
    sget-object v1, Lcom/luajava/LuaJavaAPI;->String_class:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_48

    :goto_46
    move-object v1, v0

    goto :goto_2a

    :cond_48
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    move v2, v3

    goto :goto_46

    :pswitch_4e  #0x6
    sget-object v1, Lcom/luajava/LuaJavaAPI;->LuaFunction_class:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_58

    :goto_56
    move-object v1, v0

    goto :goto_2a

    :cond_58
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    move v2, v3

    goto :goto_56

    :pswitch_5e  #0x5
    sget-object v1, Lcom/luajava/LuaJavaAPI;->LuaTable_class:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    :goto_6a
    move v2, v3

    move-object v1, v0

    goto :goto_2a

    :cond_6d
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/luajava/LuaJavaAPI;->createArray(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6a

    :cond_7c
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-static {p0, p1, p2}, Lcom/luajava/LuaJavaAPI;->createProxyObject(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6a

    :cond_87
    sget-object v1, Lcom/luajava/LuaJavaAPI;->Map_class:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_94

    invoke-static {p0, p1, p2}, Lcom/luajava/LuaJavaAPI;->createMap(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6a

    :cond_94
    move v3, v2

    goto :goto_6a

    :pswitch_96  #0x3
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->isInteger(I)Z

    move-result v0

    if-eqz v0, :cond_ae

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, p1}, Lcom/luajava/LuaState;->convertLuaNumber(Ljava/lang/Long;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v0

    :goto_a9
    if-nez v0, :cond_111

    :goto_ab
    move-object v1, v0

    goto/16 :goto_2a

    :cond_ae
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/lang/Double;-><init>(D)V

    invoke-static {v0, p1}, Lcom/luajava/LuaState;->convertLuaNumber(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_a9

    :pswitch_bc  #0x7
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->isObject(I)Z

    move-result v4

    if-eqz v4, :cond_fd

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getObjectFromUserdata(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_cf

    check-cast v1, Ljava/lang/Object;

    move-object v0, v1

    :goto_cb
    move v2, v3

    move-object v1, v0

    goto/16 :goto_2a

    :cond_cf
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_ef

    sget-object v1, Lcom/luajava/LuaJavaAPI;->Number_class:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_ed

    sget-object v1, Lcom/luajava/LuaJavaAPI;->Character_class:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_ef

    :cond_ed
    move-object v0, v4

    goto :goto_cb

    :cond_ef
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_fb

    move-object v0, v4

    goto :goto_cb

    :cond_fb
    move v3, v2

    goto :goto_cb

    :cond_fd
    sget-object v1, Lcom/luajava/LuaJavaAPI;->LuaObject_class:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_107

    move v3, v2

    goto :goto_cb

    :cond_107
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    goto :goto_cb

    :pswitch_10c  #0x0
    check-cast v1, Ljava/lang/Object;

    move v2, v3

    goto/16 :goto_2a

    :cond_111
    move v2, v3

    goto :goto_ab

    :cond_113
    move v0, v3

    goto/16 :goto_20

    :cond_116
    return-object v1

    nop

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_10c  #00000000
        :pswitch_15  #00000001
        :pswitch_d  #00000002
        :pswitch_96  #00000003
        :pswitch_3e  #00000004
        :pswitch_5e  #00000005
        :pswitch_4e  #00000006
        :pswitch_bc  #00000007
    .end packed-switch
.end method

.method public static createArray(JLjava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-static {p2}, Lcom/luajava/LuaJavaAPI;->javaBindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/luajava/LuaJavaAPI;->createArray(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static createArray(Lcom/luajava/LuaState;Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<*>;)I^",
            "Lcom/luajava/LuaException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    invoke-static {p0, p1, v0}, Lcom/luajava/LuaJavaAPI;->createArray(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    const/4 v0, 0x1

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static createArray(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;",
            "^",
            "Lcom/luajava/LuaException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->objLen(I)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/luajava/LuaJavaAPI;->String_class:Ljava/lang/Class;

    if-ne p1, v3, :cond_2a

    :goto_e
    if-le v0, v1, :cond_12

    :cond_10
    :goto_10
    monitor-exit p0

    return-object v2

    :cond_12
    int-to-double v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_2a
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_4d

    :goto_2e
    if-gt v0, v1, :cond_10

    int-to-double v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v4

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    add-int/lit8 v4, v0, -0x1

    invoke-static {v2, v4, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_4d
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_71

    :goto_51
    if-gt v0, v1, :cond_10

    int-to-double v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v4

    double-to-float v3, v4

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, v3}, Ljava/lang/Float;-><init>(F)V

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_71
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_94

    :goto_75
    if-gt v0, v1, :cond_10

    int-to-double v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v4

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    add-int/lit8 v4, v0, -0x1

    invoke-static {v2, v4, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    :cond_94
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_b8

    :goto_98
    if-gt v0, v1, :cond_10

    int-to-double v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v4

    long-to-int v3, v4

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_98

    :cond_b8
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_dd

    :goto_bc
    if-gt v0, v1, :cond_10

    int-to-double v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-short v3, v3

    new-instance v4, Ljava/lang/Short;

    invoke-direct {v4, v3}, Ljava/lang/Short;-><init>(S)V

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_bc

    :cond_dd
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_102

    :goto_e1
    if-gt v0, v1, :cond_10

    int-to-double v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-char v3, v3

    new-instance v4, Ljava/lang/Character;

    invoke-direct {v4, v3}, Ljava/lang/Character;-><init>(C)V

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e1

    :cond_102
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v3, :cond_13e

    :goto_106
    if-gt v0, v1, :cond_10

    int-to-double v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-byte v3, v3

    new-instance v4, Ljava/lang/Byte;

    invoke-direct {v4, v3}, Ljava/lang/Byte;-><init>(B)V

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_106

    :cond_127
    int-to-double v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-static {p0, p1, v4}, Lcom/luajava/LuaJavaAPI;->compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13c} :catch_142
    .catchall {:try_start_2 .. :try_end_13c} :catchall_149

    add-int/lit8 v0, v0, 0x1

    :cond_13e
    if-le v0, v1, :cond_127

    goto/16 :goto_10

    :catch_142
    move-exception v0

    :try_start_143
    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_149
    .catchall {:try_start_143 .. :try_end_149} :catchall_149

    :catchall_149
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static createList(Lcom/luajava/LuaState;Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<*>;)I^",
            "Lcom/luajava/LuaException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    invoke-static {p0, p1, v0}, Lcom/luajava/LuaJavaAPI;->createList(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    const/4 v0, 0x1

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static createList(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;",
            "^",
            "Lcom/luajava/LuaException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->objLen(I)I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_37

    move-result v2

    :try_start_6
    sget-object v0, Lcom/luajava/LuaJavaAPI;->List_class:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object p1, Lcom/luajava/LuaJavaAPI;->ArrayList_class:Ljava/lang/Class;

    :cond_10
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_16
    if-le v1, v2, :cond_1a

    monitor-exit p0

    return-object v0

    :cond_1a
    int-to-double v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/luajava/LuaState;->pushNumber(D)V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getTable(I)I

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2d} :catch_30
    .catchall {:try_start_6 .. :try_end_2d} :catchall_37

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :catch_30
    move-exception v0

    :try_start_31
    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static createMap(Lcom/luajava/LuaState;Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<*>;)I^",
            "Lcom/luajava/LuaException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    invoke-static {p0, p1, v0}, Lcom/luajava/LuaJavaAPI;->createMap(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    const/4 v0, 0x1

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static createMap(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;",
            "^",
            "Lcom/luajava/LuaException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/luajava/LuaJavaAPI;->Map_class:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p1, Lcom/luajava/LuaJavaAPI;->HashMap_class:Ljava/lang/Class;

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/luajava/LuaState;->pushNil()V

    :goto_14
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->next(I)I

    move-result v1

    if-nez v1, :cond_1c

    monitor-exit p0

    return-object v0

    :cond_1c
    const/4 v1, -0x2

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->pop(I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2e
    .catchall {:try_start_1 .. :try_end_2d} :catchall_35

    goto :goto_14

    :catch_2e
    move-exception v0

    :try_start_2f
    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static createProxy(JLjava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-static {v1, p2}, Lcom/luajava/LuaJavaAPI;->createProxyObject(Lcom/luajava/LuaState;Ljava/lang/String;)I

    move-result v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static createProxyObject(Lcom/luajava/LuaState;Ljava/lang/Class;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    invoke-static {p0, p1, v0}, Lcom/luajava/LuaJavaAPI;->createProxyObject(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    const/4 v0, 0x1

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static createProxyObject(Lcom/luajava/LuaState;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/luajava/LuaObject;->createProxy(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_10
    .catchall {:try_start_2 .. :try_end_d} :catchall_17

    :try_start_d
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catch_10
    move-exception v0

    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static createProxyObject(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/luajava/LuaObject;->createProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_b
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    return-object v0

    :catch_b
    move-exception v0

    :try_start_c
    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getArrayValue(JLjava/lang/Object;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_6
    check-cast v0, Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p2, p3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    :goto_16
    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :cond_1c
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_27

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_16

    :cond_27
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_37

    check-cast p2, Ljava/util/Map;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_16

    :cond_37
    new-instance v0, Lcom/luajava/LuaException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "can not get "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " value in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7c
    .catchall {:try_start_6 .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getObjInstance(Lcom/luajava/LuaState;Ljava/lang/Class;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "Ljava/lang/Class",
            "<*>;)I^",
            "Lcom/luajava/LuaException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/luajava/LuaState;->getTop()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_79

    move-result v5

    if-ne v5, v2, :cond_43

    :try_start_9
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12
    .catchall {:try_start_9 .. :try_end_11} :catchall_79

    :goto_11
    return v2

    :catch_12
    move-exception v0

    :try_start_13
    const-string v0, "android.view.View"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_18} :catch_7c
    .catchall {:try_start_13 .. :try_end_18} :catchall_79

    move-result-object v0

    :try_start_19
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_79

    move-result v0

    if-eqz v0, :cond_43

    :try_start_1f
    const-string v0, "android.content.Context"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_24
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f .. :try_end_24} :catch_87
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_42
    .catchall {:try_start_1f .. :try_end_24} :catchall_79

    move-result-object v0

    const/4 v1, 0x1

    :try_start_26
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/luajava/LuaState;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_41} :catch_42
    .catchall {:try_start_26 .. :try_end_41} :catchall_79

    goto :goto_11

    :catch_42
    move-exception v0

    :cond_43
    add-int/lit8 v0, v5, -0x1

    :try_start_45
    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/reflect/Constructor;

    move v4, v3

    :goto_4f
    array-length v1, v7

    if-lt v4, v1, :cond_92

    :goto_52
    if-nez v0, :cond_cc

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_59
    array-length v1, v7

    if-lt v3, v1, :cond_bb

    new-instance v1, Lcom/luajava/LuaException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid constructor method call. Invalid Parameters.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_79
    .catchall {:try_start_45 .. :try_end_79} :catchall_79

    :catchall_79
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_7c
    move-exception v0

    :try_start_7d
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_87
    .catchall {:try_start_7d .. :try_end_87} :catchall_79

    :catch_87
    move-exception v0

    :try_start_88
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_92} :catch_42
    .catchall {:try_start_88 .. :try_end_92} :catchall_79

    :cond_92
    :try_start_92
    aget-object v1, v7, v4

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v1, v8

    add-int/lit8 v9, v5, -0x1

    if-eq v1, v9, :cond_a1

    :cond_9d
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4f

    :cond_a1
    move v1, v3

    :goto_a2
    array-length v9, v8
    :try_end_a3
    .catchall {:try_start_92 .. :try_end_a3} :catchall_79

    if-lt v1, v9, :cond_ab

    move v1, v2

    :goto_a6
    if-eqz v1, :cond_9d

    aget-object v0, v7, v4

    goto :goto_52

    :cond_ab
    :try_start_ab
    aget-object v9, v8, v1

    add-int/lit8 v10, v1, 0x2

    invoke-static {p0, v9, v10}, Lcom/luajava/LuaJavaAPI;->compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v6, v1
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b5} :catch_b8
    .catchall {:try_start_ab .. :try_end_b5} :catchall_79

    add-int/lit8 v1, v1, 0x1

    goto :goto_a2

    :catch_b8
    move-exception v1

    move v1, v3

    goto :goto_a6

    :cond_bb
    :try_start_bb
    aget-object v1, v7, v3

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c9
    .catchall {:try_start_bb .. :try_end_c9} :catchall_79

    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_cc
    :try_start_cc
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cf} :catch_da
    .catchall {:try_start_cc .. :try_end_cf} :catchall_79

    move-result-object v0

    if-nez v0, :cond_e1

    :try_start_d2
    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Couldn\'t instantiate java Object"

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_da
    move-exception v0

    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_e1
    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_e5
    .catchall {:try_start_d2 .. :try_end_e5} :catchall_79

    goto/16 :goto_11
.end method

.method public static javaBindClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_4

    :cond_11
    const-string v0, "byte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_4

    :cond_1c
    const-string v0, "char"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    goto :goto_4

    :cond_27
    const-string v0, "short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_4

    :cond_32
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_4

    :cond_3d
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_4

    :cond_48
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_4

    :cond_53
    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_4

    :cond_5e
    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Class not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static javaCreate(JLjava/lang/Class;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Class",
            "<*>;)I^",
            "Lcom/luajava/LuaException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v1, p2}, Lcom/luajava/LuaJavaAPI;->createProxyObject(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1

    :goto_10
    return v0

    :cond_11
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {v1, p2}, Lcom/luajava/LuaJavaAPI;->createArray(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    goto :goto_10

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_20
    :try_start_20
    sget-object v0, Lcom/luajava/LuaJavaAPI;->List_class:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {v1, p2}, Lcom/luajava/LuaJavaAPI;->createList(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1

    goto :goto_10

    :cond_2e
    sget-object v0, Lcom/luajava/LuaJavaAPI;->Map_class:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {v1, p2}, Lcom/luajava/LuaJavaAPI;->createMap(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1

    goto :goto_10

    :cond_3c
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->objLen(I)I

    move-result v0

    if-nez v0, :cond_49

    invoke-static {v1, p2}, Lcom/luajava/LuaJavaAPI;->createArray(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1

    goto :goto_10

    :cond_49
    new-instance v0, Lcom/luajava/LuaTable;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;I)V

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/luajava/LuaTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-static {v1, p2}, Lcom/luajava/LuaJavaAPI;->createArray(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1

    goto :goto_10

    :cond_69
    invoke-static {v1, p2}, Lcom/luajava/LuaJavaAPI;->getObjInstance(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_20 .. :try_end_6e} :catchall_1d

    goto :goto_10
.end method

.method public static javaEquals(JLjava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->pushBoolean(Z)V

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_f

    const/4 v0, 0x1

    return v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static javaGetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_4
    check-cast v1, Ljava/lang/reflect/Method;

    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_16

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    monitor-exit p0

    move v1, v2

    :goto_15
    return v1

    :cond_16
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_48

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_6e

    move v4, v2

    :goto_1f
    :try_start_1f
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "get"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_38
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1f .. :try_end_38} :catch_4e
    .catchall {:try_start_1f .. :try_end_38} :catchall_6e

    move-result-object v1

    if-eqz v4, :cond_52

    :try_start_3b
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_52

    monitor-exit p0

    move v1, v3

    goto :goto_15

    :cond_48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move v4, v3

    goto :goto_1f

    :catch_4e
    move-exception v1

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_6e

    move v1, v3

    goto :goto_15

    :cond_52
    const/4 v3, 0x0

    :try_start_53
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_67
    .catchall {:try_start_53 .. :try_end_58} :catchall_6e

    move-result-object v1

    :try_start_59
    instance-of v3, v1, Ljava/lang/CharSequence;

    if-eqz v3, :cond_71

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    :goto_64
    monitor-exit p0

    move v1, v2

    goto :goto_15

    :catch_67
    move-exception v1

    new-instance v2, Lcom/luajava/LuaException;

    invoke-direct {v2, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_6e
    .catchall {:try_start_59 .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_71
    :try_start_71
    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_6e

    goto :goto_64
.end method

.method public static javaLoadLib(JLjava/lang/String;Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v2

    monitor-enter v2

    :try_start_6
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_9} :catch_31
    .catchall {:try_start_6 .. :try_end_9} :catchall_38

    move-result-object v0

    const/4 v3, 0x1

    :try_start_b
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Lcom/luajava/LuaJavaAPI;->LuaState_class:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, p3, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_3b

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v2
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_30} :catch_3e
    .catchall {:try_start_b .. :try_end_30} :catchall_38

    :goto_30
    return v0

    :catch_31
    move-exception v0

    :try_start_32
    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3b
    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3c} :catch_3e
    .catchall {:try_start_3b .. :try_end_3c} :catchall_38

    move v0, v1

    goto :goto_30

    :catch_3e
    move-exception v0

    :try_start_3f
    new-instance v1, Lcom/luajava/LuaException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Error on calling method. Library could not be loaded. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5c
    .catchall {:try_start_3f .. :try_end_5c} :catchall_38
.end method

.method public static javaNew(JLjava/lang/Class;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Class",
            "<*>;)I^",
            "Lcom/luajava/LuaException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, -0x1

    invoke-static {v1, p2, v0}, Lcom/luajava/LuaJavaAPI;->toPrimitive(Lcom/luajava/LuaState;Ljava/lang/Class;I)I

    move-result v0

    monitor-exit v1

    :goto_11
    return v0

    :cond_12
    invoke-static {v1, p2}, Lcom/luajava/LuaJavaAPI;->getObjInstance(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    goto :goto_11

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static javaNewInstance(JLjava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-static {p2}, Lcom/luajava/LuaJavaAPI;->javaBindClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Lcom/luajava/LuaJavaAPI;->toPrimitive(Lcom/luajava/LuaState;Ljava/lang/Class;I)I

    move-result v0

    monitor-exit v1

    :goto_15
    return v0

    :cond_16
    invoke-static {v1, v0}, Lcom/luajava/LuaJavaAPI;->getObjInstance(Lcom/luajava/LuaState;Ljava/lang/Class;)I

    move-result v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    goto :goto_15

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static javaObjectLength(JLjava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_16

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_31
    .catchall {:try_start_5 .. :try_end_e} :catchall_38

    move-result v0

    :goto_f
    int-to-long v2, v0

    :try_start_10
    invoke-virtual {v1, v2, v3}, Lcom/luajava/LuaState;->pushInteger(J)V

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_38

    const/4 v0, 0x1

    return v0

    :cond_16
    :try_start_16
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_21

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_f

    :cond_21
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_2c

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_f

    :cond_2c
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2f} :catch_31
    .catchall {:try_start_16 .. :try_end_2f} :catchall_38

    move-result v0

    goto :goto_f

    :catch_31
    move-exception v0

    :try_start_32
    new-instance v2, Lcom/luajava/LuaException;

    invoke-direct {v2, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static javaSetListener(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/reflect/Method;Z)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "setOn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "Listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move v2, v0

    :goto_2f
    array-length v4, p3
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_89

    if-lt v2, v4, :cond_34

    monitor-exit p0

    :goto_33
    return v0

    :cond_34
    aget-object v4, p3, v2

    :try_start_36
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_43
    if-eqz p4, :cond_4f

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_40

    :cond_4f
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    if-ne v6, v1, :cond_40

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-virtual {p0}, Lcom/luajava/LuaState;->newTable()V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushValue(I)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p2}, Lcom/luajava/LuaState;->setField(ILjava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_36 .. :try_end_6a} :catchall_89

    const/4 v0, 0x1

    :try_start_6b
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Lcom/luajava/LuaObject;->createProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v4, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_80} :catch_82
    .catchall {:try_start_6b .. :try_end_80} :catchall_89

    move v0, v1

    goto :goto_33

    :catch_82
    move-exception v0

    :try_start_83
    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_89
    .catchall {:try_start_83 .. :try_end_89} :catchall_89

    :catchall_89
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static javaSetMethod(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/reflect/Method;Z)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "set"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_1f
    array-length v5, p3

    if-lt v0, v5, :cond_82

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_cc

    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Invalid setter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, ". Invalid Parameters.\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/luajava/LuaState;->typeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7f
    .catchall {:try_start_3 .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_82
    aget-object v5, p3, v0

    :try_start_84
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_91

    :cond_8e
    :goto_8e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_91
    if-eqz p4, :cond_9d

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_8e

    :cond_9d
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v7, v6
    :try_end_a2
    .catchall {:try_start_84 .. :try_end_a2} :catchall_7f

    if-ne v7, v2, :cond_8e

    const/4 v7, 0x0

    :try_start_a5
    aget-object v7, v6, v7

    const/4 v8, -0x1

    invoke-static {p0, v7, v8}, Lcom/luajava/LuaJavaAPI;->compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;
    :try_end_ab
    .catch Lcom/luajava/LuaException; {:try_start_a5 .. :try_end_ab} :catch_b8
    .catchall {:try_start_a5 .. :try_end_ab} :catchall_7f

    move-result-object v0

    const/4 v1, 0x1

    :try_start_ad
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {v5, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b6} :catch_c5
    .catchall {:try_start_ad .. :try_end_b6} :catchall_7f

    move v0, v2

    :goto_b7
    return v0

    :catch_b8
    move-exception v5

    const/4 v5, 0x0

    :try_start_ba
    aget-object v5, v6, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8e

    :catch_c5
    move-exception v0

    new-instance v1, Lcom/luajava/LuaException;

    invoke-direct {v1, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_cc
    .catchall {:try_start_ba .. :try_end_cc} :catchall_7f

    :cond_cc
    monitor-exit p0

    move v0, v1

    goto :goto_b7
.end method

.method public static javaSetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_4
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_15

    check-cast p1, Ljava/util/Map;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    move v1, v2

    :goto_14
    return v1

    :cond_15
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_5a

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    move-object v3, v1

    :goto_1e
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/luajava/LuaJavaAPI;->methodsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    if-nez v1, :cond_35

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v3, Lcom/luajava/LuaJavaAPI;->methodsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_61

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/luajava/LuaState;->type(I)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_61

    invoke-static {p0, p1, p2, v1, v2}, Lcom/luajava/LuaJavaAPI;->javaSetListener(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/reflect/Method;Z)I

    move-result v1

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_4 .. :try_end_56} :catchall_57

    goto :goto_14

    :catchall_57
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_5a
    :try_start_5a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object v3, v1

    move v2, v4

    goto :goto_1e

    :cond_61
    invoke-static {p0, p1, p2, v1, v2}, Lcom/luajava/LuaJavaAPI;->javaSetMethod(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/reflect/Method;Z)I

    move-result v1

    monitor-exit p0
    :try_end_66
    .catchall {:try_start_5a .. :try_end_66} :catchall_57

    goto :goto_14
.end method

.method public static javaToString(JLjava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    if-nez p2, :cond_f

    :try_start_7
    const-string v0, "null"

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    :goto_c
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :cond_f
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    goto :goto_c

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static newArray(JLjava/lang/Class;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Class",
            "<*>;)I^",
            "Lcom/luajava/LuaException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-virtual {v1}, Lcom/luajava/LuaState;->getTop()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    new-array v3, v0, [I

    const/4 v0, 0x0

    :goto_e
    add-int/lit8 v4, v2, -0x1

    if-lt v0, v4, :cond_1c

    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_28
    .catchall {:try_start_5 .. :try_end_19} :catchall_46

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_46

    const/4 v0, 0x1

    return v0

    :cond_1c
    add-int/lit8 v4, v0, 0x2

    :try_start_1e
    invoke-virtual {v1, v4}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v4

    long-to-int v4, v4

    aput v4, v3, v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_28
    .catchall {:try_start_1e .. :try_end_25} :catchall_46

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :catch_28
    move-exception v0

    :try_start_29
    new-instance v2, Lcom/luajava/LuaException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "can not create a array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_46
    .catchall {:try_start_29 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static newArray(JLjava/lang/Class;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Class",
            "<*>;I)I^",
            "Lcom/luajava/LuaException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-static {p2, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_f
    .catchall {:try_start_5 .. :try_end_c} :catchall_2d

    :try_start_c
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catch_f
    move-exception v0

    new-instance v2, Lcom/luajava/LuaException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "can not create a array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static objectCall(JLjava/lang/Object;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    instance-of v0, p2, Lcom/luajava/LuaMetaTable;

    if-eqz v0, :cond_2b

    invoke-virtual {v1}, Lcom/luajava/LuaState;->getTop()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x2

    :goto_12
    if-le v0, v2, :cond_20

    check-cast p2, Lcom/luajava/LuaMetaTable;

    invoke-interface {p2, v3}, Lcom/luajava/LuaMetaTable;->__call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    const/4 v0, 0x1

    monitor-exit v1

    :goto_1f
    return v0

    :cond_20
    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2b
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2e

    goto :goto_1f

    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static objectIndex(JLjava/lang/Object;Ljava/lang/String;I)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v0, 0x6

    const/4 v2, 0x4

    const/4 v1, 0x3

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v4

    monitor-enter v4

    if-nez p4, :cond_13

    :try_start_a
    invoke-static {v4, p2, p3}, Lcom/luajava/LuaJavaAPI;->checkMethod(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_13

    const/4 v0, 0x2

    monitor-exit v4

    :goto_12
    return v0

    :cond_13
    if-eqz p4, :cond_1b

    const/4 v3, 0x1

    if-eq p4, v3, :cond_1b

    const/4 v3, 0x5

    if-ne p4, v3, :cond_24

    :cond_1b
    invoke-static {v4, p2, p3}, Lcom/luajava/LuaJavaAPI;->checkField(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_24

    monitor-exit v4

    move v0, v3

    goto :goto_12

    :cond_24
    if-eqz p4, :cond_28

    if-ne p4, v2, :cond_31

    :cond_28
    invoke-static {v4, p2, p3}, Lcom/luajava/LuaJavaAPI;->javaGetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_31

    monitor-exit v4

    move v0, v2

    goto :goto_12

    :cond_31
    if-eqz p4, :cond_35

    if-ne p4, v1, :cond_3e

    :cond_35
    invoke-static {v4, p2, p3}, Lcom/luajava/LuaJavaAPI;->checkClass(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3e

    monitor-exit v4

    move v0, v1

    goto :goto_12

    :cond_3e
    if-eqz p4, :cond_42

    if-ne p4, v0, :cond_54

    :cond_42
    instance-of v1, p2, Lcom/luajava/LuaMetaTable;

    if-eqz v1, :cond_54

    check-cast p2, Lcom/luajava/LuaMetaTable;

    invoke-interface {p2, p3}, Lcom/luajava/LuaMetaTable;->__index(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/luajava/LuaState;->pushObjectValue(Ljava/lang/Object;)V

    monitor-exit v4
    :try_end_50
    .catchall {:try_start_a .. :try_end_50} :catchall_51

    goto :goto_12

    :catchall_51
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_54
    const/4 v0, 0x0

    :try_start_55
    monitor-exit v4
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_51

    goto :goto_12
.end method

.method public static objectNewIndex(JLjava/lang/Object;Ljava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_6
    invoke-static {v1, p2, p3}, Lcom/luajava/LuaJavaAPI;->setFieldValue(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    monitor-exit v1

    :goto_d
    return v0

    :cond_e
    invoke-static {v1, p2, p3}, Lcom/luajava/LuaJavaAPI;->javaSetter(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_19

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    goto :goto_d

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_19
    const/4 v0, 0x0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_16

    goto :goto_d
.end method

.method public static setArrayValue(JLjava/lang/Object;I)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/luajava/LuaStateFactory;->getExistingState(J)Lcom/luajava/LuaState;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_67

    move-result-object v0

    const/4 v2, 0x3

    :try_start_18
    invoke-static {v1, v0, v2}, Lcom/luajava/LuaJavaAPI;->compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, p3, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_1f
    .catch Lcom/luajava/LuaException; {:try_start_18 .. :try_end_1f} :catch_22
    .catchall {:try_start_18 .. :try_end_1f} :catchall_67

    :goto_1f
    :try_start_1f
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :catch_22
    move-exception v2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v1, v2, v3, v0}, Lcom/luajava/LuaJavaAPI;->argError(Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;
    :try_end_66
    .catchall {:try_start_1f .. :try_end_66} :catchall_67

    goto :goto_1f

    :catchall_67
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_6a
    :try_start_6a
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_79

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_79
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_8d

    check-cast p2, Ljava/util/Map;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_8d
    new-instance v0, Lcom/luajava/LuaException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "can not set "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lcom/luajava/LuaState;->toJavaObject(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_fb
    .catchall {:try_start_6a .. :try_end_fb} :catchall_67
.end method

.method public static setFieldValue(Lcom/luajava/LuaState;Ljava/lang/Object;Ljava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_4
    check-cast v1, Ljava/lang/reflect/Field;

    if-nez p1, :cond_b

    monitor-exit p0

    move v1, v2

    :goto_a
    return v1

    :cond_b
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_1d

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_59

    move v4, v3

    :goto_14
    :try_start_14
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_17
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14 .. :try_end_17} :catch_23
    .catchall {:try_start_14 .. :try_end_17} :catchall_59

    move-result-object v1

    if-nez v1, :cond_27

    :try_start_1a
    monitor-exit p0

    move v1, v2

    goto :goto_a

    :cond_1d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move v4, v2

    goto :goto_14

    :catch_23
    move-exception v1

    monitor-exit p0

    move v1, v2

    goto :goto_a

    :cond_27
    if-eqz v4, :cond_36

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_36

    monitor-exit p0

    move v1, v2

    goto :goto_a

    :cond_36
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    :try_end_39
    .catchall {:try_start_1a .. :try_end_39} :catchall_59

    move-result-object v2

    :try_start_3a
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_48

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_48
    const/4 v4, 0x3

    invoke-static {p0, v2, v4}, Lcom/luajava/LuaJavaAPI;->compareTypes(Lcom/luajava/LuaState;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_50
    .catch Lcom/luajava/LuaException; {:try_start_3a .. :try_end_50} :catch_53
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_50} :catch_5c
    .catchall {:try_start_3a .. :try_end_50} :catchall_59

    :goto_50
    :try_start_50
    monitor-exit p0

    move v1, v3

    goto :goto_a

    :catch_53
    move-exception v1

    const/4 v1, 0x3

    invoke-static {p0, p2, v1, v2}, Lcom/luajava/LuaJavaAPI;->argError(Lcom/luajava/LuaState;Ljava/lang/String;ILjava/lang/Class;)Ljava/lang/String;
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_59

    goto :goto_50

    :catchall_59
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_5c
    move-exception v1

    :try_start_5d
    new-instance v2, Lcom/luajava/LuaException;

    invoke-direct {v2, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_59
.end method

.method private static toPrimitive(Lcom/luajava/LuaState;Ljava/lang/Class;I)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_2c

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->type(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2c

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_27

    new-instance v0, Ljava/lang/Character;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    :cond_23
    :goto_23
    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    return v4

    :cond_27
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_23

    :cond_2c
    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->isNumber(I)Z

    move-result v1

    if-nez v1, :cond_4f

    new-instance v0, Lcom/luajava/LuaException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is not number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_5d

    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_23

    :cond_5d
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_6c

    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_23

    :cond_6c
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_7a

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_23

    :cond_7a
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_89

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_23

    :cond_89
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_99

    new-instance v0, Ljava/lang/Short;

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v2

    long-to-int v1, v2

    int-to-short v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    goto :goto_23

    :cond_99
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_aa

    new-instance v0, Ljava/lang/Character;

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v2

    long-to-int v1, v2

    int-to-char v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    goto/16 :goto_23

    :cond_aa
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_bb

    new-instance v0, Ljava/lang/Byte;

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v2

    long-to-int v1, v2

    int-to-byte v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    goto/16 :goto_23

    :cond_bb
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_23

    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/luajava/LuaState;->toBoolean(I)Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto/16 :goto_23
.end method

.method private static typeName(Lcom/luajava/LuaState;I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isObject(I)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getObjectFromUserdata(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->type(I)I

    move-result v0

    packed-switch v0, :pswitch_data_32

    const-string v0, "unkown"

    goto :goto_12

    :pswitch_1d  #0x4
    const-string v0, "string"

    goto :goto_12

    :pswitch_20  #0x3
    const-string v0, "number"

    goto :goto_12

    :pswitch_23  #0x1
    const-string v0, "boolean"

    goto :goto_12

    :pswitch_26  #0x6
    const-string v0, "function"

    goto :goto_12

    :pswitch_29  #0x5
    const-string v0, "table"

    goto :goto_12

    :pswitch_2c  #0x8
    const-string v0, "thread"

    goto :goto_12

    :pswitch_2f  #0x2, 0x7
    const-string v0, "userdata"

    goto :goto_12

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_23  #00000001
        :pswitch_2f  #00000002
        :pswitch_20  #00000003
        :pswitch_1d  #00000004
        :pswitch_29  #00000005
        :pswitch_26  #00000006
        :pswitch_2f  #00000007
        :pswitch_2c  #00000008
    .end packed-switch
.end method
