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
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 23
    new-instance v0, Lcom/baidu/mobstat/ea$a;

    const-string v1, "NOT_YET_CONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/baidu/mobstat/ea$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/ea$a;->a:Lcom/baidu/mobstat/ea$a;

    new-instance v1, Lcom/baidu/mobstat/ea$a;

    const-string v2, "CONNECTING"

    invoke-direct {v1, v2, v7}, Lcom/baidu/mobstat/ea$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/baidu/mobstat/ea$a;->b:Lcom/baidu/mobstat/ea$a;

    new-instance v2, Lcom/baidu/mobstat/ea$a;

    const-string v3, "OPEN"

    invoke-direct {v2, v3, v8}, Lcom/baidu/mobstat/ea$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/mobstat/ea$a;->c:Lcom/baidu/mobstat/ea$a;

    new-instance v3, Lcom/baidu/mobstat/ea$a;

    const-string v4, "CLOSING"

    invoke-direct {v3, v4, v9}, Lcom/baidu/mobstat/ea$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/mobstat/ea$a;->d:Lcom/baidu/mobstat/ea$a;

    new-instance v4, Lcom/baidu/mobstat/ea$a;

    const-string v5, "CLOSED"

    invoke-direct {v4, v5, v10}, Lcom/baidu/mobstat/ea$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/baidu/mobstat/ea$a;->e:Lcom/baidu/mobstat/ea$a;

    .line 22
    const/4 v5, 0x5

    new-array v5, v5, [Lcom/baidu/mobstat/ea$a;

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    aput-object v2, v5, v8

    aput-object v3, v5, v9

    aput-object v4, v5, v10

    sput-object v5, Lcom/baidu/mobstat/ea$a;->f:[Lcom/baidu/mobstat/ea$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
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
    .locals 1

    .line 22
    const-class v0, Lcom/baidu/mobstat/ea$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ea$a;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/ea$a;
    .locals 1

    .line 22
    sget-object v0, Lcom/baidu/mobstat/ea$a;->f:[Lcom/baidu/mobstat/ea$a;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/ea$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/ea$a;

    return-object v0
.end method
