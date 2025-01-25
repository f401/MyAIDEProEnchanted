.class public Labcd/Xa;
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
.field private FH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x256c6cb0b32ac49dL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/Wa;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x177ef6a5105581dcL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Xa;

    const-wide v1, 0x2b2295951f5bec3L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x15ae1aad7c23b5adL  # 3.000545266275939E-204

    :try_start_6
    sget-boolean v3, Labcd/Xa;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Labcd/Xa;->FH:Ljava/util/List;
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Labcd/Xa;->DW:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, -0x12bca28e2e1d97fcL  # -2.1362141074926378E218

    :try_start_5
    sget-boolean v2, Labcd/Xa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, p0, Labcd/Xa;->Hw:I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Xa;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, 0x2d5492e25cdb5fdL

    :try_start_5
    sget-boolean v2, Labcd/Xa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Labcd/Xa;->FH:Ljava/util/List;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/Xa;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j6()Labcd/Wa;
    .registers 6

    const-wide v0, -0x1018f272dcbcca08L  # -1.1184405756684116E231

    :try_start_5
    sget-boolean v2, Labcd/Xa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Xa;->Hw:I

    iget-object v3, p0, Labcd/Xa;->FH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_20

    iget-object v2, p0, Labcd/Xa;->FH:Ljava/util/List;

    new-instance v3, Labcd/Wa;

    invoke-direct {v3}, Labcd/Wa;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    iget-object v2, p0, Labcd/Xa;->FH:Ljava/util/List;

    iget v3, p0, Labcd/Xa;->Hw:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/Xa;->Hw:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Wa;

    invoke-virtual {v2}, Labcd/Wa;->j6()V
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_32

    return-object v2

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/Xa;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public j6(Labcd/Wa;)V
    .registers 7

    const-wide v0, -0x9063c972018cdd1L

    :try_start_5
    sget-boolean v2, Labcd/Xa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Xa;->Hw:I

    if-nez v2, :cond_11

    return-void

    :cond_11
    iget-object v3, p0, Labcd/Xa;->FH:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_39

    iget-object v2, p0, Labcd/Xa;->FH:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Labcd/Xa;->Hw:I

    if-ge v2, v3, :cond_39

    iget-object v4, p0, Labcd/Xa;->FH:Ljava/util/List;

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Labcd/Xa;->FH:Ljava/util/List;

    iget v3, p0, Labcd/Xa;->Hw:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_39
    iget v2, p0, Labcd/Xa;->Hw:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Labcd/Xa;->Hw:I
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_40

    return-void

    :catchall_40
    move-exception v2

    sget-boolean v3, Labcd/Xa;->DW:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v2
.end method
