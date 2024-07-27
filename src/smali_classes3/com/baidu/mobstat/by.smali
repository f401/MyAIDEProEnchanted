.class Lcom/baidu/mobstat/by;
.super Lcom/baidu/mobstat/di;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/baidu/mobstat/by;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-string v0, "baidu_mtj_sdk_record"

    sput-object v0, Lcom/baidu/mobstat/by;->a:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/baidu/mobstat/by;

    invoke-direct {v0}, Lcom/baidu/mobstat/by;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/by;->b:Lcom/baidu/mobstat/by;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/baidu/mobstat/di;-><init>()V

    .line 31
    return-void
.end method

.method public static a()Lcom/baidu/mobstat/by;
    .registers 1

    .line 39
    sget-object v0, Lcom/baidu/mobstat/by;->b:Lcom/baidu/mobstat/by;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4

    .line 44
    sget-object v0, Lcom/baidu/mobstat/by;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;J)V
    .registers 6

    .line 52
    const-string v0, "session_first_visit_time"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/by;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 53
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 100
    const-string v0, "session_today_visit_count"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/by;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/lang/Long;
    .registers 6

    .line 60
    const-string v0, "session_first_visit_time"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/mobstat/by;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;J)V
    .registers 6

    .line 68
    const-string v0, "session_last_visit_time"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/by;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 69
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 115
    const-string v0, "session_recent_visit"

    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/by;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public c(Landroid/content/Context;)Ljava/lang/Long;
    .registers 6

    .line 76
    const-string v0, "session_last_visit_time"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/mobstat/by;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;J)V
    .registers 6

    .line 84
    const-string v0, "session_visit_interval"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/by;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 85
    return-void
.end method

.method public d(Landroid/content/Context;)Ljava/lang/Long;
    .registers 6

    .line 92
    const-string v0, "session_visit_interval"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/mobstat/by;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 107
    const-string v0, "session_today_visit_count"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/by;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 123
    const-string v0, "session_recent_visit"

    const-string v1, ""

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/by;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
