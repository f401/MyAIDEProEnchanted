.class public final enum Lorg/xutils/http/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/xutils/http/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/xutils/http/HttpMethod;

.field public static final enum CONNECT:Lorg/xutils/http/HttpMethod;

.field public static final enum COPY:Lorg/xutils/http/HttpMethod;

.field public static final enum DELETE:Lorg/xutils/http/HttpMethod;

.field public static final enum GET:Lorg/xutils/http/HttpMethod;

.field public static final enum HEAD:Lorg/xutils/http/HttpMethod;

.field public static final enum MOVE:Lorg/xutils/http/HttpMethod;

.field public static final enum OPTIONS:Lorg/xutils/http/HttpMethod;

.field public static final enum PATCH:Lorg/xutils/http/HttpMethod;

.field public static final enum POST:Lorg/xutils/http/HttpMethod;

.field public static final enum PUT:Lorg/xutils/http/HttpMethod;

.field public static final enum TRACE:Lorg/xutils/http/HttpMethod;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 8
    new-instance v0, Lorg/xutils/http/HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    const-string v3, "GET"

    invoke-direct {v0, v1, v2, v3}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/xutils/http/HttpMethod;->GET:Lorg/xutils/http/HttpMethod;

    .line 9
    new-instance v1, Lorg/xutils/http/HttpMethod;

    const-string v2, "POST"

    const/4 v3, 0x1

    const-string v4, "POST"

    invoke-direct {v1, v2, v3, v4}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/xutils/http/HttpMethod;->POST:Lorg/xutils/http/HttpMethod;

    .line 10
    new-instance v2, Lorg/xutils/http/HttpMethod;

    const-string v3, "PUT"

    const/4 v4, 0x2

    const-string v5, "PUT"

    invoke-direct {v2, v3, v4, v5}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/xutils/http/HttpMethod;->PUT:Lorg/xutils/http/HttpMethod;

    .line 11
    new-instance v3, Lorg/xutils/http/HttpMethod;

    const-string v4, "PATCH"

    const/4 v5, 0x3

    const-string v6, "PATCH"

    invoke-direct {v3, v4, v5, v6}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/xutils/http/HttpMethod;->PATCH:Lorg/xutils/http/HttpMethod;

    .line 12
    new-instance v4, Lorg/xutils/http/HttpMethod;

    const-string v5, "HEAD"

    const/4 v6, 0x4

    const-string v7, "HEAD"

    invoke-direct {v4, v5, v6, v7}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/xutils/http/HttpMethod;->HEAD:Lorg/xutils/http/HttpMethod;

    .line 13
    new-instance v5, Lorg/xutils/http/HttpMethod;

    const-string v6, "MOVE"

    const/4 v7, 0x5

    const-string v8, "MOVE"

    invoke-direct {v5, v6, v7, v8}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/xutils/http/HttpMethod;->MOVE:Lorg/xutils/http/HttpMethod;

    .line 14
    new-instance v6, Lorg/xutils/http/HttpMethod;

    const-string v7, "COPY"

    const/4 v8, 0x6

    const-string v9, "COPY"

    invoke-direct {v6, v7, v8, v9}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lorg/xutils/http/HttpMethod;->COPY:Lorg/xutils/http/HttpMethod;

    .line 15
    new-instance v7, Lorg/xutils/http/HttpMethod;

    const-string v8, "DELETE"

    const/4 v9, 0x7

    const-string v10, "DELETE"

    invoke-direct {v7, v8, v9, v10}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/xutils/http/HttpMethod;->DELETE:Lorg/xutils/http/HttpMethod;

    .line 16
    new-instance v8, Lorg/xutils/http/HttpMethod;

    const-string v9, "OPTIONS"

    const/16 v10, 0x8

    const-string v11, "OPTIONS"

    invoke-direct {v8, v9, v10, v11}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lorg/xutils/http/HttpMethod;->OPTIONS:Lorg/xutils/http/HttpMethod;

    .line 17
    new-instance v9, Lorg/xutils/http/HttpMethod;

    const-string v10, "TRACE"

    const/16 v11, 0x9

    const-string v12, "TRACE"

    invoke-direct {v9, v10, v11, v12}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/xutils/http/HttpMethod;->TRACE:Lorg/xutils/http/HttpMethod;

    .line 18
    new-instance v10, Lorg/xutils/http/HttpMethod;

    const-string v11, "CONNECT"

    const/16 v12, 0xa

    const-string v13, "CONNECT"

    invoke-direct {v10, v11, v12, v13}, Lorg/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/xutils/http/HttpMethod;->CONNECT:Lorg/xutils/http/HttpMethod;

    .line 7
    const/16 v11, 0xb

    new-array v11, v11, [Lorg/xutils/http/HttpMethod;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v0, 0x1

    aput-object v1, v11, v0

    const/4 v0, 0x2

    aput-object v2, v11, v0

    const/4 v0, 0x3

    aput-object v3, v11, v0

    const/4 v0, 0x4

    aput-object v4, v11, v0

    const/4 v0, 0x5

    aput-object v5, v11, v0

    const/4 v0, 0x6

    aput-object v6, v11, v0

    const/4 v0, 0x7

    aput-object v7, v11, v0

    const/16 v0, 0x8

    aput-object v8, v11, v0

    const/16 v0, 0x9

    aput-object v9, v11, v0

    const/16 v0, 0xa

    aput-object v10, v11, v0

    sput-object v11, Lorg/xutils/http/HttpMethod;->$VALUES:[Lorg/xutils/http/HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lorg/xutils/http/HttpMethod;->value:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static permitsCache(Lorg/xutils/http/HttpMethod;)Z
    .registers 2

    .line 36
    sget-object v0, Lorg/xutils/http/HttpMethod;->GET:Lorg/xutils/http/HttpMethod;

    if-eq p0, v0, :cond_8

    sget-object v0, Lorg/xutils/http/HttpMethod;->POST:Lorg/xutils/http/HttpMethod;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static permitsRequestBody(Lorg/xutils/http/HttpMethod;)Z
    .registers 2

    .line 40
    if-eqz p0, :cond_12

    sget-object v0, Lorg/xutils/http/HttpMethod;->POST:Lorg/xutils/http/HttpMethod;

    if-eq p0, v0, :cond_12

    sget-object v0, Lorg/xutils/http/HttpMethod;->PUT:Lorg/xutils/http/HttpMethod;

    if-eq p0, v0, :cond_12

    sget-object v0, Lorg/xutils/http/HttpMethod;->PATCH:Lorg/xutils/http/HttpMethod;

    if-eq p0, v0, :cond_12

    sget-object v0, Lorg/xutils/http/HttpMethod;->DELETE:Lorg/xutils/http/HttpMethod;

    if-ne p0, v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static permitsRetry(Lorg/xutils/http/HttpMethod;)Z
    .registers 2

    .line 32
    sget-object v0, Lorg/xutils/http/HttpMethod;->GET:Lorg/xutils/http/HttpMethod;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xutils/http/HttpMethod;
    .registers 2

    .line 7
    const-class v0, Lorg/xutils/http/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/HttpMethod;

    return-object v0
.end method

.method public static values()[Lorg/xutils/http/HttpMethod;
    .registers 1

    .line 7
    sget-object v0, Lorg/xutils/http/HttpMethod;->$VALUES:[Lorg/xutils/http/HttpMethod;

    invoke-virtual {v0}, [Lorg/xutils/http/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xutils/http/HttpMethod;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lorg/xutils/http/HttpMethod;->value:Ljava/lang/String;

    return-object v0
.end method
