.class public final Lcom/s1243808733/android/dx/rop/cst/CstType;
.super Lcom/s1243808733/android/dx/rop/cst/TypedConstant;
.source "CstType.java"


# static fields
.field public static final BOOLEAN:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field public static final BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field public static final BYTE:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field public static final BYTE_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field public static final CHARACTER:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field public static final CHAR_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field public static final DOUBLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field public static final DOUBLE_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field public static final FLOAT:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field public static final FLOAT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field public static final INTEGER:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field public static final INT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field public static final LONG:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field public static final LONG_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field public static final METHOD_HANDLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field public static final OBJECT:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field public static final SHORT:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field public static final SHORT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field public static final VAR_HANDLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field public static final VOID:Lcom/s1243808733/android/dx/rop/cst/CstType;

.field private static final interns:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            "Lcom/s1243808733/android/dx/rop/cst/CstType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private descriptor:Lcom/s1243808733/android/dx/rop/cst/CstString;

.field private final type:Lcom/s1243808733/android/dx/rop/type/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3e8

    const/high16 v2, 0x3f400000  # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->interns:Ljava/util/concurrent/ConcurrentMap;

    .line 37
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->OBJECT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 40
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BOOLEAN:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 43
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BYTE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 46
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->CHARACTER_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->CHARACTER:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 49
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->DOUBLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 52
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->FLOAT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 55
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->LONG_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->LONG:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 58
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INTEGER_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->INTEGER:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 61
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->SHORT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 64
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->VOID_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->VOID:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 67
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 70
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BYTE_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 73
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->CHAR_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->CHAR_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 76
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->DOUBLE_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 79
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->FLOAT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 82
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->LONG_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->LONG_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 85
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 88
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->SHORT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 93
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->METHOD_HANDLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->METHOD_HANDLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 98
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->VAR_HANDLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->VAR_HANDLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 101
    invoke-static {}, Lcom/s1243808733/android/dx/rop/cst/CstType;->initInterns()V

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 3

    .line 184
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;-><init>()V

    if-eqz p1, :cond_17

    .line 189
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-eq p1, v0, :cond_f

    .line 194
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->type:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 195
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->descriptor:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-void

    .line 190
    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "KNOWN_NULL is not representable"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 186
    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static clearInternTable()V
    .registers 1

    .line 295
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->interns:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 296
    invoke-static {}, Lcom/s1243808733/android/dx/rop/cst/CstType;->initInterns()V

    return-void
.end method

.method public static forBoxedPrimitiveType(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;
    .registers 3

    .line 152
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getBasicType()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not primitive: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :pswitch_1b  #0x8
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->SHORT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object p0

    .line 159
    :pswitch_1e  #0x7
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->LONG:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object p0

    .line 158
    :pswitch_21  #0x6
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->INTEGER:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object p0

    .line 157
    :pswitch_24  #0x5
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->FLOAT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object p0

    .line 156
    :pswitch_27  #0x4
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->DOUBLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object p0

    .line 155
    :pswitch_2a  #0x3
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->CHARACTER:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object p0

    .line 154
    :pswitch_2d  #0x2
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BYTE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object p0

    .line 153
    :pswitch_30  #0x1
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BOOLEAN:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object p0

    .line 161
    :pswitch_33  #0x0
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->VOID:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object p0

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_33  #00000000
        :pswitch_30  #00000001
        :pswitch_2d  #00000002
        :pswitch_2a  #00000003
        :pswitch_27  #00000004
        :pswitch_24  #00000005
        :pswitch_21  #00000006
        :pswitch_1e  #00000007
        :pswitch_1b  #00000008
    .end packed-switch
.end method

.method private static initInterns()V
    .registers 1

    .line 105
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->OBJECT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 106
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BOOLEAN:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 107
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BYTE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 108
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->CHARACTER:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 109
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->DOUBLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 110
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->FLOAT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 111
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->LONG:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 112
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->INTEGER:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 113
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->SHORT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 114
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->VOID:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 115
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 116
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BYTE_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 117
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->CHAR_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 118
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->DOUBLE_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 119
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->FLOAT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 120
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->LONG_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 121
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 122
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->SHORT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 123
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->METHOD_HANDLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    return-void
.end method

.method public static intern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;
    .registers 3

    .line 174
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 175
    sget-object v1, Lcom/s1243808733/android/dx/rop/cst/CstType;->interns:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eqz p0, :cond_10

    move-object v0, p0

    :cond_10
    return-object v0
.end method

.method private static internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V
    .registers 3

    .line 127
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->interns:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 128
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempted re-init of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 3

    .line 217
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->type:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 218
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/cst/CstType;->type:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 201
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 205
    :cond_6
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->type:Lcom/s1243808733/android/dx/rop/type/Type;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/cst/CstType;->type:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v0, p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public getClassType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->type:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->descriptor:Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_11

    .line 270
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->type:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->descriptor:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 273
    :cond_11
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->descriptor:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 6

    .line 283
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 284
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 285
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1a

    .line 287
    const-string v0, "default"

    return-object v0

    .line 290
    :cond_1a
    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 231
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->type:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCategory2()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->type:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    .line 237
    const-string v0, "type"

    return-object v0
.end method
