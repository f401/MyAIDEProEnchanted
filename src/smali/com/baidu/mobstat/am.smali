.class public abstract Lcom/baidu/mobstat/am;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/am$a;,
        Lcom/baidu/mobstat/am$b;,
        Lcom/baidu/mobstat/am$c;,
        Lcom/baidu/mobstat/am$d;,
        Lcom/baidu/mobstat/am$e;,
        Lcom/baidu/mobstat/am$f;,
        Lcom/baidu/mobstat/am$g;
    }
.end annotation


# static fields
.field public static c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/baidu/mobstat/am;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Lcom/baidu/mobstat/am$a;

.field protected b:Lcom/baidu/mobstat/bq$a;

.field private final d:Ljava/lang/String;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/baidu/mobstat/am$1;

    invoke-direct {v0}, Lcom/baidu/mobstat/am$1;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/am;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mobstat/am;->d:Ljava/lang/String;

    iput-wide p2, p0, Lcom/baidu/mobstat/am;->e:J

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/baidu/mobstat/am$d;Lcom/baidu/mobstat/bw$a;)Lcom/baidu/mobstat/am$e;
.end method

.method public abstract a(Ljava/lang/String;Lcom/baidu/mobstat/am$f;)Lcom/baidu/mobstat/am$g;
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mobstat/am;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/baidu/mobstat/am$a;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/mobstat/am;->a:Lcom/baidu/mobstat/am$a;

    iget-object p1, p1, Lcom/baidu/mobstat/am$a;->b:Lcom/baidu/mobstat/bq;

    invoke-virtual {p1}, Lcom/baidu/mobstat/bq;->b()Lcom/baidu/mobstat/bq$a;

    move-result-object p1

    const-string v0, "cs"

    invoke-virtual {p1, v0}, Lcom/baidu/mobstat/bq$a;->a(Ljava/lang/String;)Lcom/baidu/mobstat/bq$a;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/am;->b:Lcom/baidu/mobstat/bq$a;

    return-void
.end method

.method public abstract a(Lcom/baidu/mobstat/am$c;)V
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/baidu/mobstat/am;->e:J

    return-wide v0
.end method
