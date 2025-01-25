.class public final Lcom/s1243808733/android/dx/rop/type/Type;
.super Ljava/lang/Object;
.source "Type.java"

# interfaces
.implements Lcom/s1243808733/android/dx/rop/type/TypeBearer;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/s1243808733/android/dx/rop/type/TypeBearer;",
        "Ljava/lang/Comparable<",
        "Lcom/s1243808733/android/dx/rop/type/Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANNOTATION:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final BOOLEAN:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final BOOLEAN_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final BT_ADDR:I = 0xa

.field public static final BT_BOOLEAN:I = 0x1

.field public static final BT_BYTE:I = 0x2

.field public static final BT_CHAR:I = 0x3

.field public static final BT_COUNT:I = 0xb

.field public static final BT_DOUBLE:I = 0x4

.field public static final BT_FLOAT:I = 0x5

.field public static final BT_INT:I = 0x6

.field public static final BT_LONG:I = 0x7

.field public static final BT_OBJECT:I = 0x9

.field public static final BT_SHORT:I = 0x8

.field public static final BT_VOID:I

.field public static final BYTE:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final BYTE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final BYTE_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final CHAR:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final CHARACTER_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final CHAR_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final CLONEABLE:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final DOUBLE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final DOUBLE_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final FLOAT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final FLOAT_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final INT:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final INTEGER_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final INT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final LONG:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final LONG_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final LONG_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final METHOD_HANDLE:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final METHOD_TYPE:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final OBJECT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final RETURN_ADDRESS:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final SERIALIZABLE:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final SHORT:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final SHORT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final SHORT_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final STRING:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final THROWABLE:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final VAR_HANDLE:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final VOID:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final VOID_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

.field private static final internTable:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private arrayType:Lcom/s1243808733/android/dx/rop/type/Type;

.field private final basicType:I

.field private className:Ljava/lang/String;

.field private componentType:Lcom/s1243808733/android/dx/rop/type/Type;

.field private final descriptor:Ljava/lang/String;

.field private initializedType:Lcom/s1243808733/android/dx/rop/type/Type;

.field private final newAt:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x2710

    const/high16 v2, 0x3f400000  # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->internTable:Ljava/util/concurrent/ConcurrentMap;

    .line 76
    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Z"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 79
    new-instance v1, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v2, "B"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 82
    new-instance v2, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v3, "C"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->CHAR:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 85
    new-instance v3, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v4, "D"

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 88
    new-instance v4, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v5, "F"

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 91
    new-instance v5, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v6, "I"

    const/4 v7, 0x6

    invoke-direct {v5, v6, v7}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 94
    new-instance v6, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v7, "J"

    const/4 v8, 0x7

    invoke-direct {v6, v7, v8}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 97
    new-instance v7, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v8, "S"

    const/16 v9, 0x8

    invoke-direct {v7, v8, v9}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 100
    new-instance v8, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v9, "V"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 103
    new-instance v8, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v9, "<null>"

    const/16 v10, 0x9

    invoke-direct {v8, v9, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 106
    new-instance v8, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v9, "<addr>"

    const/16 v11, 0xa

    invoke-direct {v8, v9, v11}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/s1243808733/android/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 113
    new-instance v8, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v9, "Ljava/lang/annotation/Annotation;"

    invoke-direct {v8, v9, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/s1243808733/android/dx/rop/type/Type;->ANNOTATION:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 117
    new-instance v8, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Class;"

    invoke-direct {v8, v9, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/s1243808733/android/dx/rop/type/Type;->CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 120
    new-instance v8, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Cloneable;"

    invoke-direct {v8, v9, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/s1243808733/android/dx/rop/type/Type;->CLONEABLE:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 123
    new-instance v8, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v9, "Ljava/lang/invoke/MethodHandle;"

    invoke-direct {v8, v9, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/s1243808733/android/dx/rop/type/Type;->METHOD_HANDLE:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 126
    new-instance v8, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v9, "Ljava/lang/invoke/MethodType;"

    invoke-direct {v8, v9, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/s1243808733/android/dx/rop/type/Type;->METHOD_TYPE:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 129
    new-instance v8, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v9, "Ljava/lang/invoke/VarHandle;"

    invoke-direct {v8, v9, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/s1243808733/android/dx/rop/type/Type;->VAR_HANDLE:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 132
    new-instance v8, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v9, "Ljava/lang/Object;"

    invoke-direct {v8, v9, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 135
    new-instance v9, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v11, "Ljava/io/Serializable;"

    invoke-direct {v9, v11, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->SERIALIZABLE:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 138
    new-instance v9, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/String;"

    invoke-direct {v9, v11, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->STRING:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 141
    new-instance v9, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Throwable;"

    invoke-direct {v9, v11, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->THROWABLE:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 148
    new-instance v9, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Boolean;"

    invoke-direct {v9, v11, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 155
    new-instance v9, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Byte;"

    invoke-direct {v9, v11, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 162
    new-instance v9, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Character;"

    invoke-direct {v9, v11, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->CHARACTER_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 169
    new-instance v9, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Double;"

    invoke-direct {v9, v11, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 176
    new-instance v9, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Float;"

    invoke-direct {v9, v11, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 183
    new-instance v9, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Integer;"

    invoke-direct {v9, v11, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->INTEGER_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 190
    new-instance v9, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Long;"

    invoke-direct {v9, v11, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->LONG_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 197
    new-instance v9, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Short;"

    invoke-direct {v9, v11, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 204
    new-instance v9, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v11, "Ljava/lang/Void;"

    invoke-direct {v9, v11, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->VOID_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 207
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "["

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->CHAR_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v6, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->LONG_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v10}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 234
    invoke-static {}, Lcom/s1243808733/android/dx/rop/type/Type;->initInterns()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 506
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2c

    if-ltz p2, :cond_24

    const/16 v0, 0xb

    if-ge p2, v0, :cond_24

    const/4 v0, -0x1

    if-lt p3, v0, :cond_1c

    .line 488
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 489
    iput p2, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    .line 490
    iput p3, p0, Lcom/s1243808733/android/dx/rop/type/Type;->newAt:I

    .line 491
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/type/Type;->arrayType:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 492
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/type/Type;->componentType:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 493
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/type/Type;->initializedType:Lcom/s1243808733/android/dx/rop/type/Type;

    return-void

    .line 485
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "newAt < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 481
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad basicType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 477
    :cond_2c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "descriptor == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static clearInternTable()V
    .registers 1

    .line 910
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->internTable:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 911
    invoke-static {}, Lcom/s1243808733/android/dx/rop/type/Type;->initInterns()V

    return-void
.end method

.method private static initInterns()V
    .registers 1

    .line 243
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 244
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 245
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->CHAR:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 246
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 247
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 248
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 249
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 250
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 256
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->ANNOTATION:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 257
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 258
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->CLONEABLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 259
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->METHOD_HANDLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 260
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->VAR_HANDLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 261
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 262
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->SERIALIZABLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 263
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->STRING:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 264
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->THROWABLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 265
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 266
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 267
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->CHARACTER_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 268
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 269
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 270
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INTEGER_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 271
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 272
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 273
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->VOID_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 276
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 277
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 278
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->CHAR_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 279
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 280
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 281
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 282
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 283
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    .line 284
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    return-void
.end method

.method public static intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 9

    .line 343
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->internTable:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/Type;

    if-eqz v0, :cond_b

    return-object v0

    .line 351
    :cond_b
    const/4 v0, 0x0

    :try_start_c
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_10} :catch_ac
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_10} :catch_a3

    const/16 v1, 0x5b

    const/4 v2, 0x1

    if-ne v0, v1, :cond_22

    .line 365
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p0

    .line 366
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getArrayType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p0

    return-object p0

    .line 374
    :cond_22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 375
    const/16 v4, 0x4c

    const-string v5, "bad descriptor: "

    if-ne v0, v4, :cond_91

    add-int/lit8 v3, v3, -0x1

    .line 376
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_91

    const/4 v0, 0x1

    :goto_37
    if-ge v0, v3, :cond_85

    .line 391
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x28

    if-eq v6, v7, :cond_73

    const/16 v7, 0x29

    if-eq v6, v7, :cond_73

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_73

    const/16 v7, 0x2f

    if-eq v6, v7, :cond_52

    if-eq v6, v4, :cond_73

    if-eq v6, v1, :cond_73

    goto :goto_5e

    :cond_52
    if-eq v0, v2, :cond_61

    if-eq v0, v3, :cond_61

    .line 403
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_61

    :goto_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 404
    :cond_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 398
    :cond_73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 411
    :cond_85
    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    .line 412
    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p0

    return-object p0

    .line 377
    :cond_91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 357
    :catch_a3
    move-exception p0

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 354
    :catch_ac
    move-exception p0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "descriptor is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_b6

    :goto_b5
    throw p0

    :goto_b6
    goto :goto_b5
.end method

.method public static internClassName(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 3

    if-eqz p0, :cond_27

    .line 458
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 459
    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p0

    return-object p0

    .line 462
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "L"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p0

    return-object p0

    .line 455
    :cond_27
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static internReturnType(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 428
    :try_start_0
    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 430
    sget-object p0, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_10

    return-object p0

    .line 437
    :cond_b
    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p0

    return-object p0

    .line 434
    :catch_10
    move-exception p0

    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "descriptor == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 3

    .line 905
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->internTable:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/Type;

    if-eqz v0, :cond_f

    move-object p0, v0

    :cond_f
    return-object p0
.end method


# virtual methods
.method public asUninitialized(I)Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 5

    if-ltz p1, :cond_5f

    .line 871
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isReference()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 876
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isUninitialized()Z

    move-result v0

    if-nez v0, :cond_33

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "N"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 891
    new-instance v1, Lcom/s1243808733/android/dx/rop/type/Type;

    const/16 v2, 0x9

    invoke-direct {v1, v0, v2, p1}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;II)V

    .line 892
    iput-object p0, v1, Lcom/s1243808733/android/dx/rop/type/Type;->initializedType:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 893
    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    return-object p1

    .line 882
    :cond_33
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "already uninitialized: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 872
    :cond_49
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "not a reference type: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_5f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newAt < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public compareTo(Lcom/s1243808733/android/dx/rop/type/Type;)I
    .registers 3

    .line 536
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 29
    check-cast p1, Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/type/Type;->compareTo(Lcom/s1243808733/android/dx/rop/type/Type;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 520
    :cond_4
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/type/Type;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 524
    :cond_a
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    check-cast p1, Lcom/s1243808733/android/dx/rop/type/Type;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getArrayType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 4

    .line 833
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->arrayType:Lcom/s1243808733/android/dx/rop/type/Type;

    if-nez v0, :cond_21

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    invoke-direct {v1, v0, v2}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->arrayType:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 837
    :cond_21
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->arrayType:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public getBasicFrameType()I
    .registers 4

    .line 601
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-eq v0, v1, :cond_13

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    if-eq v0, v2, :cond_13

    const/16 v1, 0x8

    if-eq v0, v1, :cond_13

    return v0

    :cond_13
    return v2
.end method

.method public getBasicType()I
    .registers 2

    .line 595
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    return v0
.end method

.method public getCategory()I
    .registers 3

    .line 663
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    const/4 v1, 0x7

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x2

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 4

    .line 638
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->className:Ljava/lang/String;

    if-nez v0, :cond_3f

    .line 639
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isReference()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 644
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1a

    .line 645
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->className:Ljava/lang/String;

    goto :goto_3f

    .line 647
    :cond_1a
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->className:Ljava/lang/String;

    goto :goto_3f

    .line 640
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not an object type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 651
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 3

    .line 847
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->componentType:Lcom/s1243808733/android/dx/rop/type/Type;

    if-nez v0, :cond_33

    .line 848
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1d

    .line 852
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->componentType:Lcom/s1243808733/android/dx/rop/type/Type;

    goto :goto_33

    .line 849
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not an array type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 855
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->componentType:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .registers 2

    .line 626
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 3

    .line 579
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    const/4 v1, 0x6

    if-eq v0, v1, :cond_13

    const/16 v1, 0x8

    if-eq v0, v1, :cond_13

    return-object p0

    .line 585
    :cond_13
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public bridge synthetic getFrameType()Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 2

    .line 29
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getFrameType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public getInitializedType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 3

    .line 819
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->initializedType:Lcom/s1243808733/android/dx/rop/type/Type;

    if-eqz v0, :cond_5

    return-object v0

    .line 820
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initialized type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNewAt()I
    .registers 2

    .line 809
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->newAt:I

    return v0
.end method

.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 1

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    .line 530
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isArray()Z
    .registers 4

    .line 774
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public isArrayOrKnownNull()Z
    .registers 2

    .line 784
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public isCategory1()Z
    .registers 3

    .line 681
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    const/4 v1, 0x7

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isCategory2()Z
    .registers 3

    .line 699
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    const/4 v1, 0x7

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public isConstant()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isIntlike()Z
    .registers 4

    .line 717
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v2, 0x2

    if-eq v0, v2, :cond_14

    const/4 v2, 0x3

    if-eq v0, v2, :cond_14

    const/4 v2, 0x6

    if-eq v0, v2, :cond_14

    const/16 v2, 0x8

    if-eq v0, v2, :cond_14

    const/4 v0, 0x0

    return v0

    :cond_14
    return v1
.end method

.method public isPrimitive()Z
    .registers 2

    .line 737
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    packed-switch v0, :pswitch_data_a

    const/4 v0, 0x0

    return v0

    :pswitch_7  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7  #00000000
        :pswitch_7  #00000001
        :pswitch_7  #00000002
        :pswitch_7  #00000003
        :pswitch_7  #00000004
        :pswitch_7  #00000005
        :pswitch_7  #00000006
        :pswitch_7  #00000007
        :pswitch_7  #00000008
    .end packed-switch
.end method

.method public isReference()Z
    .registers 3

    .line 763
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isUninitialized()Z
    .registers 2

    .line 796
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->newAt:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 4

    .line 548
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    packed-switch v0, :pswitch_data_50

    .line 559
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    return-object v0

    .line 562
    :pswitch_8  #0x9
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 567
    :cond_28
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 557
    :pswitch_35  #0x8
    const-string v0, "short"

    return-object v0

    .line 556
    :pswitch_38  #0x7
    const-string v0, "long"

    return-object v0

    .line 555
    :pswitch_3b  #0x6
    const-string v0, "int"

    return-object v0

    .line 554
    :pswitch_3e  #0x5
    const-string v0, "float"

    return-object v0

    .line 553
    :pswitch_41  #0x4
    const-string v0, "double"

    return-object v0

    .line 552
    :pswitch_44  #0x3
    const-string v0, "char"

    return-object v0

    .line 551
    :pswitch_47  #0x2
    const-string v0, "byte"

    return-object v0

    .line 550
    :pswitch_4a  #0x1
    const-string v0, "boolean"

    return-object v0

    .line 549
    :pswitch_4d  #0x0
    const-string v0, "void"

    return-object v0

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_4d  #00000000
        :pswitch_4a  #00000001
        :pswitch_47  #00000002
        :pswitch_44  #00000003
        :pswitch_41  #00000004
        :pswitch_3e  #00000005
        :pswitch_3b  #00000006
        :pswitch_38  #00000007
        :pswitch_35  #00000008
        :pswitch_8  #00000009
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 542
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    return-object v0
.end method
