.class public Labcd/Rc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Rc$a;,
        Labcd/Rc$b;,
        Labcd/Rc$c;,
        Labcd/Rc$d;
    }
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

.field public Hw:Labcd/Rc$c;

.field public v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Rc;

    const-wide v1, -0x2fba91d9cd5f0d10L  # -4.962911553885508E78

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x25f457d1d68c90bfL  # -5.850494325801454E125

    :try_start_6
    sget-boolean v3, Labcd/Rc;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Rc;->FH:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Labcd/Rc;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;Labcd/Rc$b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Rc;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x14d4beb08f145383L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Rc;->FH:Ljava/lang/String;

    iget-object v0, p2, Labcd/Rc$b;->FH:Labcd/Rc$c;

    iput-object v0, p0, Labcd/Rc;->Hw:Labcd/Rc$c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Rc;->v5:Z
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Labcd/Rc;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, 0x14d4beb08f145383L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Labcd/Rc$c;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Rc;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x69b1d68e74e83b14L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Rc;->FH:Ljava/lang/String;

    iput-object p2, p0, Labcd/Rc;->Hw:Labcd/Rc$c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Rc;->v5:Z
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    sget-boolean v1, Labcd/Rc;->DW:Z

    if-eqz v1, :cond_29

    const-wide v2, 0x69b1d68e74e83b14L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Labcd/Rc$d;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Rc;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x3f26abbe431b368cL  # -25937.02715415643

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Rc;->FH:Ljava/lang/String;

    new-instance v0, Labcd/Rc$c;

    invoke-direct {v0, p2}, Labcd/Rc$c;-><init>(Labcd/Rc$d;)V

    iput-object v0, p0, Labcd/Rc;->Hw:Labcd/Rc$c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Rc;->v5:Z
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Labcd/Rc;->DW:Z

    if-eqz v1, :cond_2e

    const-wide v2, -0x3f26abbe431b368cL  # -25937.02715415643

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v0
.end method
