.class public final enum Lcom/baidu/mobstat/ea$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/ea$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobstat/ea$a;

.field public static final enum b:Lcom/baidu/mobstat/ea$a;

.field public static final enum c:Lcom/baidu/mobstat/ea$a;

.field public static final enum d:Lcom/baidu/mobstat/ea$a;

.field public static final enum e:Lcom/baidu/mobstat/ea$a;

.field private static final f:[Lcom/baidu/mobstat/ea$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/baidu/mobstat/ea$a;

    const-string v1, "NOT_YET_CONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/ea$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/ea$a;->a:Lcom/baidu/mobstat/ea$a;

    new-instance v0, Lcom/baidu/mobstat/ea$a;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mobstat/ea$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/ea$a;->b:Lcom/baidu/mobstat/ea$a;

    new-instance v0, Lcom/baidu/mobstat/ea$a;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v4}, Lcom/baidu/mobstat/ea$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/ea$a;->c:Lcom/baidu/mobstat/ea$a;

    new-instance v0, Lcom/baidu/mobstat/ea$a;

    const-string v1, "CLOSING"

    invoke-direct {v0, v1, v5}, Lcom/baidu/mobstat/ea$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/ea$a;->d:Lcom/baidu/mobstat/ea$a;

    new-instance v0, Lcom/baidu/mobstat/ea$a;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v6}, Lcom/baidu/mobstat/ea$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/ea$a;->e:Lcom/baidu/mobstat/ea$a;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/mobstat/ea$a;

    sget-object v1, Lcom/baidu/mobstat/ea$a;->a:Lcom/baidu/mobstat/ea$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobstat/ea$a;->b:Lcom/baidu/mobstat/ea$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mobstat/ea$a;->c:Lcom/baidu/mobstat/ea$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mobstat/ea$a;->d:Lcom/baidu/mobstat/ea$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mobstat/ea$a;->e:Lcom/baidu/mobstat/ea$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/baidu/mobstat/ea$a;->f:[Lcom/baidu/mobstat/ea$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/ea$a;
    .registers 2

    .line 22
    const-class v0, Lcom/baidu/mobstat/ea$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ea$a;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/ea$a;
    .registers 1

    .line 22
    sget-object v0, Lcom/baidu/mobstat/ea$a;->f:[Lcom/baidu/mobstat/ea$a;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/ea$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/ea$a;

    return-object v0
.end method
