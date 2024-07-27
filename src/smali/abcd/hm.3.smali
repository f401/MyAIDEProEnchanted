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
    .registers 4

    const-wide v2, -0x4102f3729df19225L    # -2.770331605326895E-5

    const-class v0, Labcd/hm;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/hm;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x2b35b982e9d07520L    # -2.8735384978226894E100

    const/4 v2, 0x0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/hm;->FH:I

    iput p2, p0, Labcd/hm;->Hw:I

    iput p3, p0, Labcd/hm;->v5:I

    iput p4, p0, Labcd/hm;->Zo:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/hm;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x2b35b982e9d07520L    # -2.8735384978226894E100

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Labcd/hm;)V
    .registers 8

    const-wide v4, 0x8edebf917f98740L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/hm;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x8edebf917f98740L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Labcd/hm;->Hw()I

    move-result v0

    iput v0, p0, Labcd/hm;->FH:I

    invoke-virtual {p1}, Labcd/hm;->FH()I

    move-result v0

    iput v0, p0, Labcd/hm;->Hw:I

    invoke-virtual {p1}, Labcd/hm;->DW()I

    move-result v0

    iput v0, p0, Labcd/hm;->v5:I

    invoke-virtual {p1}, Labcd/hm;->j6()I

    move-result v0

    iput v0, p0, Labcd/hm;->Zo:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/hm;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v2, 0x2e9188d28016a940L    # 2.256491321107802E-84

    :try_start_0
    sget-boolean v0, Labcd/hm;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2e9188d28016a940L    # 2.256491321107802E-84

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/hm;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/hm;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(IIII)Labcd/hm;
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/hm;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x285f41779892175L

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Labcd/hm;->FH:I

    if-ge p2, v1, :cond_4

    if-eq p2, p4, :cond_4

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    iget v1, p0, Labcd/hm;->FH:I

    add-int/2addr v1, p4

    sub-int/2addr v1, p2

    iput v1, p0, Labcd/hm;->FH:I

    :cond_1
    :goto_0
    iget v1, p0, Labcd/hm;->v5:I

    if-ge p2, v1, :cond_7

    if-eq p2, p4, :cond_7

    if-nez v0, :cond_2

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    :cond_2
    iget v1, p0, Labcd/hm;->v5:I

    add-int/2addr v1, p4

    sub-int/2addr v1, p2

    iput v1, p0, Labcd/hm;->v5:I

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    iget v1, p0, Labcd/hm;->FH:I

    if-ne p2, v1, :cond_1

    iget v1, p0, Labcd/hm;->Hw:I

    if-gt p1, v1, :cond_1

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    if-ne p2, p4, :cond_6

    iget v1, p0, Labcd/hm;->Hw:I

    add-int/2addr v1, p3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/hm;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/hm;->DW:Z

    if-eqz v0, :cond_5

    const-wide v2, 0x285f41779892175L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :cond_6
    :try_start_1
    iget v1, p0, Labcd/hm;->Hw:I

    add-int/2addr v1, p3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/hm;->Hw:I

    iget v1, p0, Labcd/hm;->FH:I

    add-int/2addr v1, p4

    sub-int/2addr v1, p2

    iput v1, p0, Labcd/hm;->FH:I

    goto :goto_0

    :cond_7
    iget v1, p0, Labcd/hm;->v5:I

    if-ne p2, v1, :cond_3

    iget v1, p0, Labcd/hm;->Zo:I

    if-ge p1, v1, :cond_3

    if-nez v0, :cond_8

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    :cond_8
    if-ne p2, p4, :cond_9

    iget v1, p0, Labcd/hm;->Zo:I

    add-int/2addr v1, p3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/hm;->Zo:I

    goto :goto_1

    :cond_9
    iget v1, p0, Labcd/hm;->Zo:I

    add-int/2addr v1, p3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/hm;->Zo:I

    iget v1, p0, Labcd/hm;->v5:I

    add-int/2addr v1, p4

    sub-int/2addr v1, p2

    iput v1, p0, Labcd/hm;->v5:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public DW(I)V
    .registers 6

    const-wide v2, -0x1dded4b6473e2b13L    # -4.943505425902236E164

    :try_start_0
    sget-boolean v0, Labcd/hm;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1dded4b6473e2b13L    # -4.943505425902236E164

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Labcd/hm;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/hm;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()I
    .registers 5

    const-wide v2, 0x4da0e819a1fed3bL

    :try_start_0
    sget-boolean v0, Labcd/hm;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4da0e819a1fed3bL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/hm;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/hm;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(IIII)Labcd/hm;
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/hm;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x225a421caf336f28L

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    if-ne p2, p4, :cond_4

    iget v1, p0, Labcd/hm;->FH:I

    if-ne p4, v1, :cond_1

    iget v1, p0, Labcd/hm;->Hw:I

    if-ge p1, v1, :cond_1

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    iget v1, p0, Labcd/hm;->Hw:I

    sub-int v2, p3, p1

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Labcd/hm;->Hw:I

    :cond_1
    :goto_0
    if-ne p2, p4, :cond_b

    iget v1, p0, Labcd/hm;->v5:I

    if-ne p4, v1, :cond_3

    iget v1, p0, Labcd/hm;->Zo:I

    if-ge p1, v1, :cond_3

    if-nez v0, :cond_2

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    :cond_2
    iget v1, p0, Labcd/hm;->Zo:I

    sub-int v2, p3, p1

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Labcd/hm;->Zo:I

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    iget v1, p0, Labcd/hm;->FH:I

    if-ne v1, p2, :cond_5

    iget v1, p0, Labcd/hm;->Hw:I

    if-lt p1, v1, :cond_7

    :cond_5
    iget v1, p0, Labcd/hm;->FH:I

    if-le v1, p2, :cond_6

    iget v1, p0, Labcd/hm;->FH:I

    if-lt v1, p4, :cond_7

    :cond_6
    iget v1, p0, Labcd/hm;->FH:I

    if-ne v1, p4, :cond_9

    iget v1, p0, Labcd/hm;->Hw:I

    if-ge v1, p3, :cond_9

    :cond_7
    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    iput p1, p0, Labcd/hm;->Hw:I

    iput p2, p0, Labcd/hm;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/hm;->DW:Z

    if-eqz v0, :cond_8

    const-wide v2, -0x225a421caf336f28L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v1

    :cond_9
    :try_start_1
    iget v1, p0, Labcd/hm;->FH:I

    if-ne v1, p4, :cond_a

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    iget v1, p0, Labcd/hm;->Hw:I

    add-int/2addr v1, p1

    sub-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Labcd/hm;->Hw:I

    goto :goto_0

    :cond_a
    iget v1, p0, Labcd/hm;->FH:I

    if-le v1, p4, :cond_1

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    iget v1, p0, Labcd/hm;->FH:I

    sub-int v2, p4, p2

    sub-int/2addr v1, v2

    iput v1, p0, Labcd/hm;->FH:I

    goto/16 :goto_0

    :cond_b
    iget v1, p0, Labcd/hm;->v5:I

    if-ne v1, p2, :cond_c

    iget v1, p0, Labcd/hm;->Zo:I

    if-lt p1, v1, :cond_e

    :cond_c
    iget v1, p0, Labcd/hm;->v5:I

    if-le v1, p2, :cond_d

    iget v1, p0, Labcd/hm;->v5:I

    if-lt v1, p4, :cond_e

    :cond_d
    iget v1, p0, Labcd/hm;->v5:I

    if-ne v1, p4, :cond_10

    iget v1, p0, Labcd/hm;->Zo:I

    if-ge v1, p3, :cond_10

    :cond_e
    if-nez v0, :cond_f

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    :cond_f
    iput p1, p0, Labcd/hm;->Zo:I

    iput p2, p0, Labcd/hm;->v5:I

    goto/16 :goto_1

    :cond_10
    iget v1, p0, Labcd/hm;->v5:I

    if-ne v1, p4, :cond_12

    if-nez v0, :cond_11

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    :cond_11
    iget v1, p0, Labcd/hm;->Zo:I

    add-int/2addr v1, p1

    sub-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Labcd/hm;->Zo:I

    goto/16 :goto_1

    :cond_12
    iget v1, p0, Labcd/hm;->v5:I

    if-le v1, p4, :cond_3

    if-nez v0, :cond_13

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    :cond_13
    iget v1, p0, Labcd/hm;->v5:I

    sub-int v2, p4, p2

    sub-int/2addr v1, v2

    iput v1, p0, Labcd/hm;->v5:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public FH(I)V
    .registers 6

    const-wide v2, -0x398a3cfaf6114e5cL    # -2.7586353299971764E31

    :try_start_0
    sget-boolean v0, Labcd/hm;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x398a3cfaf6114e5cL    # -2.7586353299971764E31

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Labcd/hm;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/hm;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()I
    .registers 5

    const-wide v2, -0x22689646878a3581L    # -7.137642193280917E142

    :try_start_0
    sget-boolean v0, Labcd/hm;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x22689646878a3581L    # -7.137642193280917E142

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/hm;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/hm;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(I)V
    .registers 6

    const-wide v2, 0x2d0dc977f9291f00L    # 1.1423992400555878E-91

    :try_start_0
    sget-boolean v0, Labcd/hm;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2d0dc977f9291f00L    # 1.1423992400555878E-91

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Labcd/hm;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/hm;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5

    const-wide v2, 0x3529845b7d18e654L

    :try_start_0
    sget-boolean v0, Labcd/hm;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3529845b7d18e654L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/hm;->Zo:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/hm;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(IIII)Labcd/hm;
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/hm;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x1862b98038838f00L

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Labcd/hm;->FH:I

    if-ge p2, v1, :cond_4

    if-eq p2, p4, :cond_4

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    iget v1, p0, Labcd/hm;->FH:I

    add-int/2addr v1, p4

    sub-int/2addr v1, p2

    iput v1, p0, Labcd/hm;->FH:I

    :cond_1
    :goto_0
    iget v1, p0, Labcd/hm;->v5:I

    if-ge p2, v1, :cond_7

    if-eq p2, p4, :cond_7

    if-nez v0, :cond_2

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    :cond_2
    iget v1, p0, Labcd/hm;->v5:I

    add-int/2addr v1, p4

    sub-int/2addr v1, p2

    iput v1, p0, Labcd/hm;->v5:I

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    iget v1, p0, Labcd/hm;->FH:I

    if-ne p2, v1, :cond_1

    iget v1, p0, Labcd/hm;->Hw:I

    if-ge p1, v1, :cond_1

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    if-ne p2, p4, :cond_6

    iget v1, p0, Labcd/hm;->Hw:I

    add-int/2addr v1, p3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/hm;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/hm;->DW:Z

    if-eqz v0, :cond_5

    const-wide v2, 0x1862b98038838f00L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :cond_6
    :try_start_1
    iget v1, p0, Labcd/hm;->Hw:I

    add-int/2addr v1, p3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/hm;->Hw:I

    iget v1, p0, Labcd/hm;->FH:I

    add-int/2addr v1, p4

    sub-int/2addr v1, p2

    iput v1, p0, Labcd/hm;->FH:I

    goto :goto_0

    :cond_7
    iget v1, p0, Labcd/hm;->v5:I

    if-ne p2, v1, :cond_3

    iget v1, p0, Labcd/hm;->Zo:I

    if-gt p1, v1, :cond_3

    if-nez v0, :cond_8

    new-instance v0, Labcd/hm;

    invoke-direct {v0, p0}, Labcd/hm;-><init>(Labcd/hm;)V

    :cond_8
    if-ne p2, p4, :cond_9

    iget v1, p0, Labcd/hm;->Zo:I

    add-int/2addr v1, p3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/hm;->Zo:I

    goto :goto_1

    :cond_9
    iget v1, p0, Labcd/hm;->Zo:I

    add-int/2addr v1, p3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/hm;->Zo:I

    iget v1, p0, Labcd/hm;->v5:I

    add-int/2addr v1, p4

    sub-int/2addr v1, p2

    iput v1, p0, Labcd/hm;->v5:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public j6(I)V
    .registers 6

    const-wide v2, 0x1340f3dfa0fac5f9L    # 6.14709928996057E-216

    :try_start_0
    sget-boolean v0, Labcd/hm;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1340f3dfa0fac5f9L    # 6.14709928996057E-216

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Labcd/hm;->Zo:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/hm;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(II)Z
    .registers 11

    const-wide v2, -0x7410a4d7b3b7eacL    # -4.187102559298837E273

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v4, Labcd/hm;->j6:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x7410a4d7b3b7eacL    # -4.187102559298837E273

    invoke-static {v6, v7, p0, v4, v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v4, p0, Labcd/hm;->FH:I

    iget v5, p0, Labcd/hm;->v5:I

    if-ne v4, v5, :cond_4

    iget v4, p0, Labcd/hm;->FH:I

    if-eq p1, v4, :cond_2

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v4, p0, Labcd/hm;->Hw:I

    if-lt p2, v4, :cond_3

    iget v2, p0, Labcd/hm;->Zo:I

    if-le p2, v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget v4, p0, Labcd/hm;->FH:I

    if-ne p1, v4, :cond_5

    iget v2, p0, Labcd/hm;->Hw:I

    if-ge p2, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_5
    iget v4, p0, Labcd/hm;->v5:I

    if-ne p1, v4, :cond_6

    iget v2, p0, Labcd/hm;->Zo:I

    if-le p2, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_6
    iget v4, p0, Labcd/hm;->FH:I

    if-ge v4, p1, :cond_7

    iget v2, p0, Labcd/hm;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p1, v2, :cond_1

    :cond_7
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/hm;->DW:Z

    if-eqz v0, :cond_8

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x8569e951b7303ffL

    :try_start_0
    sget-boolean v0, Labcd/hm;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x8569e951b7303ffL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Labcd/hm;->FH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/hm;->Hw:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/hm;->v5:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/hm;->Zo:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/hm;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
