.class public Lcom/baidu/mobstat/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Ljava/lang/String;

.field public static d:Z

.field public static e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10
    sput-boolean v2, Lcom/baidu/mobstat/z;->a:Z

    .line 12
    sput-boolean v1, Lcom/baidu/mobstat/z;->b:Z

    .line 15
    const-string v0, "M"

    sput-object v0, Lcom/baidu/mobstat/z;->c:Ljava/lang/String;

    .line 17
    sput-boolean v1, Lcom/baidu/mobstat/z;->d:Z

    .line 19
    sput-boolean v2, Lcom/baidu/mobstat/z;->e:Z

    return-void
.end method
