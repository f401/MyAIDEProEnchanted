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
    .registers 4

    const-wide v2, 0x2abb2f9cf64c4f1bL    # 7.586240825140102E-103

    const-class v0, Lcom/aide/common/Wa$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x1b044b4327653f0L
    .end annotation

    const-wide v2, 0x1e56522777d6e375L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Wa$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x1e56522777d6e375L

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/aide/common/Wa$b;->Hw:I

    iput-object p2, p0, Lcom/aide/common/Wa$b;->FH:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/common/Wa$b;->v5:Ljava/lang/Runnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/common/Wa$b;->Zo:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/Wa$b;->DW:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Runnable;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x13fcf6aa0689b2d9L
    .end annotation

    const-wide v8, -0x18e0749dba4eef80L    # -5.490103274337135E188

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Wa$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x18e0749dba4eef80L    # -5.490103274337135E188

    const/4 v2, 0x0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/aide/common/Wa$b;->Hw:I

    iput-object p2, p0, Lcom/aide/common/Wa$b;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/common/Wa$b;->v5:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/common/Wa$b;->Zo:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/Wa$b;->DW:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, v6

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Runnable;Z)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x6fb8fd469689c300L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Wa$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0xb62dd12396be22fL

    const/4 v2, 0x0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/aide/common/Wa$b;->Hw:I

    iput-object p2, p0, Lcom/aide/common/Wa$b;->FH:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/common/Wa$b;->v5:Ljava/lang/Runnable;

    iput-boolean p4, p0, Lcom/aide/common/Wa$b;->Zo:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/Wa$b;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, 0xb62dd12396be22fL

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic DW(Lcom/aide/common/Wa$b;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/aide/common/Wa$b;->v5:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic FH(Lcom/aide/common/Wa$b;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/aide/common/Wa$b;->FH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Hw(Lcom/aide/common/Wa$b;)I
    .registers 2

    iget v0, p0, Lcom/aide/common/Wa$b;->Hw:I

    return v0
.end method

.method static synthetic j6(Lcom/aide/common/Wa$b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/common/Wa$b;->Zo:Z

    return v0
.end method
