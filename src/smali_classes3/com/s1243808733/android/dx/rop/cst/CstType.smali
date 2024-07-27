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
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
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
.method static final constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3e8

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->interns:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->OBJECT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BOOLEAN:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BYTE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->CHARACTER_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->CHARACTER:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->DOUBLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->FLOAT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->LONG_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->LONG:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INTEGER_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->INTEGER:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->SHORT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->VOID_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->VOID:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BYTE_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->CHAR_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->CHAR_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->DOUBLE_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->FLOAT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->LONG_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->LONG_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->SHORT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->METHOD_HANDLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->METHOD_HANDLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->VAR_HANDLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->VAR_HANDLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 101
    invoke-static {}, Lcom/s1243808733/android/dx/rop/cst/CstType;->initInterns()V

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 4

    .line 184
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;-><init>()V

    .line 185
    if-nez p1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p1, v0, :cond_1

    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "KNOWN_NULL is not representable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->type:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 195
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->descriptor:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-void
.end method

.method public static clearInternTable()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 295
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->interns:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 296
    invoke-static {}, Lcom/s1243808733/android/dx/rop/cst/CstType;->initInterns()V

    return-void
.end method

.method public static forBoxedPrimitiveType(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/CstType;
    .registers 4

    .line 152
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getBasicType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "not primitive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :pswitch_0
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BOOLEAN:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 161
    :goto_0
    return-object v0

    .line 154
    :pswitch_1
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BYTE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_0

    .line 155
    :pswitch_2
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->CHARACTER:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_0

    .line 156
    :pswitch_3
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->DOUBLE:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_0

    .line 157
    :pswitch_4
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->FLOAT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_0

    .line 158
    :pswitch_5
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->INTEGER:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_0

    .line 159
    :pswitch_6
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->LONG:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_0

    .line 160
    :pswitch_7
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->SHORT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_0

    .line 161
    :pswitch_8
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->VOID:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static initInterns()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

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
    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 175
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->interns:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 176
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private static internInitial(Lcom/s1243808733/android/dx/rop/cst/CstType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/cst/CstType;",
            ")V"
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->interns:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Attempted re-init of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->type:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 218
    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/cst/CstType;->type:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 201
    instance-of v1, p1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-nez v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->type:Lcom/s1243808733/android/dx/rop/type/Type;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    iget-object v2, p1, Lcom/s1243808733/android/dx/rop/cst/CstType;->type:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
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

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->type:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->descriptor:Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->descriptor:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 6

    const/16 v4, 0x2f

    .line 283
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getDescriptor()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 285
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 286
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 287
    const-string v0, "default"

    .line 290
    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 231
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public hashCode()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->type:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCategory2()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstType;->type:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 225
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "type{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 237
    const-string v0, "type"

    return-object v0
.end method
