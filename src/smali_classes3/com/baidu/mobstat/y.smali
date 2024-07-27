.class public final Lcom/baidu/mobstat/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x9

    .line 7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mobstat/y;->a:Z

    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_0

    const-string v0, "http://datax.baidu.com/xs.gif"

    :goto_0
    sput-object v0, Lcom/baidu/mobstat/y;->b:Ljava/lang/String;

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    const-string v0, "http://dxp.baidu.com/upgrade"

    :goto_1
    sput-object v0, Lcom/baidu/mobstat/y;->c:Ljava/lang/String;

    .line 45
    const-string v0, ".mtj_timestamp"

    sput-object v0, Lcom/baidu/mobstat/y;->d:Ljava/lang/String;

    .line 47
    const-string v0, "__send_log_data_"

    sput-object v0, Lcom/baidu/mobstat/y;->f:Ljava/lang/String;

    .line 48
    const-string v0, ".confd"

    sput-object v0, Lcom/baidu/mobstat/y;->e:Ljava/lang/String;

    .line 50
    return-void

    .line 12
    :cond_0
    const-string v0, "https://datax.baidu.com/xs.gif"

    goto :goto_0

    .line 17
    :cond_1
    const-string v0, "https://dxp.baidu.com/upgrade"

    goto :goto_1
.end method
