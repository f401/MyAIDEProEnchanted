.class public final Lcom/s1243808733/android/dx/rop/code/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# static fields
.field public static final LIST_Error:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final LIST_Error_ArithmeticException:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final LIST_Error_ClassCastException:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final LIST_Error_NegativeArraySizeException:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final LIST_Error_NullPointerException:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final LIST_Error_Null_ArrayIndexOutOfBounds:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final LIST_Error_Null_ArrayIndex_ArrayStore:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final LIST_Error_Null_IllegalMonitorStateException:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

.field public static final TYPE_ArithmeticException:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final TYPE_ArrayIndexOutOfBoundsException:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final TYPE_ArrayStoreException:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final TYPE_ClassCastException:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final TYPE_Error:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final TYPE_IllegalMonitorStateException:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final TYPE_NegativeArraySizeException:Lcom/s1243808733/android/dx/rop/type/Type;

.field public static final TYPE_NullPointerException:Lcom/s1243808733/android/dx/rop/type/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 27
    nop

    .line 28
    const-string v0, "Ljava/lang/ArithmeticException;"

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/Exceptions;->TYPE_ArithmeticException:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 34
    nop

    .line 35
    const-string v1, "Ljava/lang/ArrayIndexOutOfBoundsException;"

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    sput-object v1, Lcom/s1243808733/android/dx/rop/code/Exceptions;->TYPE_ArrayIndexOutOfBoundsException:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 38
    nop

    .line 39
    const-string v2, "Ljava/lang/ArrayStoreException;"

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    sput-object v2, Lcom/s1243808733/android/dx/rop/code/Exceptions;->TYPE_ArrayStoreException:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 42
    nop

    .line 43
    const-string v3, "Ljava/lang/ClassCastException;"

    invoke-static {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    sput-object v3, Lcom/s1243808733/android/dx/rop/code/Exceptions;->TYPE_ClassCastException:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 46
    const-string v4, "Ljava/lang/Error;"

    invoke-static {v4}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v4

    sput-object v4, Lcom/s1243808733/android/dx/rop/code/Exceptions;->TYPE_Error:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 52
    nop

    .line 53
    const-string v5, "Ljava/lang/IllegalMonitorStateException;"

    invoke-static {v5}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v5

    sput-object v5, Lcom/s1243808733/android/dx/rop/code/Exceptions;->TYPE_IllegalMonitorStateException:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 56
    nop

    .line 57
    const-string v6, "Ljava/lang/NegativeArraySizeException;"

    invoke-static {v6}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v6

    sput-object v6, Lcom/s1243808733/android/dx/rop/code/Exceptions;->TYPE_NegativeArraySizeException:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 60
    nop

    .line 61
    const-string v7, "Ljava/lang/NullPointerException;"

    invoke-static {v7}, Lcom/s1243808733/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v7

    sput-object v7, Lcom/s1243808733/android/dx/rop/code/Exceptions;->TYPE_NullPointerException:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 64
    invoke-static {v4}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v8

    sput-object v8, Lcom/s1243808733/android/dx/rop/code/Exceptions;->LIST_Error:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 71
    invoke-static {v4, v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/Exceptions;->LIST_Error_ArithmeticException:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 78
    invoke-static {v4, v3}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/Exceptions;->LIST_Error_ClassCastException:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 85
    invoke-static {v4, v6}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/Exceptions;->LIST_Error_NegativeArraySizeException:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 92
    invoke-static {v4, v7}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/Exceptions;->LIST_Error_NullPointerException:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 100
    invoke-static {v4, v7, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/Exceptions;->LIST_Error_Null_ArrayIndexOutOfBounds:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 111
    invoke-static {v4, v7, v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/Exceptions;->LIST_Error_Null_ArrayIndex_ArrayStore:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    .line 123
    invoke-static {v4, v7, v5}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->make(Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/rop/code/Exceptions;->LIST_Error_Null_IllegalMonitorStateException:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
