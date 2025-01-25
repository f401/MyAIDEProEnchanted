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
    .registers 3

    const-class v0, Labcd/Rc$b;

    const-wide v1, -0x43e3df54911161bbL  # -3.8120027784586056E-19

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Rc$c;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x787b8309fd39de0L

    :try_start_6
    sget-boolean v3, Labcd/Rc$b;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Rc$b;->FH:Labcd/Rc$c;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Labcd/Rc$b;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method public constructor <init>(Labcd/Rc$d;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x326a238ec1f4160L  # -2.531356091633495E293

    :try_start_6
    sget-boolean v3, Labcd/Rc$b;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/Rc$c;

    invoke-direct {v3, p1}, Labcd/Rc$c;-><init>(Labcd/Rc$d;)V

    iput-object v3, p0, Labcd/Rc$b;->FH:Labcd/Rc$c;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Labcd/Rc$b;->DW:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v3
.end method
