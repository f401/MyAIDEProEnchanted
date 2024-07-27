.class public Lcom/baidu/mobstat/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    const-string v0, "mtj_vizParser.js"

    sput-object v0, Lcom/baidu/mobstat/cb;->a:Ljava/lang/String;

    .line 80
    const-string v0, "mtj_autoTracker.js"

    sput-object v0, Lcom/baidu/mobstat/cb;->b:Ljava/lang/String;

    .line 81
    const-string v0, "mtj_auto.config"

    sput-object v0, Lcom/baidu/mobstat/cb;->c:Ljava/lang/String;

    .line 82
    const-string v0, "trace_circle.data"

    sput-object v0, Lcom/baidu/mobstat/cb;->d:Ljava/lang/String;

    .line 84
    return-void
.end method
