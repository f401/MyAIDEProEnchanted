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
        "Ljava/lang/Enum<",
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
    .registers 11

    .line 23
    new-instance v0, Lcom/baidu/mobstat/ea$a;

    const-string v1, "NOT_YET_CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/ea$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/ea$a;->a:Lcom/baidu/mobstat/ea$a;

    new-instance v1, Lcom/baidu/mobstat/ea$a;

    const-string v3, "CONNECTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/baidu/mobstat/ea$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/baidu/mobstat/ea$a;->b:Lcom/baidu/mobstat/ea$a;

    new-instance v3, Lcom/baidu/mobstat/ea$a;

    const-string v5, "OPEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/baidu/mobstat/ea$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/mobstat/ea$a;->c:Lcom/baidu/mobstat/ea$a;

    new-instance v5, Lcom/baidu/mobstat/ea$a;

    const-string v7, "CLOSING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/baidu/mobstat/ea$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/baidu/mobstat/ea$a;->d:Lcom/baidu/mobstat/ea$a;

    new-instance v7, Lcom/baidu/mobstat/ea$a;

    const-string v9, "CLOSED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/baidu/mobstat/ea$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/baidu/mobstat/ea$a;->e:Lcom/baidu/mobstat/ea$a;

    .line 22
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/baidu/mobstat/ea$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/baidu/mobstat/ea$a;->f:[Lcom/baidu/mobstat/ea$a;

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

    move-result-object p0

    check-cast p0, Lcom/baidu/mobstat/ea$a;

    return-object p0
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
