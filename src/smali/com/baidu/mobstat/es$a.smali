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
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 12
    new-instance v0, Lcom/baidu/mobstat/es$a;

    const-string v1, "CONTINUOUS"

    invoke-direct {v0, v1, v8}, Lcom/baidu/mobstat/es$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/es$a;->a:Lcom/baidu/mobstat/es$a;

    new-instance v1, Lcom/baidu/mobstat/es$a;

    const-string v2, "TEXT"

    invoke-direct {v1, v2, v9}, Lcom/baidu/mobstat/es$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/baidu/mobstat/es$a;->b:Lcom/baidu/mobstat/es$a;

    new-instance v2, Lcom/baidu/mobstat/es$a;

    const-string v3, "BINARY"

    invoke-direct {v2, v3, v10}, Lcom/baidu/mobstat/es$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mobstat/es$a;->c:Lcom/baidu/mobstat/es$a;

    new-instance v3, Lcom/baidu/mobstat/es$a;

    const-string v4, "PING"

    invoke-direct {v3, v4, v11}, Lcom/baidu/mobstat/es$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/mobstat/es$a;->d:Lcom/baidu/mobstat/es$a;

    new-instance v4, Lcom/baidu/mobstat/es$a;

    const-string v5, "PONG"

    invoke-direct {v4, v5, v12}, Lcom/baidu/mobstat/es$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mobstat/es$a;->e:Lcom/baidu/mobstat/es$a;

    new-instance v5, Lcom/baidu/mobstat/es$a;

    const-string v6, "CLOSING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/baidu/mobstat/es$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/baidu/mobstat/es$a;->f:Lcom/baidu/mobstat/es$a;

    .line 11
    const/4 v6, 0x6

    new-array v6, v6, [Lcom/baidu/mobstat/es$a;

    aput-object v0, v6, v8

    aput-object v1, v6, v9

    aput-object v2, v6, v10

    aput-object v3, v6, v11

    aput-object v4, v6, v12

    const/4 v0, 0x5

    aput-object v5, v6, v0

    sput-object v6, Lcom/baidu/mobstat/es$a;->g:[Lcom/baidu/mobstat/es$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
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
    .locals 1

    .line 11
    const-class v0, Lcom/baidu/mobstat/es$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/es$a;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/es$a;
    .locals 1

    .line 11
    sget-object v0, Lcom/baidu/mobstat/es$a;->g:[Lcom/baidu/mobstat/es$a;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/es$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/es$a;

    return-object v0
.end method
