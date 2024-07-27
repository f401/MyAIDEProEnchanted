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
        "Ljava/lang/Comparable",
        "<",
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
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
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
.method static final constructor <clinit>()V
    .registers 4

    const/16 v3, 0x9

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x2710

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->internTable:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Z"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "B"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "C"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->CHAR:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "D"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "F"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "I"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "J"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "S"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "V"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "<null>"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "<addr>"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Ljava/lang/annotation/Annotation;"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->ANNOTATION:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Ljava/lang/Class;"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Ljava/lang/Cloneable;"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->CLONEABLE:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Ljava/lang/invoke/MethodHandle;"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->METHOD_HANDLE:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Ljava/lang/invoke/MethodType;"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->METHOD_TYPE:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Ljava/lang/invoke/VarHandle;"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->VAR_HANDLE:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Ljava/lang/Object;"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Ljava/io/Serializable;"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->SERIALIZABLE:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Ljava/lang/String;"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->STRING:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Ljava/lang/Throwable;"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->THROWABLE:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Ljava/lang/Boolean;"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Ljava/lang/Byte;"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Ljava/lang/Character;"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->CHARACTER_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Ljava/lang/Double;"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Ljava/lang/Float;"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Ljava/lang/Integer;"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INTEGER_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Ljava/lang/Long;"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Ljava/lang/Short;"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const-string v1, "Ljava/lang/Void;"

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->VOID_CLASS:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN:Lcom/s1243808733/android/dx/rop/type/Type;

    iget-object v2, v2, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE:Lcom/s1243808733/android/dx/rop/type/Type;

    iget-object v2, v2, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->CHAR:Lcom/s1243808733/android/dx/rop/type/Type;

    iget-object v2, v2, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->CHAR_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    iget-object v2, v2, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    iget-object v2, v2, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    iget-object v2, v2, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    iget-object v2, v2, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    iget-object v2, v2, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT:Lcom/s1243808733/android/dx/rop/type/Type;

    iget-object v2, v2, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 234
    invoke-static {}, Lcom/s1243808733/android/dx/rop/type/Type;->initInterns()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 506
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .registers 6

    const/4 v1, 0x0

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    if-nez p1, :cond_0

    .line 477
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_0
    if-ltz p2, :cond_1

    const/16 v0, 0xb

    if-lt p2, v0, :cond_2

    .line 481
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad basicType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_2
    const/4 v0, -0x1

    if-ge p3, v0, :cond_3

    .line 485
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newAt < -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_3
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 489
    iput p2, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    .line 490
    iput p3, p0, Lcom/s1243808733/android/dx/rop/type/Type;->newAt:I

    move-object v0, v1

    .line 491
    check-cast v0, Lcom/s1243808733/android/dx/rop/type/Type;

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->arrayType:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, v1

    .line 492
    check-cast v0, Lcom/s1243808733/android/dx/rop/type/Type;

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->componentType:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 493
    check-cast v1, Lcom/s1243808733/android/dx/rop/type/Type;

    iput-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Type;->initializedType:Lcom/s1243808733/android/dx/rop/type/Type;

    return-void
.end method

.method public static clearInternTable()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 910
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->internTable:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 911
    invoke-static {}, Lcom/s1243808733/android/dx/rop/type/Type;->initInterns()V

    return-void
.end method

.method private static initInterns()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

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
    .registers 6

    const/4 v1, 0x1

    .line 343
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->internTable:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/Type;

    .line 345
    if-eqz v0, :cond_0

    .line 412
    :goto_0
    return-object v0

    .line 349
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 360
    const/16 v2, 0x5b

    if-ne v0, v2, :cond_1

    .line 365
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getArrayType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "descriptor is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 357
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 375
    const/16 v3, 0x4c

    if-ne v0, v3, :cond_2

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3b

    if-eq v0, v3, :cond_3

    .line 377
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bad descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v1

    .line 390
    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-lt v0, v3, :cond_4

    .line 411
    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    .line 412
    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 392
    sparse-switch v3, :sswitch_data_0

    .line 390
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 398
    :sswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bad descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :sswitch_1
    if-eq v0, v1, :cond_6

    add-int/lit8 v3, v2, -0x1

    if-eq v0, v3, :cond_6

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_5

    .line 404
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bad descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_1
        0x3b -> :sswitch_0
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method public static internClassName(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 4

    .line 454
    if-nez p0, :cond_0

    .line 455
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 462
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public static internReturnType(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 3

    .line 428
    :try_start_0
    const-string v0, "V"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    return-object v0

    .line 430
    :catch_0
    move-exception v0

    .line 434
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_0
    invoke-static {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    goto :goto_0
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

    .line 906
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public asUninitialized(I)Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 5

    .line 867
    if-gez p1, :cond_0

    .line 868
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newAt < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 872
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "not a reference type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isUninitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 882
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "already uninitialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x4e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 891
    new-instance v1, Lcom/s1243808733/android/dx/rop/type/Type;

    const/16 v2, 0x9

    invoke-direct {v1, v0, v2, p1}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;II)V

    .line 892
    iput-object p0, v1, Lcom/s1243808733/android/dx/rop/type/Type;->initializedType:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 893
    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/s1243808733/android/dx/rop/type/Type;)I
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/type/Type;->compareTo(Lcom/s1243808733/android/dx/rop/type/Type;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 512
    if-ne p0, p1, :cond_0

    .line 517
    const/4 v0, 0x1

    .line 524
    :goto_0
    return v0

    .line 520
    :cond_0
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/type/Type;

    if-nez v0, :cond_1

    .line 521
    const/4 v0, 0x0

    goto :goto_0

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    check-cast p1, Lcom/s1243808733/android/dx/rop/type/Type;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getArrayType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 4

    .line 833
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->arrayType:Lcom/s1243808733/android/dx/rop/type/Type;

    if-nez v0, :cond_0

    .line 834
    new-instance v0, Lcom/s1243808733/android/dx/rop/type/Type;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/Type;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->putIntern(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->arrayType:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->arrayType:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public getBasicFrameType()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 601
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    packed-switch v0, :pswitch_data_0

    .line 611
    :pswitch_0
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    :goto_0
    return v0

    .line 607
    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    .line 601
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getBasicType()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 595
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    return v0
.end method

.method public getCategory()I
    .registers 2

    .line 663
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    packed-switch v0, :pswitch_data_0

    .line 670
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 666
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 663
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getClassName()Ljava/lang/String;
    .registers 4

    .line 638
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->className:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 639
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "not an object type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2

    .line 645
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->className:Ljava/lang/String;

    .line 651
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->className:Ljava/lang/String;

    return-object v0

    .line 647
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->className:Ljava/lang/String;

    goto :goto_0
.end method

.method public getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 4

    .line 847
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->componentType:Lcom/s1243808733/android/dx/rop/type/Type;

    if-nez v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    .line 849
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "not an array type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->componentType:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 855
    :cond_1
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
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 579
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    packed-switch v0, :pswitch_data_0

    .line 589
    :goto_0
    :pswitch_0
    return-object p0

    .line 585
    :pswitch_1
    sget-object p0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    goto :goto_0

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge getFrameType()Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getFrameType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public getInitializedType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 4

    .line 819
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->initializedType:Lcom/s1243808733/android/dx/rop/type/Type;

    if-nez v0, :cond_0

    .line 820
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "initialized type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->initializedType:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public getNewAt()I
    .registers 2

    .line 809
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->newAt:I

    return v0
.end method

.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 573
    return-object p0
.end method

.method public hashCode()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isArray()Z
    .registers 4

    const/4 v0, 0x0

    .line 774
    iget-object v1, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isArrayOrKnownNull()Z
    .registers 2

    .line 784
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCategory1()Z
    .registers 2

    .line 681
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    packed-switch v0, :pswitch_data_0

    .line 688
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 684
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 681
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isCategory2()Z
    .registers 2

    .line 699
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    packed-switch v0, :pswitch_data_0

    .line 706
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 702
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 699
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isConstant()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public isIntlike()Z
    .registers 2

    .line 717
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    packed-switch v0, :pswitch_data_0

    .line 727
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 723
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 717
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isPrimitive()Z
    .registers 2

    .line 737
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    packed-switch v0, :pswitch_data_0

    .line 751
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 747
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 737
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isReference()Z
    .registers 3

    .line 763
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isUninitialized()Z
    .registers 2

    .line 796
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->newAt:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 548
    iget v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->basicType:I

    packed-switch v0, :pswitch_data_0

    .line 559
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    .line 567
    :goto_0
    return-object v0

    .line 549
    :pswitch_0
    const-string v0, "void"

    goto :goto_0

    .line 550
    :pswitch_1
    const-string v0, "boolean"

    goto :goto_0

    .line 551
    :pswitch_2
    const-string v0, "byte"

    goto :goto_0

    .line 552
    :pswitch_3
    const-string v0, "char"

    goto :goto_0

    .line 553
    :pswitch_4
    const-string v0, "double"

    goto :goto_0

    .line 554
    :pswitch_5
    const-string v0, "float"

    goto :goto_0

    .line 555
    :pswitch_6
    const-string v0, "int"

    goto :goto_0

    .line 556
    :pswitch_7
    const-string v0, "long"

    goto :goto_0

    .line 557
    :pswitch_8
    const-string v0, "short"

    goto :goto_0

    .line 562
    :pswitch_9
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getComponentType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/type/Type;->descriptor:Ljava/lang/String;

    return-object v0
.end method
