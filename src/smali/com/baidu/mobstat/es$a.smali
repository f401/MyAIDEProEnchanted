.class public final enum Lcom/baidu/mobstat/es$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mobstat/es$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobstat/es$a;

.field public static final enum b:Lcom/baidu/mobstat/es$a;

.field public static final enum c:Lcom/baidu/mobstat/es$a;

.field public static final enum d:Lcom/baidu/mobstat/es$a;

.field public static final enum e:Lcom/baidu/mobstat/es$a;

.field public static final enum f:Lcom/baidu/mobstat/es$a;

.field private static final g:[Lcom/baidu/mobstat/es$a;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 12
    new-instance v0, Lcom/baidu/mobstat/es$a;

    const-string v1, "CONTINUOUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/es$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/es$a;->a:Lcom/baidu/mobstat/es$a;

    new-instance v1, Lcom/baidu/mobstat/es$a;

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/baidu/mobstat/es$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$a;

    new-instance v3, Lcom/baidu/mobstat/es$a;

    const-string v5, "BINARY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/baidu/mobstat/es$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/mobstat/es$a;->c:Lcom/baidu/mobstat/es$a;

    new-instance v5, Lcom/baidu/mobstat/es$a;

    const-string v7, "PING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/baidu/mobstat/es$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/baidu/mobstat/es$a;->d:Lcom/baidu/mobstat/es$a;

    new-instance v7, Lcom/baidu/mobstat/es$a;

    const-string v9, "PONG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/baidu/mobstat/es$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/baidu/mobstat/es$a;->e:Lcom/baidu/mobstat/es$a;

    new-instance v9, Lcom/baidu/mobstat/es$a;

    const-string v11, "CLOSING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/baidu/mobstat/es$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/baidu/mobstat/es$a;->f:Lcom/baidu/mobstat/es$a;

    .line 11
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/baidu/mobstat/es$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/baidu/mobstat/es$a;->g:[Lcom/baidu/mobstat/es$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/es$a;
    .registers 2

    .line 11
    const-class v0, Lcom/baidu/mobstat/es$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mobstat/es$a;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mobstat/es$a;
    .registers 1

    .line 11
    sget-object v0, Lcom/baidu/mobstat/es$a;->g:[Lcom/baidu/mobstat/es$a;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/es$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/es$a;

    return-object v0
.end method
