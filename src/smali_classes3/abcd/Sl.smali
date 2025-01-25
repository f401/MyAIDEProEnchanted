.class public Labcd/Sl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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
.field private FH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x26ab869006ea6584L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x1ced9d8e15db56dfL
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0x2dbd7eeba9cbd850L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Sl;

    const-wide v1, -0x286a887052e83e0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x21efd76fbe5d154L

    :try_start_6
    sget-boolean v3, Labcd/Sl;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Labcd/Sl;->FH:Ljava/util/List;

    iput p1, p0, Labcd/Sl;->v5:I
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v3

    sget-boolean v4, Labcd/Sl;->DW:Z

    if-eqz v4, :cond_27

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v3
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v0, 0x28f2b8b8ff7543b0L

    :try_start_5
    sget-boolean v2, Labcd/Sl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Sl;->v5:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Sl;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public FH()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const-wide v0, -0x135a0bf48ed5d414L  # -2.364975909691339E215

    :try_start_5
    sget-boolean v2, Labcd/Sl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Sl;->Hw()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Labcd/Sl;->j6(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v0

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Sl;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public Hw()I
    .registers 5

    const-wide v0, -0x135f99211e908230L  # -1.7669304106401108E215

    :try_start_5
    sget-boolean v2, Labcd/Sl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Sl;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Sl;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public j6(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const-wide v0, -0x621181fac60cd864L

    :try_start_5
    sget-boolean v2, Labcd/Sl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget v2, p0, Labcd/Sl;->Hw:I

    add-int/2addr v2, p1

    iget-object v3, p0, Labcd/Sl;->FH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1e

    iget-object v3, p0, Labcd/Sl;->FH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    :cond_1e
    iget-object v3, p0, Labcd/Sl;->FH:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-object p1

    :catchall_25
    move-exception v2

    sget-boolean v3, Labcd/Sl;->DW:Z

    if-eqz v3, :cond_32

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method public j6(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const-wide v0, 0x5f18330bae0c9fddL  # 1.2377199806415037E150

    :try_start_5
    sget-boolean v2, Labcd/Sl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Sl;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Labcd/Sl;->v5:I

    if-ge v2, v3, :cond_1d

    iget-object v2, p0, Labcd/Sl;->FH:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1

    :cond_1d
    iget-object v2, p0, Labcd/Sl;->FH:Ljava/util/List;

    iget v3, p0, Labcd/Sl;->Hw:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Labcd/Sl;->FH:Ljava/util/List;

    iget v4, p0, Labcd/Sl;->Hw:I

    invoke-interface {v3, v4, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Labcd/Sl;->Hw:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/Sl;->Hw:I

    iget-object v4, p0, Labcd/Sl;->FH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_3d

    const/4 v3, 0x0

    iput v3, p0, Labcd/Sl;->Hw:I
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3e

    :cond_3d
    return-object v2

    :catchall_3e
    move-exception v2

    sget-boolean v3, Labcd/Sl;->DW:Z

    if-eqz v3, :cond_46

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0x2fab69eef34400L

    :try_start_5
    sget-boolean v2, Labcd/Sl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Sl;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    iput v2, p0, Labcd/Sl;->Hw:I
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Sl;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method
