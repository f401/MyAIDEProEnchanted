.class public enum Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;
.super Ljava/lang/Enum;
.source "MethodHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dex/MethodHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "MethodHandleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

.field public static final METHOD_HANDLE_TYPE_INSTANCE_GET:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

.field public static final METHOD_HANDLE_TYPE_INSTANCE_PUT:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

.field public static final METHOD_HANDLE_TYPE_INVOKE_CONSTRUCTOR:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

.field public static final METHOD_HANDLE_TYPE_INVOKE_DIRECT:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

.field public static final METHOD_HANDLE_TYPE_INVOKE_INSTANCE:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

.field public static final METHOD_HANDLE_TYPE_INVOKE_INTERFACE:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

.field public static final METHOD_HANDLE_TYPE_INVOKE_STATIC:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

.field public static final METHOD_HANDLE_TYPE_STATIC_GET:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

.field public static final METHOD_HANDLE_TYPE_STATIC_PUT:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;


# instance fields
.field private final value:I


# direct methods
.method static final constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const-string v1, "METHOD_HANDLE_TYPE_STATIC_PUT"

    invoke-direct {v0, v1, v4, v4}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_STATIC_PUT:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const-string v1, "METHOD_HANDLE_TYPE_STATIC_GET"

    invoke-direct {v0, v1, v5, v5}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_STATIC_GET:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const-string v1, "METHOD_HANDLE_TYPE_INSTANCE_PUT"

    invoke-direct {v0, v1, v6, v6}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INSTANCE_PUT:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const-string v1, "METHOD_HANDLE_TYPE_INSTANCE_GET"

    invoke-direct {v0, v1, v7, v7}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INSTANCE_GET:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const-string v1, "METHOD_HANDLE_TYPE_INVOKE_STATIC"

    invoke-direct {v0, v1, v8, v8}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INVOKE_STATIC:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const-string v1, "METHOD_HANDLE_TYPE_INVOKE_INSTANCE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INVOKE_INSTANCE:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const-string v1, "METHOD_HANDLE_TYPE_INVOKE_DIRECT"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INVOKE_DIRECT:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const-string v1, "METHOD_HANDLE_TYPE_INVOKE_CONSTRUCTOR"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INVOKE_CONSTRUCTOR:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const-string v1, "METHOD_HANDLE_TYPE_INVOKE_INTERFACE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INVOKE_INTERFACE:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    sget-object v1, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_STATIC_PUT:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_STATIC_GET:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INSTANCE_PUT:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INSTANCE_GET:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INVOKE_STATIC:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INVOKE_INSTANCE:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INVOKE_DIRECT:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INVOKE_CONSTRUCTOR:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INVOKE_INTERFACE:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->$VALUES:[Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->value:I

    return-void
.end method

.method static synthetic access$L1000000(Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;)I
    .registers 2

    iget v0, p0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->value:I

    return v0
.end method

.method static fromValue(I)Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;
    .registers 5

    .line 50
    invoke-static {}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->values()[Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    move-result-object v1

    const/4 v0, 0x0

    .line 52
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    aget-object v2, v1, v0

    .line 51
    iget v3, v2, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->value:I

    if-ne v3, p0, :cond_1

    .line 52
    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;
    .registers 5

    .line 41
    sget-object v1, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->$VALUES:[Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final values()[Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;
    .registers 1

    .line 41
    sget-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->$VALUES:[Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    invoke-virtual {v0}, [Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    return-object v0
.end method


# virtual methods
.method public isField()Z
    .registers 2

    .line 59
    sget-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_STATIC_PUT:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    if-ne p0, v0, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    .line 59
    :cond_1
    sget-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_STATIC_GET:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INSTANCE_PUT:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INSTANCE_GET:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    if-eq p0, v0, :cond_0

    .line 66
    const/4 v0, 0x0

    goto :goto_0
.end method
