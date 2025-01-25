.class public final enum Lcom/baidu/mobstat/ef$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/mobstat/ef$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobstat/ef$a;

.field public static final enum b:Lcom/baidu/mobstat/ef$a;

.field public static final enum c:Lcom/baidu/mobstat/ef$a;

.field private static final d:[Lcom/baidu/mobstat/ef$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 47
    new-instance v0, Lcom/baidu/mobstat/ef$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/ef$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/ef$a;->a:Lcom/baidu/mobstat/ef$a;

    new-instance v1, Lcom/baidu/mobstat/ef$a;

    const-string v3, "ONEWAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/baidu/mobstat/ef$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/baidu/mobstat/ef$a;->b:Lcom/baidu/mobstat/ef$a;

    new-instance v3, Lcom/baidu/mobstat/ef$a;

    const-string v5, "TWOWAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/baidu/mobstat/ef$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/baidu/mobstat/ef$a;->c:Lcom/baidu/mobstat/ef$a;

    .line 46
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/baidu/mobstat/ef$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/baidu/mobstat/ef$a;->d:[Lcom/baidu/mobstat/ef$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/ef$a;
    .registers 2

    .line 46
    const-class v0, Lcom/baidu/mobstat/ef$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mobstat/ef$a;

    return-object p0
.end method

.method public static values()[Lcom/baidu/mobstat/ef$a;
    .registers 1

    .line 46
    sget-object v0, Lcom/baidu/mobstat/ef$a;->d:[Lcom/baidu/mobstat/ef$a;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/ef$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/ef$a;

    return-object v0
.end method
