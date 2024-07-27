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
    .registers 4

    const-wide v2, -0x2fba91d9cd5f0d10L    # -4.962911553885508E78

    const-class v0, Labcd/Rc;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    const-wide v4, -0x25f457d1d68c90bfL    # -5.850494325801454E125

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Rc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x25f457d1d68c90bfL    # -5.850494325801454E125

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Rc;->FH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Rc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Labcd/Rc$b;)V
    .registers 10

    const-wide v2, 0x14d4beb08f145383L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Rc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x14d4beb08f145383L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Rc;->FH:Ljava/lang/String;

    iget-object v0, p2, Labcd/Rc$b;->FH:Labcd/Rc$c;

    iput-object v0, p0, Labcd/Rc;->Hw:Labcd/Rc$c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/Rc;->v5:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Rc;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Labcd/Rc$c;)V
    .registers 10

    const-wide v2, 0x69b1d68e74e83b14L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Rc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x69b1d68e74e83b14L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Rc;->FH:Ljava/lang/String;

    iput-object p2, p0, Labcd/Rc;->Hw:Labcd/Rc$c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Rc;->v5:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Rc;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Labcd/Rc$d;)V
    .registers 10

    const-wide v2, -0x3f26abbe431b368cL    # -25937.02715415643

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Rc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3f26abbe431b368cL    # -25937.02715415643

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Rc;->FH:Ljava/lang/String;

    new-instance v0, Labcd/Rc$c;

    invoke-direct {v0, p2}, Labcd/Rc$c;-><init>(Labcd/Rc$d;)V

    iput-object v0, p0, Labcd/Rc;->Hw:Labcd/Rc$c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/Rc;->v5:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Rc;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
