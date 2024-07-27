.class Labcd/TH$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/TH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private volatile DW:Labcd/TH$b;

.field final FH:Labcd/TH;

.field private final j6:J


# direct methods
.method constructor <init>(Labcd/TH;)V
    .registers 6

    iput-object p1, p0, Labcd/TH$a;->FH:Labcd/TH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Labcd/TH$b;->j6:Labcd/TH$b;

    iput-object v0, p0, Labcd/TH$a;->DW:Labcd/TH$b;

    invoke-static {p1}, Labcd/TH;->j6(Labcd/TH;)Labcd/NH;

    move-result-object v0

    invoke-virtual {v0}, Labcd/NH;->we()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Labcd/TH;->j6(Labcd/TH;)Labcd/NH;

    move-result-object v0

    invoke-virtual {v0}, Labcd/NH;->tp()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    :cond_0
    int-to-long v0, v0

    invoke-static {p1}, Labcd/TH;->j6(Labcd/TH;)Labcd/NH;

    move-result-object v2

    invoke-virtual {v2}, Labcd/NH;->v5()J

    move-result-wide v2

    mul-long/2addr v0, v2

    invoke-static {p1}, Labcd/TH;->j6(Labcd/TH;)Labcd/NH;

    move-result-object v2

    invoke-virtual {v2}, Labcd/NH;->j6()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Labcd/TH$a;->j6:J

    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Labcd/TH$a;->j6:J

    goto :goto_0
.end method

.method static synthetic j6(Labcd/TH$a;Labcd/TH$b;)V
    .registers 2

    iput-object p1, p0, Labcd/TH$a;->DW:Labcd/TH$b;

    return-void
.end method
