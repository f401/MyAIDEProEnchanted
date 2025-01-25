.class public Lcom/aide/ui/views/CodeEditText$a;
.super Lcom/aide/ui/views/editor/g;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/CodeEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# static fields
.field private static Mr:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static U2:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final a8:Lcom/aide/ui/views/CodeEditText;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/CodeEditText$a;

    const-wide v1, -0x10f9ebd4986eb738L  # -6.537955616171945E226

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/CodeEditText;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x1af1ced9bb9d5dc1L  # 6.866540267393047E-179

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$a;->Mr:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/views/CodeEditText$a;->a8:Lcom/aide/ui/views/CodeEditText;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;-><init>()V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/CodeEditText$a;->U2:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method public constructor <init>(Lcom/aide/ui/views/CodeEditText;Ljava/io/Reader;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$a;->Mr:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xdd296db1fd3c054L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    iput-object p1, p0, Lcom/aide/ui/views/CodeEditText$a;->a8:Lcom/aide/ui/views/CodeEditText;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, v0, p3}, Lcom/aide/ui/views/editor/g;-><init>(Ljava/io/Reader;ZZI)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$a;->U2:Z

    if-eqz v1, :cond_31

    const-wide v2, 0xdd296db1fd3c054L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method


# virtual methods
.method public DW(CII)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$a;->Mr:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Character;

    invoke-direct {v4, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1f9b095c2a5bb17dL

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    :cond_1c
    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$a;->U2:Z

    if-eqz v1, :cond_3b

    const-wide v2, 0x1f9b095c2a5bb17dL

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method public DW(III)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$a;->Mr:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xd5cd6f552862eb4L  # 2.63981795915129E-244

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    :cond_1c
    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$a;->U2:Z

    if-eqz v1, :cond_3b

    const-wide v2, 0xd5cd6f552862eb4L  # 2.63981795915129E-244

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method public J8(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$a;->Mr:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x8e2494a8134d720L  # 7.08891083762693E-266

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$a;->U2:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x8e2494a8134d720L  # 7.08891083762693E-266

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public QX(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$a;->Mr:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x4ea216325af47b20L  # 6.241492805010459E70

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$a;->U2:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x4ea216325af47b20L  # 6.241492805010459E70

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public Ws(II)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$a;->Mr:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0xa72357dee9a0173L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_18

    :cond_16
    const/4 p1, 0x0

    return p1

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$a;->U2:Z

    if-eqz v1, :cond_31

    const-wide v2, -0xa72357dee9a0173L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public j6(CII)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$a;->Mr:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Character;

    invoke-direct {v4, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x545a15defa61781L

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    :cond_1c
    return-void

    :catchall_1d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$a;->U2:Z

    if-eqz v1, :cond_3b

    const-wide v2, -0x545a15defa61781L

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method public j6(IIIILjava/lang/String;)V
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CodeEditText$a;->Mr:Z

    if-eqz v0, :cond_22

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2946cb6e8be5f0L  # 7.030271499924016E-308

    move-object v3, p0

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    new-instance v0, Labcd/hm;

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v3, p3, -0x1

    add-int/lit8 v4, p4, -0x2

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/hm;-><init>(IIII)V

    invoke-virtual {p0, v0, p0}, Lcom/aide/ui/views/editor/g;->j6(Labcd/hm;Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_3d

    :try_start_32
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1, v0, p0}, Lcom/aide/ui/views/editor/g;->j6(IILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3a} :catch_3b
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3d

    goto :goto_3c

    :catch_3b
    move-exception p1

    :goto_3c
    return-void

    :catchall_3d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CodeEditText$a;->U2:Z

    if-eqz v1, :cond_61

    const-wide v2, 0x2946cb6e8be5f0L  # 7.030271499924016E-308

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_61
    throw v0
.end method

.method public vy()V
    .registers 5

    const-wide v0, -0x35103806c9d8a90L  # -3.865234362206876E292

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CodeEditText$a;->Mr:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CodeEditText$a;->U2:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method
