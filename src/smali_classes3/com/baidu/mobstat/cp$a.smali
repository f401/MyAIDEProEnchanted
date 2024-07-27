.class public Lcom/baidu/mobstat/cp$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/baidu/mobstat/cp$a;->a:I

    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/baidu/mobstat/cp$a;->b:I

    .line 20
    const/4 v0, 0x2

    sput v0, Lcom/baidu/mobstat/cp$a;->c:I

    return-void
.end method
