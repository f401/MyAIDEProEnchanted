.class public final Lcom/aide/engine/C;
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
.field private final FH:I
    .annotation runtime Labcd/ru;
        field = 0x20550069bf3d6de7L
    .end annotation
.end field

.field private final Hw:I
    .annotation runtime Labcd/ru;
        field = -0x10e2f3581989571dL
    .end annotation
.end field

.field private final v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x235c548df2a8e780L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/C;

    const-wide v1, -0x1ba337a5a995f181L  # -2.8475276191755652E175

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/C;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x290864d97da3cc00L  # 5.071700799992771E-111

    const/4 v3, 0x0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/aide/engine/C;->FH:I

    iput p3, p0, Lcom/aide/engine/C;->Hw:I

    iput-object p1, p0, Lcom/aide/engine/C;->v5:Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/C;->DW:Z

    if-eqz v1, :cond_3c

    const-wide v2, 0x290864d97da3cc00L  # 5.071700799992771E-111

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x37308488ae5d297cL  # 7.406797594055291E-43

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/C;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/C;->v5:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/C;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public FH()I
    .registers 5

    const-wide v0, -0x1e87932f0f4c9889L  # -3.4339454265826226E161

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/C;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/engine/C;->FH:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/C;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public clone()Lcom/aide/engine/C;
    .registers 7

    const-wide v0, 0x225a0a10d79c02f8L  # 3.336504407353646E-143

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/C;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/engine/C;

    iget-object v3, p0, Lcom/aide/engine/C;->v5:Ljava/lang/String;

    iget v4, p0, Lcom/aide/engine/C;->FH:I

    iget v5, p0, Lcom/aide/engine/C;->Hw:I

    invoke-direct {v2, v3, v4, v5}, Lcom/aide/engine/C;-><init>(Ljava/lang/String;II)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-object v2

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/C;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/aide/engine/C;->clone()Lcom/aide/engine/C;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const-wide v0, -0x4a5741ae07ed367L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/C;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v2, p1, Lcom/aide/engine/C;

    const/4 v3, 0x0

    if-nez v2, :cond_12

    return v3

    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/aide/engine/C;

    iget v4, p0, Lcom/aide/engine/C;->FH:I

    iget v5, v2, Lcom/aide/engine/C;->FH:I

    if-ne v4, v5, :cond_2c

    iget v4, p0, Lcom/aide/engine/C;->Hw:I

    iget v5, v2, Lcom/aide/engine/C;->Hw:I

    if-ne v4, v5, :cond_2c

    iget-object v4, p0, Lcom/aide/engine/C;->v5:Ljava/lang/String;

    iget-object v2, v2, Lcom/aide/engine/C;->v5:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2d

    if-eqz p1, :cond_2c

    const/4 v3, 0x1

    :cond_2c
    return v3

    :catchall_2d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/C;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v2
.end method

.method public hashCode()I
    .registers 5

    const-wide v0, -0x62f8ec7d958060L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/C;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/C;->v5:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget v3, p0, Lcom/aide/engine/C;->FH:I

    iget v0, p0, Lcom/aide/engine/C;->Hw:I
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_19

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    return v2

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/C;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public j6()I
    .registers 5

    const-wide v0, 0x2146a46987c95793L  # 2.21345881171545E-148

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/C;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/engine/C;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/C;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
