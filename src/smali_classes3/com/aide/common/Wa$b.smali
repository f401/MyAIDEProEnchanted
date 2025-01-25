.class Lcom/aide/common/Wa$b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/common/Wa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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
.field private FH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x87d782de1115850L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x33869d501c4b57L
    .end annotation
.end field

.field private Zo:Z
    .annotation runtime Labcd/ru;
        field = -0x22d9a10d93e312e0L
    .end annotation
.end field

.field private v5:Ljava/lang/Runnable;
    .annotation runtime Labcd/ru;
        field = -0x2731592bcf4002a3L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/common/Wa$b;

    const-wide v1, 0x2abb2f9cf64c4f1bL  # 7.586240825140102E-103

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1b044b4327653f0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Wa$b;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x1e56522777d6e375L

    invoke-static {v2, v3, v1, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/aide/common/Wa$b;->Hw:I

    iput-object p2, p0, Lcom/aide/common/Wa$b;->FH:Ljava/lang/String;

    iput-object v1, p0, Lcom/aide/common/Wa$b;->v5:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/common/Wa$b;->Zo:Z
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Wa$b;->DW:Z

    if-eqz v1, :cond_34

    const-wide v2, 0x1e56522777d6e375L

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Runnable;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x13fcf6aa0689b2d9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Wa$b;->j6:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x18e0749dba4eef80L  # -5.490103274337135E188

    const/4 v3, 0x0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/aide/common/Wa$b;->Hw:I

    iput-object p2, p0, Lcom/aide/common/Wa$b;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/common/Wa$b;->v5:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/common/Wa$b;->Zo:Z
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Wa$b;->DW:Z

    if-eqz v1, :cond_37

    const-wide v2, -0x18e0749dba4eef80L  # -5.490103274337135E188

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Runnable;Z)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x6fb8fd469689c300L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Wa$b;->j6:Z

    if-eqz v0, :cond_19

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0xb62dd12396be22fL

    const/4 v3, 0x0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/aide/common/Wa$b;->Hw:I

    iput-object p2, p0, Lcom/aide/common/Wa$b;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/common/Wa$b;->v5:Ljava/lang/Runnable;

    iput-boolean p4, p0, Lcom/aide/common/Wa$b;->Zo:Z
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Wa$b;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, 0xb62dd12396be22fL

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method static synthetic DW(Lcom/aide/common/Wa$b;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/aide/common/Wa$b;->v5:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic FH(Lcom/aide/common/Wa$b;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/common/Wa$b;->FH:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Hw(Lcom/aide/common/Wa$b;)I
    .registers 1

    iget p0, p0, Lcom/aide/common/Wa$b;->Hw:I

    return p0
.end method

.method static synthetic j6(Lcom/aide/common/Wa$b;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/common/Wa$b;->Zo:Z

    return p0
.end method
