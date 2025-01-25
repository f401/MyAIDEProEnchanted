.class public Lcom/luajava/LuaState;
.super Ljava/lang/Object;


# static fields
.field private static Byte_class:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static Double_class:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static Float_class:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static Integer_class:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final LUAI_MAXSTACK:I = 0xf4240

.field private static final LUAJAVA_LIB:Ljava/lang/String; = "luajava"

.field public static final LUA_ERRERR:I = 0x6

.field public static final LUA_ERRGCMM:I = 0x5

.field public static final LUA_ERRMEM:I = 0x4

.field public static final LUA_ERRRUN:I = 0x2

.field public static final LUA_ERRSYNTAX:I = 0x3

.field public static final LUA_GCCOLLECT:I = 0x2

.field public static final LUA_GCCOUNT:I = 0x3

.field public static final LUA_GCCOUNTB:I = 0x4

.field public static final LUA_GCRESTART:I = 0x1

.field public static final LUA_GCSETPAUSE:I = 0x6

.field public static final LUA_GCSETSTEPMUL:I = 0x7

.field public static final LUA_GCSTEP:I = 0x5

.field public static final LUA_GCSTOP:I = 0x0

.field public static final LUA_MULTRET:I = -0x1

.field public static final LUA_OPEQ:I = 0x0

.field public static final LUA_OPLE:I = 0x2

.field public static final LUA_OPLT:I = 0x1

.field public static final LUA_REGISTRYINDEX:I = -0xf4628

.field public static final LUA_RIDX_GLOBALS:I = 0x2

.field public static final LUA_RIDX_LAST:I = 0x2

.field public static final LUA_RIDX_MAINTHREAD:I = 0x1

.field public static final LUA_TBOOLEAN:I = 0x1

.field public static final LUA_TFUNCTION:I = 0x6

.field public static final LUA_TLIGHTUSERDATA:I = 0x2

.field public static final LUA_TNIL:I = 0x0

.field public static final LUA_TNONE:I = -0x1

.field public static final LUA_TNUMBER:I = 0x3

.field public static final LUA_TSTRING:I = 0x4

.field public static final LUA_TTABLE:I = 0x5

.field public static final LUA_TTHREAD:I = 0x8

.field public static final LUA_TUSERDATA:I = 0x7

.field public static final LUA_YIELD:I = 0x1

.field private static Long_class:Ljava/lang/Class;
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

.field private static Short_class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private luaState:J

.field private mContext:Landroid/content/Context;


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    :try_start_0
    const-string v0, "java.lang.Number"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_3e

    move-result-object v0

    sput-object v0, Lcom/luajava/LuaState;->Number_class:Ljava/lang/Class;

    :try_start_8
    const-string v0, "java.lang.Byte"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_d} :catch_49

    move-result-object v0

    sput-object v0, Lcom/luajava/LuaState;->Byte_class:Ljava/lang/Class;

    :try_start_10
    const-string v0, "java.lang.Short"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_15} :catch_54

    move-result-object v0

    sput-object v0, Lcom/luajava/LuaState;->Short_class:Ljava/lang/Class;

    :try_start_18
    const-string v0, "java.lang.Integer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_1d} :catch_5f

    move-result-object v0

    sput-object v0, Lcom/luajava/LuaState;->Integer_class:Ljava/lang/Class;

    :try_start_20
    const-string v0, "java.lang.Long"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_25} :catch_6a

    move-result-object v0

    sput-object v0, Lcom/luajava/LuaState;->Long_class:Ljava/lang/Class;

    :try_start_28
    const-string v0, "java.lang.Float"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28 .. :try_end_2d} :catch_75

    move-result-object v0

    sput-object v0, Lcom/luajava/LuaState;->Float_class:Ljava/lang/Class;

    :try_start_30
    const-string v0, "java.lang.Double"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_35} :catch_80

    move-result-object v0

    sput-object v0, Lcom/luajava/LuaState;->Double_class:Ljava/lang/Class;

    const-string v0, "luajava"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    :catch_3e
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_49
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_54
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_5f
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_6a
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_75
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_80
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/luajava/LuaState;->_newstate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    return-void
.end method

.method protected constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-static {p0}, Lcom/luajava/LuaStateFactory;->insertLuaState(Lcom/luajava/LuaState;)J

    return-void
.end method

.method private synchronized native declared-synchronized _LargError(JILjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LcallMeta(JILjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LcheckAny(JI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _LcheckInteger(JI)I
.end method

.method private synchronized native declared-synchronized _LcheckNumber(JI)D
.end method

.method private synchronized native declared-synchronized _LcheckStack(JILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _LcheckString(JI)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized _LcheckType(JII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _LdoFile(JLjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LdoString(JLjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LgetMetaField(JILjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LgetMetatable(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _Lgsub(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized _LloadBuffer(J[BJLjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LloadFile(JLjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LloadString(JLjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LnewMetatable(JLjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _LoptInteger(JII)I
.end method

.method private synchronized native declared-synchronized _LoptNumber(JID)D
.end method

.method private synchronized native declared-synchronized _LoptString(JILjava/lang/String;)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized _Lref(JI)I
.end method

.method private synchronized native declared-synchronized _LunRef(JII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _Lwhere(JI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _call(JII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _checkStack(JI)I
.end method

.method private synchronized native declared-synchronized _close(J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _compare(JIII)I
.end method

.method private synchronized native declared-synchronized _concat(JI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _copy(JII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _createTable(JII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _dump(JI)[B
.end method

.method private synchronized native declared-synchronized _equal(JII)I
.end method

.method private synchronized native declared-synchronized _error(J)I
.end method

.method private synchronized native declared-synchronized _gc(JII)I
.end method

.method private synchronized native declared-synchronized _getField(JILjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _getGlobal(JLjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized _getI(JIJ)I
.end method

.method private synchronized native declared-synchronized _getMetaTable(JI)I
.end method

.method private synchronized native declared-synchronized _getObjectFromUserdata(JI)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _getTable(JI)I
.end method

.method private synchronized native declared-synchronized _getTop(J)I
.end method

.method private synchronized native declared-synchronized _getUpValue(JII)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized _getUserValue(JI)I
.end method

.method private synchronized native declared-synchronized _insert(JI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _isBoolean(JI)I
.end method

.method private synchronized native declared-synchronized _isCFunction(JI)I
.end method

.method private synchronized native declared-synchronized _isFunction(JI)I
.end method

.method private synchronized native declared-synchronized _isInteger(JI)I
.end method

.method private synchronized native declared-synchronized _isJavaFunction(JI)Z
.end method

.method private synchronized native declared-synchronized _isNil(JI)I
.end method

.method private synchronized native declared-synchronized _isNone(JI)I
.end method

.method private synchronized native declared-synchronized _isNoneOrNil(JI)I
.end method

.method private synchronized native declared-synchronized _isNumber(JI)I
.end method

.method private synchronized native declared-synchronized _isObject(JI)Z
.end method

.method private synchronized native declared-synchronized _isString(JI)I
.end method

.method private synchronized native declared-synchronized _isTable(JI)I
.end method

.method private synchronized native declared-synchronized _isThread(JI)I
.end method

.method private synchronized native declared-synchronized _isUserdata(JI)I
.end method

.method private synchronized native declared-synchronized _isYieldable(J)I
.end method

.method private synchronized native declared-synchronized _lessThan(JII)I
.end method

.method private synchronized native declared-synchronized _newTable(J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _newstate()J
.end method

.method private synchronized native declared-synchronized _newthread(J)J
.end method

.method private synchronized native declared-synchronized _next(JI)I
.end method

.method private synchronized native declared-synchronized _objlen(JI)I
.end method

.method private synchronized native declared-synchronized _openBase(J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _openDebug(J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _openIo(J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _openLibs(J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _openLuajava(J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _openMath(J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _openOs(J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _openPackage(J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _openString(J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _openTable(J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _pcall(JIII)I
.end method

.method private synchronized native declared-synchronized _pop(JI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _pushBoolean(JI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _pushGlobalTable(J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _pushInteger(JJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _pushJavaFunction(JLcom/luajava/JavaFunction;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/luajava/JavaFunction;",
            ")V^",
            "Lcom/luajava/LuaException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _pushJavaObject(JLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _pushNil(J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _pushNumber(JD)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JD)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _pushString(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _pushString(J[BI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[BI)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _pushValue(JI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _rawGet(JI)I
.end method

.method private synchronized native declared-synchronized _rawGetI(JIJ)I
.end method

.method private synchronized native declared-synchronized _rawSet(JI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _rawSetI(JIJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _rawequal(JII)I
.end method

.method private synchronized native declared-synchronized _rawlen(JI)I
.end method

.method private synchronized native declared-synchronized _remove(JI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _replace(JI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _resume(JJI)I
.end method

.method private synchronized native declared-synchronized _rotate(JII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _setField(JILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _setGlobal(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _setI(JIJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _setMetaTable(JI)I
.end method

.method private synchronized native declared-synchronized _setTable(JI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _setTop(JI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _setUpValue(JII)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized _setUserValue(JI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _status(J)I
.end method

.method private synchronized native declared-synchronized _strlen(JI)I
.end method

.method private synchronized native declared-synchronized _toBoolean(JI)I
.end method

.method private synchronized native declared-synchronized _toInteger(JI)J
.end method

.method private synchronized native declared-synchronized _toNumber(JI)D
.end method

.method private synchronized native declared-synchronized _toString(JI)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized _toThread(JI)J
.end method

.method private synchronized native declared-synchronized _type(JI)I
.end method

.method private synchronized native declared-synchronized _typeName(JI)Ljava/lang/String;
.end method

.method private synchronized native declared-synchronized _xmove(JJI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)V"
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized _yield(JI)I
.end method

.method public static convertLuaNumber(Ljava/lang/Double;Ljava/lang/Class;)Ljava/lang/Number;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Double;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_60

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_15

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object p0, v0

    :cond_14
    :goto_14
    return-object p0

    :cond_15
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_24

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object p0, v0

    goto :goto_14

    :cond_24
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_33

    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    move-object p0, v0

    goto :goto_14

    :cond_33
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_42

    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    move-object p0, v0

    goto :goto_14

    :cond_42
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_51

    new-instance v0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Double;->byteValue()B

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    move-object p0, v0

    goto :goto_14

    :cond_51
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_d2

    new-instance v0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Double;->shortValue()S

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    move-object p0, v0

    goto :goto_14

    :cond_60
    sget-object v0, Lcom/luajava/LuaState;->Number_class:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d2

    sget-object v0, Lcom/luajava/LuaState;->Integer_class:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7b

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object p0, v0

    goto :goto_14

    :cond_7b
    sget-object v0, Lcom/luajava/LuaState;->Long_class:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8e

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object p0, v0

    goto :goto_14

    :cond_8e
    sget-object v0, Lcom/luajava/LuaState;->Float_class:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a2

    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    move-object p0, v0

    goto/16 :goto_14

    :cond_a2
    sget-object v0, Lcom/luajava/LuaState;->Double_class:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/luajava/LuaState;->Byte_class:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_be

    new-instance v0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Double;->byteValue()B

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    move-object p0, v0

    goto/16 :goto_14

    :cond_be
    sget-object v0, Lcom/luajava/LuaState;->Short_class:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d2

    new-instance v0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Double;->shortValue()S

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    move-object p0, v0

    goto/16 :goto_14

    :cond_d2
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Number;

    move-object p0, v0

    goto/16 :goto_14
.end method

.method public static convertLuaNumber(Ljava/lang/Long;Ljava/lang/Class;)Ljava/lang/Number;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Number;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_60

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_15

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object p0, v0

    :cond_14
    :goto_14
    return-object p0

    :cond_15
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_24

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object p0, v0

    goto :goto_14

    :cond_24
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_33

    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Long;->floatValue()F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    move-object p0, v0

    goto :goto_14

    :cond_33
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_42

    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    move-object p0, v0

    goto :goto_14

    :cond_42
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_51

    new-instance v0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Long;->byteValue()B

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    move-object p0, v0

    goto :goto_14

    :cond_51
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_d2

    new-instance v0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Long;->shortValue()S

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    move-object p0, v0

    goto :goto_14

    :cond_60
    sget-object v0, Lcom/luajava/LuaState;->Number_class:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d2

    sget-object v0, Lcom/luajava/LuaState;->Integer_class:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7b

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object p0, v0

    goto :goto_14

    :cond_7b
    sget-object v0, Lcom/luajava/LuaState;->Long_class:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8e

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object p0, v0

    goto :goto_14

    :cond_8e
    sget-object v0, Lcom/luajava/LuaState;->Float_class:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a2

    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Long;->floatValue()F

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    move-object p0, v0

    goto/16 :goto_14

    :cond_a2
    sget-object v0, Lcom/luajava/LuaState;->Double_class:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/luajava/LuaState;->Byte_class:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_be

    new-instance v0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Long;->byteValue()B

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    move-object p0, v0

    goto/16 :goto_14

    :cond_be
    sget-object v0, Lcom/luajava/LuaState;->Short_class:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d2

    new-instance v0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Long;->shortValue()S

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    move-object p0, v0

    goto/16 :goto_14

    :cond_d2
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Number;

    move-object p0, v0

    goto/16 :goto_14
.end method


# virtual methods
.method public LargError(ILjava/lang/String;)I
    .registers 5

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LargError(JILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LcallMeta(ILjava/lang/String;)I
    .registers 5

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LcallMeta(JILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LcheckAny(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LcheckAny(JI)V

    return-void
.end method

.method public LcheckInteger(I)I
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LcheckInteger(JI)I

    move-result v0

    return v0
.end method

.method public LcheckNumber(I)D
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LcheckNumber(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public LcheckStack(ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LcheckStack(JILjava/lang/String;)V

    return-void
.end method

.method public LcheckString(I)Ljava/lang/String;
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LcheckString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LcheckType(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LcheckType(JII)V

    return-void
.end method

.method public LdoFile(Ljava/lang/String;)I
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LdoFile(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LdoString(Ljava/lang/String;)I
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LdoString(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LgetMetaField(ILjava/lang/String;)I
    .registers 5

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LgetMetaField(JILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LgetMetatable(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LgetMetatable(JLjava/lang/String;)V

    return-void
.end method

.method public Lgsub(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    iget-wide v2, p0, Lcom/luajava/LuaState;->luaState:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/luajava/LuaState;->_Lgsub(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LloadBuffer([BLjava/lang/String;)I
    .registers 10

    iget-wide v1, p0, Lcom/luajava/LuaState;->luaState:J

    array-length v0, p1

    int-to-long v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/luajava/LuaState;->_LloadBuffer(J[BJLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LloadFile(Ljava/lang/String;)I
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LloadFile(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LloadString(Ljava/lang/String;)I
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LloadString(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LnewMetatable(Ljava/lang/String;)I
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_LnewMetatable(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LoptInteger(II)I
    .registers 5

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LoptInteger(JII)I

    move-result v0

    return v0
.end method

.method public LoptNumber(ID)D
    .registers 10

    iget-wide v1, p0, Lcom/luajava/LuaState;->luaState:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_LoptNumber(JID)D

    move-result-wide v0

    return-wide v0
.end method

.method public LoptString(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LoptString(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Lref(I)I
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_Lref(JI)I

    move-result v0

    return v0
.end method

.method public LunRef(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_LunRef(JII)V

    return-void
.end method

.method public Lwhere(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_Lwhere(JI)V

    return-void
.end method

.method public call(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_call(JII)V

    return-void
.end method

.method public checkStack(I)I
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_checkStack(JI)I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-static {v0, v1}, Lcom/luajava/LuaStateFactory;->removeLuaState(J)V

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_close(J)V

    const/4 v0, 0x0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/luajava/LuaState;->luaState:J
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public compare(III)I
    .registers 11

    iget-wide v2, p0, Lcom/luajava/LuaState;->luaState:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/luajava/LuaState;->_compare(JIII)I

    move-result v0

    return v0
.end method

.method public concat(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_concat(JI)V

    return-void
.end method

.method public copy(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_copy(JII)V

    return-void
.end method

.method public createTable(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_createTable(JII)V

    return-void
.end method

.method public dump(I)[B
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_dump(JI)[B

    move-result-object v0

    return-object v0
.end method

.method public equal(II)I
    .registers 5

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_equal(JII)I

    move-result v0

    return v0
.end method

.method public error()I
    .registers 3

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_error(J)I

    move-result v0

    return v0
.end method

.method public gc(II)I
    .registers 5

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_gc(JII)I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/luajava/LuaState;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getField(ILjava/lang/String;)I
    .registers 5

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_getField(JILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGlobal(Ljava/lang/String;)I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_getGlobal(JLjava/lang/String;)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getI(IJ)I
    .registers 10

    iget-wide v1, p0, Lcom/luajava/LuaState;->luaState:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_getI(JIJ)I

    move-result v0

    return v0
.end method

.method public getLuaObject(I)Lcom/luajava/LuaObject;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isFunction(I)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/luajava/LuaFunction;

    invoke-direct {v0, p0, p1}, Lcom/luajava/LuaFunction;-><init>(Lcom/luajava/LuaState;I)V

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isTable(I)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/luajava/LuaTable;

    invoke-direct {v0, p0, p1}, Lcom/luajava/LuaTable;-><init>(Lcom/luajava/LuaState;I)V

    goto :goto_b

    :cond_18
    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p0, p1}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaState;I)V

    goto :goto_b
.end method

.method public getLuaObject(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)Lcom/luajava/LuaObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getPointer()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/luajava/LuaState;->luaState:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luajava/LuaState;->getPointer()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/luajava/LuaState;->getPointer()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2a

    :cond_22
    new-instance v0, Lcom/luajava/LuaException;

    const-string v1, "Object must have the same LuaState as the parent!"

    invoke-direct {v0, v1}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaObject;Lcom/luajava/LuaObject;)V

    return-object v0
.end method

.method public getLuaObject(Lcom/luajava/LuaObject;Ljava/lang/Number;)Lcom/luajava/LuaObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaObject;Ljava/lang/Number;)V

    return-object v0
.end method

.method public getLuaObject(Lcom/luajava/LuaObject;Ljava/lang/String;)Lcom/luajava/LuaObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    new-instance v0, Lcom/luajava/LuaObject;

    invoke-direct {v0, p1, p2}, Lcom/luajava/LuaObject;-><init>(Lcom/luajava/LuaObject;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLuaObject(Ljava/lang/String;)Lcom/luajava/LuaObject;
    .registers 4

    invoke-virtual {p0}, Lcom/luajava/LuaState;->pushGlobalTable()V

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->rawGet(I)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/luajava/LuaState;->pop(I)V

    return-object v0
.end method

.method public getMetaTable(I)I
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_getMetaTable(JI)I

    move-result v0

    return v0
.end method

.method public getObjectFromUserdata(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_getObjectFromUserdata(JI)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPointer()J
    .registers 3

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    return-wide v0
.end method

.method public getTable(I)I
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_getTable(JI)I

    move-result v0

    return v0
.end method

.method public getTop()I
    .registers 3

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_getTop(J)I

    move-result v0

    return v0
.end method

.method public getUpValue(II)Ljava/lang/String;
    .registers 5

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_getUpValue(JII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserValue(I)I
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_getUserValue(JI)I

    move-result v0

    return v0
.end method

.method public insert(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_insert(JI)V

    return-void
.end method

.method public isBoolean(I)Z
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isBoolean(JI)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isCFunction(I)Z
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isCFunction(JI)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isClosed()Z
    .registers 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-wide v2, p0, Lcom/luajava/LuaState;->luaState:J
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_d

    int-to-long v4, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFunction(I)Z
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isFunction(JI)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isInteger(I)Z
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isInteger(JI)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isJavaFunction(I)Z
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isJavaFunction(JI)Z

    move-result v0

    return v0
.end method

.method public isNil(I)Z
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isNil(JI)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isNone(I)Z
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isNone(JI)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isNoneOrNil(I)Z
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isNoneOrNil(JI)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isNumber(I)Z
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isNumber(JI)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isObject(I)Z
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isObject(JI)Z

    move-result v0

    return v0
.end method

.method public isString(I)Z
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isString(JI)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isTable(I)Z
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isTable(JI)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isThread(I)Z
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isThread(JI)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isUserdata(I)Z
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_isUserdata(JI)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isYieldable()I
    .registers 3

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_isYieldable(J)I

    move-result v0

    return v0
.end method

.method public lessThan(II)I
    .registers 5

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_lessThan(JII)I

    move-result v0

    return v0
.end method

.method public newTable()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_newTable(J)V

    return-void
.end method

.method public newThread()Lcom/luajava/LuaState;
    .registers 5

    new-instance v0, Lcom/luajava/LuaState;

    iget-wide v2, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v2, v3}, Lcom/luajava/LuaState;->_newthread(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/luajava/LuaState;-><init>(J)V

    invoke-static {v0}, Lcom/luajava/LuaStateFactory;->insertLuaState(Lcom/luajava/LuaState;)J

    return-object v0
.end method

.method public next(I)I
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_next(JI)I

    move-result v0

    return v0
.end method

.method public objLen(I)I
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_objlen(JI)I

    move-result v0

    return v0
.end method

.method public openBase()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openBase(J)V

    return-void
.end method

.method public openDebug()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openDebug(J)V

    return-void
.end method

.method public openIo()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openIo(J)V

    return-void
.end method

.method public openLibs()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openLibs(J)V

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openLuajava(J)V

    invoke-virtual {p0}, Lcom/luajava/LuaState;->pushPrimitive()V

    return-void
.end method

.method public openLuajava()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openLuajava(J)V

    invoke-virtual {p0}, Lcom/luajava/LuaState;->pushPrimitive()V

    return-void
.end method

.method public openMath()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openMath(J)V

    return-void
.end method

.method public openOs()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openOs(J)V

    return-void
.end method

.method public openPackage()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openPackage(J)V

    return-void
.end method

.method public openString()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openString(J)V

    return-void
.end method

.method public openTable()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_openTable(J)V

    return-void
.end method

.method public pcall(III)I
    .registers 11

    iget-wide v2, p0, Lcom/luajava/LuaState;->luaState:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/luajava/LuaState;->_pcall(JIII)I

    move-result v0

    return v0
.end method

.method public pop(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pop(JI)V

    return-void
.end method

.method public pushBoolean(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    iget-wide v2, p0, Lcom/luajava/LuaState;->luaState:J

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-direct {p0, v2, v3, v0}, Lcom/luajava/LuaState;->_pushBoolean(JI)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public pushContext(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/luajava/LuaState;->mContext:Landroid/content/Context;

    return-void
.end method

.method public pushGlobalTable()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_pushGlobalTable(J)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pushInteger(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_pushInteger(JJ)V

    return-void
.end method

.method public pushJavaFunction(Lcom/luajava/JavaFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/JavaFunction;",
            ")V^",
            "Lcom/luajava/LuaException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pushJavaFunction(JLcom/luajava/JavaFunction;)V

    return-void
.end method

.method public pushJavaObject(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pushJavaObject(JLjava/lang/Object;)V

    return-void
.end method

.method public pushNil()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_pushNil(J)V

    return-void
.end method

.method public pushNumber(D)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_pushNumber(JD)V

    return-void
.end method

.method public pushObjectValue(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V^",
            "Lcom/luajava/LuaException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/luajava/LuaState;->pushNil()V

    :goto_5
    return-void

    :cond_6
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_14

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushBoolean(Z)V

    goto :goto_5

    :cond_14
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_22

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/luajava/LuaState;->pushInteger(J)V

    goto :goto_5

    :cond_22
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_31

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/luajava/LuaState;->pushInteger(J)V

    goto :goto_5

    :cond_31
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_40

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/luajava/LuaState;->pushInteger(J)V

    goto :goto_5

    :cond_40
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_4f

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/luajava/LuaState;->pushInteger(J)V

    goto :goto_5

    :cond_4f
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_5e

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/luajava/LuaState;->pushInteger(J)V

    goto :goto_5

    :cond_5e
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6d

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/luajava/LuaState;->pushNumber(D)V

    goto :goto_5

    :cond_6d
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7b

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/luajava/LuaState;->pushNumber(D)V

    goto :goto_5

    :cond_7b
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_85

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushString(Ljava/lang/String;)V

    goto :goto_5

    :cond_85
    instance-of v0, p1, Lcom/luajava/JavaFunction;

    if-eqz v0, :cond_90

    check-cast p1, Lcom/luajava/JavaFunction;

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushJavaFunction(Lcom/luajava/JavaFunction;)V

    goto/16 :goto_5

    :cond_90
    instance-of v0, p1, Lcom/luajava/LuaObject;

    if-eqz v0, :cond_a6

    check-cast p1, Lcom/luajava/LuaObject;

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->getLuaState()Lcom/luajava/LuaState;

    move-result-object v0

    if-ne v0, p0, :cond_a1

    invoke-virtual {p1}, Lcom/luajava/LuaObject;->push()V

    goto/16 :goto_5

    :cond_a1
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_a6
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    goto/16 :goto_5
.end method

.method public pushPrimitive()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "byte"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "char"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "short"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "int"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "long"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "float"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->pushJavaObject(Ljava/lang/Object;)V

    const-string v0, "double"

    invoke-virtual {p0, v0}, Lcom/luajava/LuaState;->setGlobal(Ljava/lang/String;)V

    return-void
.end method

.method public pushString(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_8

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_pushNil(J)V

    :goto_7
    return-void

    :cond_8
    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pushString(JLjava/lang/String;)V

    goto :goto_7
.end method

.method public pushString([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)V"
        }
    .end annotation

    if-nez p1, :cond_8

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_pushNil(J)V

    :goto_7
    return-void

    :cond_8
    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    array-length v2, p1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/luajava/LuaState;->_pushString(J[BI)V

    goto :goto_7
.end method

.method public pushValue(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_pushValue(JI)V

    return-void
.end method

.method public rawGet(I)I
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_rawGet(JI)I

    move-result v0

    return v0
.end method

.method public rawGetI(IJ)I
    .registers 10

    iget-wide v1, p0, Lcom/luajava/LuaState;->luaState:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_rawGetI(JIJ)I

    move-result v0

    return v0
.end method

.method public rawLen(I)I
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_rawlen(JI)I

    move-result v0

    return v0
.end method

.method public rawSet(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_rawSet(JI)V

    return-void
.end method

.method public rawSetI(IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)V"
        }
    .end annotation

    iget-wide v1, p0, Lcom/luajava/LuaState;->luaState:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_rawSetI(JIJ)V

    return-void
.end method

.method public rawequal(II)I
    .registers 5

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_rawequal(JII)I

    move-result v0

    return v0
.end method

.method public remove(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_remove(JI)V

    return-void
.end method

.method public replace(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_replace(JI)V

    return-void
.end method

.method public resume(Lcom/luajava/LuaState;I)I
    .registers 10

    iget-wide v2, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-virtual {p1}, Lcom/luajava/LuaState;->getPointer()J

    move-result-wide v4

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/luajava/LuaState;->_resume(JJI)I

    move-result v0

    return v0
.end method

.method public rotate(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_rotate(JII)V

    return-void
.end method

.method public setField(ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_setField(JILjava/lang/String;)V

    return-void
.end method

.method public setGlobal(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_setGlobal(JLjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setI(IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)V"
        }
    .end annotation

    iget-wide v1, p0, Lcom/luajava/LuaState;->luaState:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/luajava/LuaState;->_setI(JIJ)V

    return-void
.end method

.method public setMetaTable(I)I
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_setMetaTable(JI)I

    move-result v0

    return v0
.end method

.method public setTable(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_setTable(JI)V

    return-void
.end method

.method public setTop(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_setTop(JI)V

    return-void
.end method

.method public setUpValue(II)Ljava/lang/String;
    .registers 5

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/luajava/LuaState;->_setUpValue(JII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setUserValue(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_setUserValue(JI)V

    return-void
.end method

.method public status()I
    .registers 3

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1}, Lcom/luajava/LuaState;->_status(J)I

    move-result v0

    return v0
.end method

.method public strLen(I)I
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_strlen(JI)I

    move-result v0

    return v0
.end method

.method public toBoolean(I)Z
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_toBoolean(JI)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public toInteger(I)J
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_toInteger(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public toJavaObject(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/luajava/LuaException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    check-cast v0, Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v0, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->toBoolean(I)Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_4e

    :cond_13
    :goto_13
    monitor-exit p0

    return-object v0

    :cond_15
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->type(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_21

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_21
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isFunction(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    goto :goto_13

    :cond_2c
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isTable(I)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    goto :goto_13

    :cond_37
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->type(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5b

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isInteger(I)Z

    move-result v0

    if-eqz v0, :cond_51

    new-instance v0, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->toInteger(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V
    :try_end_4d
    .catchall {:try_start_15 .. :try_end_4d} :catchall_4e

    goto :goto_13

    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_51
    :try_start_51
    new-instance v0, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->toNumber(I)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    goto :goto_13

    :cond_5b
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isUserdata(I)Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isObject(I)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getObjectFromUserdata(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_13

    :cond_6c
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->getLuaObject(I)Lcom/luajava/LuaObject;

    move-result-object v0

    goto :goto_13

    :cond_71
    invoke-virtual {p0, p1}, Lcom/luajava/LuaState;->isNil(I)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;
    :try_end_7a
    .catchall {:try_start_51 .. :try_end_7a} :catchall_4e

    goto :goto_13
.end method

.method public toNumber(I)D
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_toNumber(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toThread(I)Lcom/luajava/LuaState;
    .registers 6

    new-instance v0, Lcom/luajava/LuaState;

    iget-wide v2, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v2, v3, p1}, Lcom/luajava/LuaState;->_toThread(JI)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/luajava/LuaState;-><init>(J)V

    return-object v0
.end method

.method public type(I)I
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_type(JI)I

    move-result v0

    return v0
.end method

.method public typeName(I)Ljava/lang/String;
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_typeName(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xmove(Lcom/luajava/LuaState;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luajava/LuaState;",
            "I)V"
        }
    .end annotation

    iget-wide v2, p0, Lcom/luajava/LuaState;->luaState:J

    iget-wide v4, p1, Lcom/luajava/LuaState;->luaState:J

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/luajava/LuaState;->_xmove(JJI)V

    return-void
.end method

.method public yield(I)I
    .registers 4

    iget-wide v0, p0, Lcom/luajava/LuaState;->luaState:J

    invoke-direct {p0, v0, v1, p1}, Lcom/luajava/LuaState;->_yield(JI)I

    move-result v0

    return v0
.end method
