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
            "Lwb",
            "<",
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
    .registers 4

    const-wide v2, -0x258576d4175d9410L    # -7.185066526880971E127

    const-class v0, Labcd/Pd;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;Labcd/Qd;)V
    .registers 10

    const-wide v2, -0x16dbaf03922ad4a8L    # -3.037336321328126E198

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Pd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x16dbaf03922ad4a8L    # -3.037336321328126E198

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/wb;

    invoke-direct {v0}, Labcd/wb;-><init>()V

    iput-object v0, p0, Labcd/Pd;->u7:Labcd/wb;

    iput-object p1, p0, Labcd/Pd;->FH:Labcd/La;

    iput-object p2, p0, Labcd/Pd;->Hw:Labcd/Qd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Pd;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private DW(I)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x2b1337b50ef95c61L
    .end annotation

    const-wide v4, -0x88fdff8b122f700L

    :try_start_0
    sget-boolean v0, Labcd/Pd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x88fdff8b122f700L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget v0, p0, Labcd/Pd;->VH:I

    iget-object v1, p0, Labcd/Pd;->v5:Labcd/Ta;

    iget-object v2, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v1, v2, p1}, Labcd/Ta;->v5(Labcd/Sa;I)I

    move-result v1

    if-lt v0, v1, :cond_1

    iget v0, p0, Labcd/Pd;->gn:I

    iget-object v1, p0, Labcd/Pd;->v5:Labcd/Ta;

    iget-object v2, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v1, v2, p1}, Labcd/Ta;->FH(Labcd/Sa;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Pd;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private j6(I)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0xe1aa85100c40078L
    .end annotation

    const-wide v10, 0x1f3e71692a923f5fL

    const/4 v2, 0x1

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Pd;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1f3e71692a923f5fL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-direct {p0, p1}, Labcd/Pd;->DW(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v0, p1}, Labcd/Sa;->P8(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Labcd/Pd;->v5:Labcd/Ta;

    iget-object v1, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v0, v1, p1}, Labcd/Ta;->Hw(Labcd/Sa;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v7, p0, Labcd/Pd;->u7:Labcd/wb;

    iget-object v0, p0, Labcd/Pd;->v5:Labcd/Ta;

    iget-object v1, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v0, v1, p1}, Labcd/Ta;->v5(Labcd/Sa;I)I

    move-result v8

    new-instance v0, Labcd/qa$a;

    iget-object v1, p0, Labcd/Pd;->Hw:Labcd/Qd;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Labcd/qa$a;-><init>(Labcd/na;IZZI)V

    invoke-virtual {v7, v8, v0}, Labcd/wb;->DW(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v0, p1}, Labcd/Sa;->we(I)I

    move-result v1

    move v0, v6

    :goto_0
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v2, p1, v0}, Labcd/Sa;->Zo(II)I

    move-result v2

    invoke-direct {p0, v2}, Labcd/Pd;->j6(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v0, p1}, Labcd/Sa;->P8(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Labcd/Pd;->v5:Labcd/Ta;

    iget-object v1, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v0, v1, p1}, Labcd/Ta;->v5(Labcd/Sa;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v7, v0

    :goto_1
    iget-object v0, p0, Labcd/Pd;->v5:Labcd/Ta;

    iget-object v1, p0, Labcd/Pd;->Zo:Labcd/Sa;

    invoke-virtual {v0, v1, p1}, Labcd/Ta;->FH(Labcd/Sa;I)I

    move-result v0

    if-gt v7, v0, :cond_1

    iget-object v8, p0, Labcd/Pd;->u7:Labcd/wb;

    new-instance v0, Labcd/qa$a;

    iget-object v1, p0, Labcd/Pd;->Hw:Labcd/Qd;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x1f4

    invoke-direct/range {v0 .. v5}, Labcd/qa$a;-><init>(Labcd/na;IZZI)V

    invoke-virtual {v8, v7, v0}, Labcd/wb;->DW(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Pd;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v10, v11, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
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
            "Lwb",
            "<",
            "Labcd/qa$a;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Pd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x5b25bd88d9be835L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/Pd;->j6(Labcd/Sa;Labcd/Ta;II)Labcd/wb;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Pd;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x5b25bd88d9be835L

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Labcd/Sa;Labcd/Ta;II)Labcd/wb;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Sa;",
            "Labcd/Ta;",
            "II)",
            "Lwb",
            "<",
            "Labcd/qa$a;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Pd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x5d6d3324a5112790L    # -3.854295740595558E-142

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput p3, p0, Labcd/Pd;->gn:I

    iput p4, p0, Labcd/Pd;->VH:I

    iput-object p2, p0, Labcd/Pd;->v5:Labcd/Ta;

    iput-object p1, p0, Labcd/Pd;->Zo:Labcd/Sa;

    iget-object v0, p0, Labcd/Pd;->u7:Labcd/wb;

    invoke-virtual {v0}, Labcd/wb;->j6()V

    invoke-virtual {p1}, Labcd/Sa;->aM()I

    move-result v0

    invoke-direct {p0, v0}, Labcd/Pd;->j6(I)V

    iget-object v0, p0, Labcd/Pd;->u7:Labcd/wb;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Pd;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x5d6d3324a5112790L    # -3.854295740595558E-142

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Labcd/Sa;Labcd/Ta;I)V
    .registers 14

    const-wide v8, 0x1cdcb81f9a55cb0L

    :try_start_0
    sget-boolean v0, Labcd/Pd;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x1cdcb81f9a55cb0L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Pd;->DW:Z

    if-eqz v0, :cond_1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
