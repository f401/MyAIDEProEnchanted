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
        "Ljava/lang/Enum",
        "<",
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
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/baidu/mobstat/es$a;

    const-string v1, "CONTINUOUS"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mobstat/es$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/es$a;->a:Lcom/baidu/mobstat/es$a;

    new-instance v0, Lcom/baidu/mobstat/es$a;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v4}, Lcom/baidu/mobstat/es$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$a;

    new-instance v0, Lcom/baidu/mobstat/es$a;

    const-string v1, "BINARY"

    invoke-direct {v0, v1, v5}, Lcom/baidu/mobstat/es$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/es$a;->c:Lcom/baidu/mobstat/es$a;

    new-instance v0, Lcom/baidu/mobstat/es$a;

    const-string v1, "PING"

    invoke-direct {v0, v1, v6}, Lcom/baidu/mobstat/es$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/es$a;->d:Lcom/baidu/mobstat/es$a;

    new-instance v0, Lcom/baidu/mobstat/es$a;

    const-string v1, "PONG"

    invoke-direct {v0, v1, v7}, Lcom/baidu/mobstat/es$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/es$a;->e:Lcom/baidu/mobstat/es$a;

    new-instance v0, Lcom/baidu/mobstat/es$a;

    const-string v1, "CLOSING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/es$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/es$a;->f:Lcom/baidu/mobstat/es$a;

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/baidu/mobstat/es$a;

    sget-object v1, Lcom/baidu/mobstat/es$a;->a:Lcom/baidu/mobstat/es$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mobstat/es$a;->c:Lcom/baidu/mobstat/es$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mobstat/es$a;->d:Lcom/baidu/mobstat/es$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/mobstat/es$a;->e:Lcom/baidu/mobstat/es$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/mobstat/es$a;->f:Lcom/baidu/mobstat/es$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/mobstat/es$a;->g:[Lcom/baidu/mobstat/es$a;

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

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/es$a;

    return-object v0
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
