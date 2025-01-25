.class public abstract Lcom/baidu/mobstat/cv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .registers 4

    .line 119
    invoke-virtual {p0}, Lcom/baidu/mobstat/cv;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    sget v0, Lcom/baidu/mobstat/cv;->a:I

    if-lt p1, v0, :cond_11

    .line 120
    invoke-virtual {p0}, Lcom/baidu/mobstat/cv;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void
.end method

.method private d(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5

    .line 100
    const-string v0, ""

    if-nez p1, :cond_5

    return-object v0

    :cond_5
    move-object v1, p1

    :goto_6
    if-eqz v1, :cond_12

    .line 106
    instance-of v2, v1, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_d

    return-object v0

    .line 109
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_6

    .line 112
    :cond_12
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 113
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 114
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 115
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 40
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/cv;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/baidu/mobstat/cv;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/cv;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 3

    .line 44
    const/4 v0, 0x3

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/cv;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/cv;->a(ILjava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .line 64
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/cv;->a(ILjava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/baidu/mobstat/cv;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/cv;->a(ILjava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .registers 3

    .line 68
    const/4 v0, 0x5

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/cv;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/cv;->a(ILjava/lang/String;)V

    return-void
.end method

.method public abstract b()Z
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .line 76
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/cv;->a(ILjava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/baidu/mobstat/cv;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/cv;->a(ILjava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .registers 3

    .line 80
    const/4 v0, 0x6

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/cv;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/cv;->a(ILjava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/baidu/mobstat/cv;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/cv;->a(ILjava/lang/String;)V

    return-void
.end method
