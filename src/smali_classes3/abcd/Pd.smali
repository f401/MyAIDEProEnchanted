.class public Labcd/Pd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
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
.field private final FH:Labcd/La;
    .annotation runtime Labcd/ru;
        field = -0x190ebc0bc64d74e7L
    .end annotation
.end field

.field private final Hw:Labcd/Qd;
    .annotation runtime Labcd/ru;
        field = 0x1bea2f0d7bf06fb4L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = 0x16a236e5cd3956dL
    .end annotation
.end field

.field private Zo:Labcd/Sa;
    .annotation runtime Labcd/ru;
        field = 0xa744d32a6e917b4L
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = -0xad6ef33f1a1a2e8L
    .end annotation
.end field

.field private u7:Labcd/wb;
    .annotation runtime Labcd/ru;
        field = -0x453907e4da3f4620L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwb<",
            "Labcd/qa$a;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Labcd/Ta;
    .annotation runtime Labcd/ru;
        field = 0xa7b884e7b931320L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Pd;

    const-wide v1, -0x258576d4175d9410L  # -7.185066526880971E127

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Labcd/Qd;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Pd;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x16dbaf03922ad4a8L  # -3.037336321328126E198

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/wb;

    invoke-direct {v0}, Labcd/wb;-><init>()V

    iput-object v0, p0, Labcd/Pd;->u7:Labcd/wb;

    iput-object p1, p0, Labcd/Pd;->FH:Labcd/La;

    iput-object p2, p0, Labcd/Pd;->Hw:Labcd/Qd;
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Labcd/Pd;->DW:Z

    if-eqz v1, :cond_2d

    const-wide v2, -0x16dbaf03922ad4a8L  # -3.037336321328126E198

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method private DW(I)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x2b1337b50ef95c61L
    .end annotation

    const-wide v0, -0x88fdff8b122f700L

    :try_start_5
    sget-boolean v2, Labcd/Pd;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget v2, p0, Labcd/Pd;->VH:I

    iget-object v3, p0, Labcd/Pd;->v5:Labcd/Ta;

    iget-object v4, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v3, v4, p1}, Labcd/Ta;->v5(Labcd/Sa;I)I

    move-result v3

    if-lt v2, v3, :cond_27

    iget v2, p0, Labcd/Pd;->gn:I

    iget-object v3, p0, Labcd/Pd;->v5:Labcd/Ta;

    iget-object v4, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v3, v4, p1}, Labcd/Ta;->FH(Labcd/Sa;I)I

    move-result p1
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_29

    if-le v2, p1, :cond_25

    goto :goto_27

    :cond_25
    const/4 p1, 0x1

    return p1

    :cond_27
    :goto_27
    const/4 p1, 0x0

    return p1

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/Pd;->DW:Z

    if-eqz v3, :cond_36

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v2
.end method

.method private j6(I)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0xe1aa85100c40078L
    .end annotation

    const-wide v0, 0x1f3e71692a923f5fL

    :try_start_5
    sget-boolean v2, Labcd/Pd;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-direct {p0, p1}, Labcd/Pd;->DW(I)Z

    move-result v2

    if-eqz v2, :cond_85

    iget-object v2, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v2, p1}, Labcd/Sa;->P8(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3f

    iget-object v2, p0, Labcd/Pd;->v5:Labcd/Ta;

    iget-object v4, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v2, v4, p1}, Labcd/Ta;->Hw(Labcd/Sa;I)I

    move-result v2

    if-ne v2, v3, :cond_3f

    iget-object v2, p0, Labcd/Pd;->u7:Labcd/wb;

    iget-object v3, p0, Labcd/Pd;->v5:Labcd/Ta;

    iget-object v4, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v3, v4, p1}, Labcd/Ta;->v5(Labcd/Sa;I)I

    move-result v3

    new-instance v10, Labcd/qa$a;

    iget-object v5, p0, Labcd/Pd;->Hw:Labcd/Qd;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Labcd/qa$a;-><init>(Labcd/na;IZZI)V

    invoke-virtual {v2, v3, v10}, Labcd/wb;->DW(ILjava/lang/Object;)V

    goto :goto_70

    :cond_3f
    iget-object v2, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v2, p1}, Labcd/Sa;->P8(I)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_70

    iget-object v2, p0, Labcd/Pd;->v5:Labcd/Ta;

    iget-object v4, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v2, v4, p1}, Labcd/Ta;->v5(Labcd/Sa;I)I

    move-result v2

    add-int/2addr v2, v3

    :goto_51
    iget-object v3, p0, Labcd/Pd;->v5:Labcd/Ta;

    iget-object v4, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v3, v4, p1}, Labcd/Ta;->FH(Labcd/Sa;I)I

    move-result v3

    if-gt v2, v3, :cond_70

    iget-object v3, p0, Labcd/Pd;->u7:Labcd/wb;

    new-instance v10, Labcd/qa$a;

    iget-object v5, p0, Labcd/Pd;->Hw:Labcd/Qd;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x1f4

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Labcd/qa$a;-><init>(Labcd/na;IZZI)V

    invoke-virtual {v3, v2, v10}, Labcd/wb;->DW(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    :cond_70
    :goto_70
    iget-object v2, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v2, p1}, Labcd/Sa;->we(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_77
    if-ge v3, v2, :cond_85

    iget-object v4, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v4, p1, v3}, Labcd/Sa;->Zo(II)I

    move-result v4

    invoke-direct {p0, v4}, Labcd/Pd;->j6(I)V
    :try_end_82
    .catchall {:try_start_5 .. :try_end_82} :catchall_86

    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    :cond_85
    return-void

    :catchall_86
    move-exception v2

    sget-boolean v3, Labcd/Pd;->DW:Z

    if-eqz v3, :cond_93

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_93
    goto :goto_95

    :goto_94
    throw v2

    :goto_95
    goto :goto_94
.end method


# virtual methods
.method public DW(Labcd/Sa;Labcd/Ta;II)Labcd/wb;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Sa;",
            "Labcd/Ta;",
            "II)",
            "Lwb<",
            "Labcd/qa$a;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Pd;->j6:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x5b25bd88d9be835L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/Pd;->j6(Labcd/Sa;Labcd/Ta;II)Labcd/wb;

    move-result-object p1
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-object p1

    :catchall_1e
    move-exception v0

    sget-boolean v1, Labcd/Pd;->DW:Z

    if-eqz v1, :cond_39

    const-wide v2, 0x5b25bd88d9be835L

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v0
.end method

.method public j6(Labcd/Sa;Labcd/Ta;II)Labcd/wb;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Sa;",
            "Labcd/Ta;",
            "II)",
            "Lwb<",
            "Labcd/qa$a;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Pd;->j6:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5d6d3324a5112790L  # -3.854295740595558E-142

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iput p3, p0, Labcd/Pd;->gn:I

    iput p4, p0, Labcd/Pd;->VH:I

    iput-object p2, p0, Labcd/Pd;->v5:Labcd/Ta;

    iput-object p1, p0, Labcd/Pd;->Zo:Labcd/Sa;

    iget-object v0, p0, Labcd/Pd;->u7:Labcd/wb;

    invoke-virtual {v0}, Labcd/wb;->j6()V

    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, v0}, Labcd/Pd;->j6(I)V

    iget-object p1, p0, Labcd/Pd;->u7:Labcd/wb;
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    return-object p1

    :catchall_30
    move-exception v0

    sget-boolean v1, Labcd/Pd;->DW:Z

    if-eqz v1, :cond_4b

    const-wide v2, -0x5d6d3324a5112790L  # -3.854295740595558E-142

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    throw v0
.end method

.method public j6(Labcd/Sa;Labcd/Ta;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Pd;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1cdcb81f9a55cb0L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    :cond_14
    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Labcd/Pd;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, 0x1cdcb81f9a55cb0L

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method
