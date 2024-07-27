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
        "Ljava/lang/Enum",
        "<",
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
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/baidu/mobstat/ef$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/ef$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/ef$a;->a:Lcom/baidu/mobstat/ef$a;

    new-instance v0, Lcom/baidu/mobstat/ef$a;

    const-string v1, "ONEWAY"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mobstat/ef$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/ef$a;->b:Lcom/baidu/mobstat/ef$a;

    new-instance v0, Lcom/baidu/mobstat/ef$a;

    const-string v1, "TWOWAY"

    invoke-direct {v0, v1, v4}, Lcom/baidu/mobstat/ef$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/ef$a;->c:Lcom/baidu/mobstat/ef$a;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/mobstat/ef$a;

    sget-object v1, Lcom/baidu/mobstat/ef$a;->a:Lcom/baidu/mobstat/ef$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobstat/ef$a;->b:Lcom/baidu/mobstat/ef$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mobstat/ef$a;->c:Lcom/baidu/mobstat/ef$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/mobstat/ef$a;->d:[Lcom/baidu/mobstat/ef$a;

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

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ef$a;

    return-object v0
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
