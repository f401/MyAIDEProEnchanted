.class public Labcd/hm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


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
.field private FH:I
    .annotation runtime Labcd/ru;
        field = -0x328e42cf774c3d49L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = -0x226b1adba114e9dL
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = 0x178e863514893384L
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = 0xa9d75b411f58880L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/hm;

    const-wide v1, -0x4102f3729df19225L  # -2.770331605326895E-5

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/hm;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x2b35b982e9d07520L  # -2.8735384978226894E100

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/hm;->FH:I

    iput p2, p0, Labcd/hm;->Hw:I

    iput p3, p0, Labcd/hm;->v5:I

    iput p4, p0, Labcd/hm;->Zo:I
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v0

    sget-boolean v1, Labcd/hm;->DW:Z

    if-eqz v1, :cond_50

    const-wide v2, -0x2b35b982e9d07520L  # -2.8735384978226894E100

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_50
    throw v0
.end method

.method public constructor <init>(Labcd/hm;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x8edebf917f98740L

    :try_start_6
    sget-boolean v3, Labcd/hm;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Labcd/hm;->Hw()I

    move-result v3

    iput v3, p0, Labcd/hm;->FH:I

    invoke-virtual {p1}, Labcd/hm;->FH()I

    move-result v3

    iput v3, p0, Labcd/hm;->Hw:I

    invoke-virtual {p1}, Labcd/hm;->DW()I

    move-result v3

    iput v3, p0, Labcd/hm;->v5:I

    invoke-virtual {p1}, Labcd/hm;->j6()I

    move-result v3

    iput v3, p0, Labcd/hm;->Zo:I
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v3

    sget-boolean v4, Labcd/hm;->DW:Z

    if-eqz v4, :cond_31

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v3
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v0, 0x2e9188d28016a940L  # 2.256491321107802E-84

    :try_start_5
    sget-boolean v2, Labcd/hm;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/hm;->v5:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/hm;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public DW(IIII)Labcd/hm;
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/hm;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x285f41779892175L

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    iget v0, p0, Labcd/hm;->FH:I

    if-ge p2, v0, :cond_33

    if-eq p2, p4, :cond_33

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    iget v1, p0, Labcd/hm;->FH:I

    :goto_2e
    add-int/2addr v1, p4

    sub-int/2addr v1, p2

    iput v1, p0, Labcd/hm;->FH:I

    goto :goto_55

    :cond_33
    if-ne p2, v0, :cond_54

    iget v0, p0, Labcd/hm;->Hw:I

    if-gt p1, v0, :cond_54

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    if-ne p2, p4, :cond_49

    iget v1, p0, Labcd/hm;->Hw:I

    add-int/2addr v1, p3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/hm;->Hw:I

    goto :goto_55

    :cond_49
    iget v1, p0, Labcd/hm;->Hw:I

    add-int/2addr v1, p3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/hm;->Hw:I

    iget v1, p0, Labcd/hm;->FH:I

    goto :goto_2e

    :cond_54
    const/4 v0, 0x0

    :goto_55
    iget v1, p0, Labcd/hm;->v5:I

    if-ge p2, v1, :cond_69

    if-eq p2, p4, :cond_69

    if-nez v0, :cond_62

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    :cond_62
    iget v1, p0, Labcd/hm;->v5:I

    :goto_64
    add-int/2addr v1, p4

    sub-int/2addr v1, p2

    iput v1, p0, Labcd/hm;->v5:I

    goto :goto_8c

    :cond_69
    if-ne p2, v1, :cond_8c

    iget v1, p0, Labcd/hm;->Zo:I

    if-ge p1, v1, :cond_8c

    if-nez v0, :cond_76

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    :cond_76
    if-ne p2, p4, :cond_81

    iget v1, p0, Labcd/hm;->Zo:I

    add-int/2addr v1, p3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/hm;->Zo:I

    goto :goto_8c

    :cond_81
    iget v1, p0, Labcd/hm;->Zo:I

    add-int/2addr v1, p3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/hm;->Zo:I

    iget v1, p0, Labcd/hm;->v5:I
    :try_end_8b
    .catchall {:try_start_0 .. :try_end_8b} :catchall_8d

    goto :goto_64

    :cond_8c
    :goto_8c
    return-object v0

    :catchall_8d
    move-exception v0

    sget-boolean v1, Labcd/hm;->DW:Z

    if-eqz v1, :cond_b0

    const-wide v2, 0x285f41779892175L

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

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b0
    goto :goto_b2

    :goto_b1
    throw v0

    :goto_b2
    goto :goto_b1
.end method

.method public DW(I)V
    .registers 6

    const-wide v0, -0x1dded4b6473e2b13L  # -4.943505425902236E164

    :try_start_5
    sget-boolean v2, Labcd/hm;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Labcd/hm;->v5:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/hm;->DW:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public FH()I
    .registers 5

    const-wide v0, 0x4da0e819a1fed3bL

    :try_start_5
    sget-boolean v2, Labcd/hm;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/hm;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/hm;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public FH(IIII)Labcd/hm;
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/hm;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x225a421caf336f28L

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    if-ne p2, p4, :cond_3e

    iget v0, p0, Labcd/hm;->FH:I

    if-ne p4, v0, :cond_79

    iget v0, p0, Labcd/hm;->Hw:I

    if-ge p1, v0, :cond_79

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    iget v1, p0, Labcd/hm;->Hw:I

    sub-int v2, p3, p1

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Labcd/hm;->Hw:I

    goto :goto_7a

    :cond_3e
    iget v0, p0, Labcd/hm;->FH:I

    if-ne v0, p2, :cond_46

    iget v1, p0, Labcd/hm;->Hw:I

    if-lt p1, v1, :cond_50

    :cond_46
    if-le v0, p2, :cond_4a

    if-lt v0, p4, :cond_50

    :cond_4a
    if-ne v0, p4, :cond_5a

    iget v1, p0, Labcd/hm;->Hw:I

    if-ge v1, p3, :cond_5a

    :cond_50
    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    iput p1, p0, Labcd/hm;->Hw:I

    iput p2, p0, Labcd/hm;->FH:I

    goto :goto_7a

    :cond_5a
    if-ne v0, p4, :cond_6a

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    iget v1, p0, Labcd/hm;->Hw:I

    add-int/2addr v1, p1

    sub-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Labcd/hm;->Hw:I

    goto :goto_7a

    :cond_6a
    if-le v0, p4, :cond_79

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    iget v1, p0, Labcd/hm;->FH:I

    sub-int v2, p4, p2

    sub-int/2addr v1, v2

    iput v1, p0, Labcd/hm;->FH:I

    goto :goto_7a

    :cond_79
    const/4 v0, 0x0

    :goto_7a
    if-ne p2, p4, :cond_99

    iget v1, p0, Labcd/hm;->v5:I

    if-ne p4, v1, :cond_d9

    iget v1, p0, Labcd/hm;->Zo:I

    if-ge p1, v1, :cond_d9

    if-nez v0, :cond_8b

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    :cond_8b
    iget v1, p0, Labcd/hm;->Zo:I

    sub-int v2, p3, p1

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Labcd/hm;->Zo:I

    goto :goto_d9

    :cond_99
    iget v1, p0, Labcd/hm;->v5:I

    if-ne v1, p2, :cond_a1

    iget v2, p0, Labcd/hm;->Zo:I

    if-lt p1, v2, :cond_ab

    :cond_a1
    if-le v1, p2, :cond_a5

    if-lt v1, p4, :cond_ab

    :cond_a5
    if-ne v1, p4, :cond_b7

    iget v2, p0, Labcd/hm;->Zo:I

    if-ge v2, p3, :cond_b7

    :cond_ab
    if-nez v0, :cond_b2

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    :cond_b2
    iput p1, p0, Labcd/hm;->Zo:I

    iput p2, p0, Labcd/hm;->v5:I

    goto :goto_d9

    :cond_b7
    if-ne v1, p4, :cond_c9

    if-nez v0, :cond_c0

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    :cond_c0
    iget v1, p0, Labcd/hm;->Zo:I

    add-int/2addr v1, p1

    sub-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Labcd/hm;->Zo:I

    goto :goto_d9

    :cond_c9
    if-le v1, p4, :cond_d9

    if-nez v0, :cond_d2

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    :cond_d2
    iget v1, p0, Labcd/hm;->v5:I

    sub-int v2, p4, p2

    sub-int/2addr v1, v2

    iput v1, p0, Labcd/hm;->v5:I
    :try_end_d9
    .catchall {:try_start_0 .. :try_end_d9} :catchall_da

    :cond_d9
    :goto_d9
    return-object v0

    :catchall_da
    move-exception v0

    sget-boolean v1, Labcd/hm;->DW:Z

    if-eqz v1, :cond_fd

    const-wide v2, -0x225a421caf336f28L

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

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_fd
    throw v0
.end method

.method public FH(I)V
    .registers 6

    const-wide v0, -0x398a3cfaf6114e5cL  # -2.7586353299971764E31

    :try_start_5
    sget-boolean v2, Labcd/hm;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Labcd/hm;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/hm;->DW:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public Hw()I
    .registers 5

    const-wide v0, -0x22689646878a3581L  # -7.137642193280917E142

    :try_start_5
    sget-boolean v2, Labcd/hm;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/hm;->FH:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/hm;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Hw(I)V
    .registers 6

    const-wide v0, 0x2d0dc977f9291f00L  # 1.1423992400555878E-91

    :try_start_5
    sget-boolean v2, Labcd/hm;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Labcd/hm;->FH:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/hm;->DW:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, 0x3529845b7d18e654L

    :try_start_5
    sget-boolean v2, Labcd/hm;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/hm;->Zo:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/hm;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(IIII)Labcd/hm;
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/hm;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1862b98038838f00L

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    iget v0, p0, Labcd/hm;->FH:I

    if-ge p2, v0, :cond_33

    if-eq p2, p4, :cond_33

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    iget v1, p0, Labcd/hm;->FH:I

    :goto_2e
    add-int/2addr v1, p4

    sub-int/2addr v1, p2

    iput v1, p0, Labcd/hm;->FH:I

    goto :goto_55

    :cond_33
    if-ne p2, v0, :cond_54

    iget v0, p0, Labcd/hm;->Hw:I

    if-ge p1, v0, :cond_54

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    if-ne p2, p4, :cond_49

    iget v1, p0, Labcd/hm;->Hw:I

    add-int/2addr v1, p3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/hm;->Hw:I

    goto :goto_55

    :cond_49
    iget v1, p0, Labcd/hm;->Hw:I

    add-int/2addr v1, p3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/hm;->Hw:I

    iget v1, p0, Labcd/hm;->FH:I

    goto :goto_2e

    :cond_54
    const/4 v0, 0x0

    :goto_55
    iget v1, p0, Labcd/hm;->v5:I

    if-ge p2, v1, :cond_69

    if-eq p2, p4, :cond_69

    if-nez v0, :cond_62

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    :cond_62
    iget v1, p0, Labcd/hm;->v5:I

    :goto_64
    add-int/2addr v1, p4

    sub-int/2addr v1, p2

    iput v1, p0, Labcd/hm;->v5:I

    goto :goto_8c

    :cond_69
    if-ne p2, v1, :cond_8c

    iget v1, p0, Labcd/hm;->Zo:I

    if-gt p1, v1, :cond_8c

    if-nez v0, :cond_76

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    :cond_76
    if-ne p2, p4, :cond_81

    iget v1, p0, Labcd/hm;->Zo:I

    add-int/2addr v1, p3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/hm;->Zo:I

    goto :goto_8c

    :cond_81
    iget v1, p0, Labcd/hm;->Zo:I

    add-int/2addr v1, p3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/hm;->Zo:I

    iget v1, p0, Labcd/hm;->v5:I
    :try_end_8b
    .catchall {:try_start_0 .. :try_end_8b} :catchall_8d

    goto :goto_64

    :cond_8c
    :goto_8c
    return-object v0

    :catchall_8d
    move-exception v0

    sget-boolean v1, Labcd/hm;->DW:Z

    if-eqz v1, :cond_b0

    const-wide v2, 0x1862b98038838f00L

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

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b0
    goto :goto_b2

    :goto_b1
    throw v0

    :goto_b2
    goto :goto_b1
.end method

.method public j6(I)V
    .registers 6

    const-wide v0, 0x1340f3dfa0fac5f9L  # 6.14709928996057E-216

    :try_start_5
    sget-boolean v2, Labcd/hm;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Labcd/hm;->Zo:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/hm;->DW:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j6(II)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/hm;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x7410a4d7b3b7eacL  # -4.187102559298837E273

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget v0, p0, Labcd/hm;->FH:I

    iget v1, p0, Labcd/hm;->v5:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2c

    if-eq p1, v0, :cond_21

    return v3

    :cond_21
    iget v0, p0, Labcd/hm;->Hw:I

    if-lt p2, v0, :cond_2a

    iget p1, p0, Labcd/hm;->Zo:I

    if-gt p2, p1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :goto_2b
    return v2

    :cond_2c
    if-ne p1, v0, :cond_35

    iget p1, p0, Labcd/hm;->Hw:I

    if-lt p2, p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :goto_34
    return v2

    :cond_35
    if-ne p1, v1, :cond_3e

    iget p1, p0, Labcd/hm;->Zo:I
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_45

    if-gt p2, p1, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    return v2

    :cond_3e
    if-ge v0, p1, :cond_43

    if-ge p1, v1, :cond_43

    goto :goto_44

    :cond_43
    const/4 v2, 0x0

    :goto_44
    return v2

    :catchall_45
    move-exception v0

    sget-boolean v1, Labcd/hm;->DW:Z

    if-eqz v1, :cond_5e

    const-wide v2, -0x7410a4d7b3b7eacL  # -4.187102559298837E273

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5e
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string v0, ","

    const-wide v1, 0x8569e951b7303ffL

    :try_start_7
    sget-boolean v3, Labcd/hm;->j6:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Labcd/hm;->FH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Labcd/hm;->Hw:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Labcd/hm;->v5:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/hm;->Zo:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_58
    .catchall {:try_start_7 .. :try_end_58} :catchall_59

    return-object v0

    :catchall_59
    move-exception v0

    sget-boolean v3, Labcd/hm;->DW:Z

    if-eqz v3, :cond_61

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_61
    throw v0
.end method
