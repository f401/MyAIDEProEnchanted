.class Lcom/aide/ui/build/OutputConsole$b;
.super Ljava/io/OutputStream;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/build/OutputConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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
.field final FH:Lcom/aide/ui/build/OutputConsole;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x2efbdb7c90f91d0L    # -2.596015741091946E294

    const-class v0, Lcom/aide/ui/build/OutputConsole$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/ui/build/OutputConsole;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x46b432336ce3734L
    .end annotation

    const-wide v4, 0x34988ee34cb1f83dL    # 2.5038975605508904E-55

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x34988ee34cb1f83dL    # 2.5038975605508904E-55

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/build/OutputConsole$b;->FH:Lcom/aide/ui/build/OutputConsole;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Lcom/aide/ui/build/OutputConsole;Lcom/aide/ui/build/h;)V
    .registers 10

    const-wide v2, 0x2c30102ee024ed4L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2c30102ee024ed4L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/ui/build/OutputConsole$b;-><init>(Lcom/aide/ui/build/OutputConsole;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$b;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public write(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x4887b90e927ca13L
    .end annotation

    const-wide v2, -0x4e593b3f215bb56cL    # -1.6494787560956212E-69

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4e593b3f215bb56cL    # -1.6494787560956212E-69

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$b;->FH:Lcom/aide/ui/build/OutputConsole;

    int-to-char v1, p1

    invoke-static {v0, v1}, Lcom/aide/ui/build/OutputConsole;->j6(Lcom/aide/ui/build/OutputConsole;C)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$b;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public write([B)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x3bdc0ec91716e93L
    .end annotation

    const-wide v2, 0xd2ff7f9b9f42180L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xd2ff7f9b9f42180L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/aide/ui/build/OutputConsole$b;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsole$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public write([BII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x149905b83746ff29L
    .end annotation

    const-wide v8, 0x6d3262c5c435fe0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x6d3262c5c435fe0L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsole$b;->FH:Lcom/aide/ui/build/OutputConsole;

    invoke-static {v0, p1, p2, p3}, Lcom/aide/ui/build/OutputConsole;->j6(Lcom/aide/ui/build/OutputConsole;[BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/build/OutputConsole$b;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
