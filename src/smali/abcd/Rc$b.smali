.class public Labcd/Rc$b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Rc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
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
.field public FH:Labcd/Rc$c;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x43e3df54911161bbL    # -3.8120027784586056E-19

    const-class v0, Labcd/Rc$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Rc$c;)V
    .registers 8

    const-wide v4, 0x787b8309fd39de0L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Rc$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x787b8309fd39de0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Rc$b;->FH:Labcd/Rc$c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Rc$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/Rc$d;)V
    .registers 8

    const-wide v4, -0x326a238ec1f4160L    # -2.531356091633495E293

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Rc$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x326a238ec1f4160L    # -2.531356091633495E293

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Rc$c;

    invoke-direct {v0, p1}, Labcd/Rc$c;-><init>(Labcd/Rc$d;)V

    iput-object v0, p0, Labcd/Rc$b;->FH:Labcd/Rc$c;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Rc$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
