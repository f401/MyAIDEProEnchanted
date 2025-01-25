.class Labcd/Ji$d$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Ji$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field public FH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x2206101fb1430dcfL
    .end annotation
.end field

.field public Hw:J
    .annotation runtime Labcd/ru;
        field = 0x3c734792658766bcL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Ji$d$a;

    const-wide v1, 0x7a2fb35b89c47e1L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x225cb480ddb3db0L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ji$d$a;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, 0x145a16965b53bdb1L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Ji$d$a;->FH:Ljava/lang/String;

    iput-wide p2, p0, Labcd/Ji$d$a;->Hw:J
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Labcd/Ji$d$a;->DW:Z

    if-eqz v1, :cond_2f

    const-wide v2, 0x145a16965b53bdb1L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method
