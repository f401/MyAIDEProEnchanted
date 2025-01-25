.class public final Lcom/s1243808733/android/dx/rop/type/StdTypeList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "StdTypeList.java"

# interfaces
.implements Lcom/s1243808733/android/dx/rop/type/TypeList;


# static fields
.field public static final BOOLEANARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final BYTEARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final CHARARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final DOUBLE:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final DOUBLEARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final DOUBLE_DOUBLE:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final DOUBLE_DOUBLEARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final DOUBLE_OBJECT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final FLOAT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final FLOATARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final FLOAT_FLOAT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final FLOAT_FLOATARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final FLOAT_OBJECT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final INTARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final INT_BOOLEANARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final INT_BYTEARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final INT_CHARARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final INT_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final INT_INTARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final INT_OBJECT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final INT_SHORTARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final LONG:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final LONGARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final LONG_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final LONG_LONG:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final LONG_LONGARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final LONG_OBJECT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final OBJECT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final OBJECTARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final OBJECT_OBJECT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final OBJECT_OBJECTARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final RETURN_ADDRESS:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final SHORTARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final THROWABLE:Lcom/s1243808733/android/dx/rop/type/StdTypeList;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 30
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 33
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->LONG:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 36
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->FLOAT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 39
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 42
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->OBJECT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 45
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 46
    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->RETURN_ADDRESS:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 49
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->THROWABLE:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 50
    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->THROWABLE:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 53
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 54
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->INT_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 57
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 58
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->LONG_LONG:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 61
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 62
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->FLOAT_FLOAT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 65
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 66
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->DOUBLE_DOUBLE:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 69
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 70
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->OBJECT_OBJECT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 73
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 74
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->INT_OBJECT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 77
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 78
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->LONG_OBJECT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 81
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 82
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->FLOAT_OBJECT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 85
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 86
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->DOUBLE_OBJECT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 89
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 90
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->LONG_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 93
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 94
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->INTARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 97
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 98
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->LONGARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 101
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 102
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->FLOATARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 105
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 106
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->DOUBLEARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 109
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 110
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->OBJECTARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 113
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 114
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->BOOLEANARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 117
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 118
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->BYTEARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 121
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->CHAR_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 122
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->CHARARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 125
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 126
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->SHORTARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 129
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 130
    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->INT_INTARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 133
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->LONG_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 134
    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->LONG_LONGARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 137
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 138
    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->FLOAT_FLOATARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 141
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 142
    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->DOUBLE_DOUBLEARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 145
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 146
    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->OBJECT_OBJECTARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 149
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 150
    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->INT_BOOLEANARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 153
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 154
    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->INT_BYTEARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 157
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->CHAR_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 158
    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->INT_CHARARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 161
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 162
    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->INT_SHORTARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 332
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method

.method public static compareContents(Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/type/TypeList;)I
    .registers 9

    .line 306
    invoke-interface {p0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v0

    .line 307
    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v1

    .line 308
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v2, :cond_22

    .line 311
    invoke-interface {p0, v4}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v5

    invoke-interface {p1, v4}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/s1243808733/android/dx/rop/type/Type;->compareTo(Lcom/s1243808733/android/dx/rop/type/Type;)I

    move-result v5

    if-eqz v5, :cond_1f

    return v5

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_22
    if-ne v0, v1, :cond_25

    return v3

    :cond_25
    if-ge v0, v1, :cond_29

    const/4 p0, -0x1

    return p0

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method public static equalContents(Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/type/TypeList;)Z
    .registers 7

    .line 281
    invoke-interface {p0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v0

    .line 283
    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_c

    return v2

    :cond_c
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_21

    .line 288
    invoke-interface {p0, v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    return v2

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method public static hashContents(Lcom/s1243808733/android/dx/rop/type/TypeList;)I
    .registers 5

    .line 261
    invoke-interface {p0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_16

    .line 265
    mul-int/lit8 v2, v2, 0x1f

    invoke-interface {p0, v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    return v2
.end method

.method public static make(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;
    .registers 3

    .line 171
    new-instance v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 172
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    return-object v0
.end method

.method public static make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;
    .registers 4

    .line 184
    new-instance v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 185
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    .line 186
    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    return-object v0
.end method

.method public static make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;
    .registers 5

    .line 199
    new-instance v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 200
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    .line 201
    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    .line 202
    const/4 p0, 0x2

    invoke-virtual {v0, p0, p2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    return-object v0
.end method

.method public static make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;
    .registers 6

    .line 217
    new-instance v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 218
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    .line 219
    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    .line 220
    const/4 p0, 0x2

    invoke-virtual {v0, p0, p2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    .line 221
    const/4 p0, 0x3

    invoke-virtual {v0, p0, p3}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    return-object v0
.end method

.method public static toHuman(Lcom/s1243808733/android/dx/rop/type/TypeList;)Ljava/lang/String;
    .registers 5

    .line 234
    invoke-interface {p0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 237
    const-string p0, "<empty>"

    return-object p0

    .line 240
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_28

    if-eqz v2, :cond_1a

    .line 244
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_1a
    invoke-interface {p0, v2}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 249
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 378
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/type/Type;

    return-object p1
.end method

.method public getType(I)Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 338
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    return-object p1
.end method

.method public getWordCount()I
    .registers 5

    .line 344
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_14

    .line 348
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    return v2
.end method

.method public set(ILcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 3

    .line 388
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public withAddedType(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/TypeList;
    .registers 6

    .line 357
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v0

    .line 358
    new-instance v1, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;-><init>(I)V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_18

    .line 361
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set0(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 364
    :cond_18
    invoke-virtual {v1, v0, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    .line 365
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->setImmutable()V

    return-object v1
.end method

.method public withFirst(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;
    .registers 5

    .line 400
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v0

    .line 401
    new-instance v1, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 403
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set0(ILjava/lang/Object;)V

    :goto_f
    if-ge v2, v0, :cond_1c

    add-int/lit8 p1, v2, 0x1

    .line 405
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getOrNull0(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set0(ILjava/lang/Object;)V

    move v2, p1

    goto :goto_f

    :cond_1c
    return-object v1
.end method
