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
            "Ljava/util/List",
            "<TT;>;"
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
    .registers 4

    const-wide v2, -0x286a887052e83e0L

    const-class v0, Labcd/Sl;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 8

    const-wide v4, 0x21efd76fbe5d154L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Sl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x21efd76fbe5d154L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/Sl;->FH:Ljava/util/List;

    iput p1, p0, Labcd/Sl;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sl;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v2, 0x28f2b8b8ff7543b0L

    :try_start_0
    sget-boolean v0, Labcd/Sl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x28f2b8b8ff7543b0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Sl;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const-wide v2, -0x135a0bf48ed5d414L    # -2.364975909691339E215

    :try_start_0
    sget-boolean v0, Labcd/Sl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x135a0bf48ed5d414L    # -2.364975909691339E215

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Labcd/Sl;->Hw()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Labcd/Sl;->j6(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()I
    .registers 5

    const-wide v2, -0x135f99211e908230L    # -1.7669304106401108E215

    :try_start_0
    sget-boolean v0, Labcd/Sl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x135f99211e908230L    # -1.7669304106401108E215

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Sl;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const-wide v2, -0x621181fac60cd864L

    :try_start_0
    sget-boolean v0, Labcd/Sl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x621181fac60cd864L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget v0, p0, Labcd/Sl;->Hw:I

    add-int/2addr v0, p1

    iget-object v1, p0, Labcd/Sl;->FH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Labcd/Sl;->FH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Labcd/Sl;->FH:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sl;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const-wide v4, 0x5f18330bae0c9fddL    # 1.2377199806415037E150

    :try_start_0
    sget-boolean v0, Labcd/Sl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5f18330bae0c9fddL    # 1.2377199806415037E150

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Sl;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Labcd/Sl;->v5:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Labcd/Sl;->FH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Labcd/Sl;->FH:Ljava/util/List;

    iget v1, p0, Labcd/Sl;->Hw:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Labcd/Sl;->FH:Ljava/util/List;

    iget v2, p0, Labcd/Sl;->Hw:I

    invoke-interface {v1, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Labcd/Sl;->Hw:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Sl;->Hw:I

    iget v1, p0, Labcd/Sl;->Hw:I

    iget-object v2, p0, Labcd/Sl;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Labcd/Sl;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sl;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v2, -0x2fab69eef34400L

    :try_start_0
    sget-boolean v0, Labcd/Sl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2fab69eef34400L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Sl;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/Sl;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Sl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
