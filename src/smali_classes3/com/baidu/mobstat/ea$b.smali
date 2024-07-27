.class public final enum Lcom/baidu/mobstat/ea$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/ea$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobstat/ea$b;

.field private static final b:[Lcom/baidu/mobstat/ea$b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/baidu/mobstat/ea$b;

    const-string v1, "CLIENT"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/ea$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/ea$b;->a:Lcom/baidu/mobstat/ea$b;

    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/baidu/mobstat/ea$b;

    sget-object v1, Lcom/baidu/mobstat/ea$b;->a:Lcom/baidu/mobstat/ea$b;

    aput-object v1, v0, v2

    sput-object v0, Lcom/baidu/mobstat/ea$b;->b:[Lcom/baidu/mobstat/ea$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/ea$b;
    .registers 2

    .line 15
    const-class v0, Lcom/baidu/mobstat/ea$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ea$b;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/ea$b;
    .registers 1

    .line 15
    sget-object v0, Lcom/baidu/mobstat/ea$b;->b:[Lcom/baidu/mobstat/ea$b;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/ea$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/ea$b;

    return-object v0
.end method
