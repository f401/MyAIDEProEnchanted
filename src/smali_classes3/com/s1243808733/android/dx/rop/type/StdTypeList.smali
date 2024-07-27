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
.method static final constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;-><init>(I)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->LONG:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->FLOAT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->OBJECT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->RETURN_ADDRESS:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->THROWABLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->THROWABLE:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->INT_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->LONG_LONG:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->FLOAT_FLOAT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->DOUBLE_DOUBLE:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->OBJECT_OBJECT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->INT_OBJECT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->LONG_OBJECT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->FLOAT_OBJECT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->DOUBLE_OBJECT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->LONG_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->INTARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->LONGARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->FLOATARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->DOUBLEARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->OBJECTARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->BOOLEANARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->BYTEARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->CHAR_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->CHARARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->SHORTARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->INT_INTARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->LONG_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->LONG_LONGARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->FLOAT_FLOATARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->DOUBLE_DOUBLEARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->OBJECT_OBJECTARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->INT_BOOLEANARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->INT_BYTEARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->CHAR_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-static {v0, v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->INT_CHARARR_INT:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT_ARRAY:Lcom/s1243808733/android/dx/rop/type/Type;

    sget-object v2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

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

    const/4 v0, 0x0

    .line 306
    invoke-interface {p0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v3

    .line 307
    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v4

    .line 308
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v0

    .line 310
    :goto_0
    if-lt v2, v5, :cond_0

    .line 317
    if-ne v3, v4, :cond_1

    .line 322
    :goto_1
    return v0

    .line 311
    :cond_0
    invoke-interface {p0, v2}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-interface {p1, v2}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/s1243808733/android/dx/rop/type/Type;->compareTo(Lcom/s1243808733/android/dx/rop/type/Type;)I

    move-result v1

    .line 312
    if-nez v1, :cond_3

    .line 310
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 319
    :cond_1
    if-ge v3, v4, :cond_2

    .line 320
    const/4 v0, -0x1

    goto :goto_1

    .line 322
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static equalContents(Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/type/TypeList;)Z
    .registers 7

    const/4 v0, 0x0

    .line 281
    invoke-interface {p0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v2

    .line 283
    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 287
    :goto_1
    if-lt v1, v2, :cond_2

    .line 293
    const/4 v0, 0x1

    goto :goto_0

    .line 288
    :cond_2
    invoke-interface {p0, v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-interface {p1, v1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static hashContents(Lcom/s1243808733/android/dx/rop/type/TypeList;)I
    .registers 5

    const/4 v1, 0x0

    .line 261
    invoke-interface {p0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v3

    move v0, v1

    move v2, v1

    .line 264
    :goto_0
    if-lt v0, v3, :cond_0

    .line 268
    return v2

    .line 265
    :cond_0
    invoke-interface {p0, v0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->hashCode()I

    move-result v1

    .line 264
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_0
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

    .line 173
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
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    .line 187
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
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    .line 202
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    .line 203
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
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    .line 220
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    .line 221
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    .line 222
    return-object v0
.end method

.method public static toHuman(Lcom/s1243808733/android/dx/rop/type/TypeList;)Ljava/lang/String;
    .registers 5

    .line 234
    invoke-interface {p0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v1

    .line 236
    if-nez v1, :cond_0

    .line 237
    const-string v0, "<empty>"

    .line 249
    :goto_0
    return-object v0

    .line 240
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 242
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_1

    .line 249
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 243
    :cond_1
    if-eqz v0, :cond_2

    .line 244
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_2
    invoke-interface {p0, v0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public get(I)Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 3

    .line 378
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public getType(I)Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 338
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public getWordCount()I
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v3

    move v0, v1

    move v2, v1

    .line 347
    :goto_0
    if-lt v0, v3, :cond_0

    .line 351
    return v2

    .line 348
    :cond_0
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v1

    .line 347
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_0
.end method

.method public set(ILcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ")V"
        }
    .end annotation

    .line 388
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public withAddedType(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/TypeList;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 357
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v1

    .line 358
    new-instance v2, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    add-int/lit8 v0, v1, 0x1

    invoke-direct {v2, v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 360
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 364
    invoke-virtual {v2, v1, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set(ILcom/s1243808733/android/dx/rop/type/Type;)V

    .line 365
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->setImmutable()V

    .line 366
    return-object v2

    .line 361
    :cond_0
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set0(ILjava/lang/Object;)V

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public withFirst(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;
    .registers 7

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v1

    .line 401
    new-instance v2, Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 403
    invoke-virtual {v2, v0, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set0(ILjava/lang/Object;)V

    .line 404
    :goto_0
    if-lt v0, v1, :cond_0

    .line 408
    return-object v2

    .line 405
    :cond_0
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getOrNull0(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->set0(ILjava/lang/Object;)V

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
