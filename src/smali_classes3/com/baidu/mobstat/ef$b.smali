.class public final enum Lcom/baidu/mobstat/ef$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/ef$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobstat/ef$b;

.field public static final enum b:Lcom/baidu/mobstat/ef$b;

.field private static final c:[Lcom/baidu/mobstat/ef$b;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/baidu/mobstat/ef$b;

    const-string v1, "MATCHED"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/ef$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/ef$b;->a:Lcom/baidu/mobstat/ef$b;

    .line 41
    new-instance v0, Lcom/baidu/mobstat/ef$b;

    const-string v1, "NOT_MATCHED"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mobstat/ef$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/ef$b;->b:Lcom/baidu/mobstat/ef$b;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/mobstat/ef$b;

    sget-object v1, Lcom/baidu/mobstat/ef$b;->a:Lcom/baidu/mobstat/ef$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobstat/ef$b;->b:Lcom/baidu/mobstat/ef$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/mobstat/ef$b;->c:[Lcom/baidu/mobstat/ef$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/ef$b;
    .registers 2

    .line 37
    const-class v0, Lcom/baidu/mobstat/ef$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ef$b;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/ef$b;
    .registers 1

    .line 37
    sget-object v0, Lcom/baidu/mobstat/ef$b;->c:[Lcom/baidu/mobstat/ef$b;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/ef$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/ef$b;

    return-object v0
.end method
