.class public final enum Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;
.super Ljava/lang/Enum;
.source "MethodHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dex/MethodHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MethodHandleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

.field public static final enum METHOD_HANDLE_TYPE_INSTANCE_GET:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

.field public static final enum METHOD_HANDLE_TYPE_INSTANCE_PUT:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

.field public static final enum METHOD_HANDLE_TYPE_INVOKE_CONSTRUCTOR:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

.field public static final enum METHOD_HANDLE_TYPE_INVOKE_DIRECT:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

.field public static final enum METHOD_HANDLE_TYPE_INVOKE_INSTANCE:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

.field public static final enum METHOD_HANDLE_TYPE_INVOKE_INTERFACE:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

.field public static final enum METHOD_HANDLE_TYPE_INVOKE_STATIC:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

.field public static final enum METHOD_HANDLE_TYPE_STATIC_GET:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

.field public static final enum METHOD_HANDLE_TYPE_STATIC_PUT:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;
    .registers 3

    .line 32
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const/4 v1, 0x0

    sget-object v2, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_STATIC_PUT:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_STATIC_GET:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INSTANCE_PUT:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INSTANCE_GET:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INVOKE_STATIC:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    aput-object v2, v0, v1

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

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetvalue(Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;)I
    .registers 1

    iget p0, p0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->value:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 33
    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const-string v1, "METHOD_HANDLE_TYPE_STATIC_PUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_STATIC_PUT:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    .line 34
    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const-string v1, "METHOD_HANDLE_TYPE_STATIC_GET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_STATIC_GET:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    .line 35
    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const-string v1, "METHOD_HANDLE_TYPE_INSTANCE_PUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INSTANCE_PUT:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    .line 36
    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const-string v1, "METHOD_HANDLE_TYPE_INSTANCE_GET"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INSTANCE_GET:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    .line 37
    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const-string v1, "METHOD_HANDLE_TYPE_INVOKE_STATIC"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INVOKE_STATIC:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    .line 38
    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const-string v1, "METHOD_HANDLE_TYPE_INVOKE_INSTANCE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INVOKE_INSTANCE:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    .line 39
    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const-string v1, "METHOD_HANDLE_TYPE_INVOKE_DIRECT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INVOKE_DIRECT:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    .line 40
    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const-string v1, "METHOD_HANDLE_TYPE_INVOKE_CONSTRUCTOR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INVOKE_CONSTRUCTOR:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    .line 41
    new-instance v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    const-string v1, "METHOD_HANDLE_TYPE_INVOKE_INTERFACE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->METHOD_HANDLE_TYPE_INVOKE_INTERFACE:Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    .line 32
    invoke-static {}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->$values()[Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->$VALUES:[Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->value:I

    return-void
.end method

.method static fromValue(I)Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;
    .registers 6

    .line 50
    invoke-static {}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->values()[Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 51
    iget v4, v3, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->value:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 55
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1d

    :goto_1c
    throw v0

    :goto_1d
    goto :goto_1c
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;
    .registers 2

    .line 32
    const-class v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    return-object p0
.end method

.method public static values()[Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;
    .registers 1

    .line 32
    sget-object v0, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->$VALUES:[Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    invoke-virtual {v0}, [Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;

    return-object v0
.end method


# virtual methods
.method public isField()Z
    .registers 4

    .line 59
    invoke-virtual {p0}, Lcom/s1243808733/android/dex/MethodHandle$MethodHandleType;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    if-eq v0, v1, :cond_11

    const/4 v2, 0x2

    if-eq v0, v2, :cond_11

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    const/4 v0, 0x0

    return v0

    :cond_11
    return v1
.end method
