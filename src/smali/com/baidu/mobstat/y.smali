.class public final Lcom/baidu/mobstat/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = true

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-string v0, "https://datax.baidu.com/xs.gif"

    sput-object v0, Lcom/baidu/mobstat/y;->b:Ljava/lang/String;

    .line 17
    const-string v0, "https://dxp.baidu.com/upgrade"

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

    return-void
.end method
