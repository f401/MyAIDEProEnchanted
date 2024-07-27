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
    .registers 4

    const-wide v2, -0x1ba337a5a995f181L    # -2.8475276191755652E175

    const-class v0, Lcom/aide/engine/C;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 16

    const-wide v10, 0x290864d97da3cc00L    # 5.071700799992771E-111

    const/4 v8, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/C;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x290864d97da3cc00L    # 5.071700799992771E-111

    const/4 v2, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/aide/engine/C;->FH:I

    iput p3, p0, Lcom/aide/engine/C;->Hw:I

    iput-object p1, p0, Lcom/aide/engine/C;->v5:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/C;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v10

    move-object v4, v8

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x37308488ae5d297cL    # 7.406797594055291E-43

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/C;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x37308488ae5d297cL    # 7.406797594055291E-43

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/C;->v5:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/C;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()I
    .registers 5

    const-wide v2, -0x1e87932f0f4c9889L    # -3.4339454265826226E161

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/C;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e87932f0f4c9889L    # -3.4339454265826226E161

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/engine/C;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/C;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public clone()Lcom/aide/engine/C;
    .registers 7

    const-wide v4, 0x225a0a10d79c02f8L    # 3.336504407353646E-143

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/C;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x225a0a10d79c02f8L    # 3.336504407353646E-143

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/C;

    iget-object v1, p0, Lcom/aide/engine/C;->v5:Ljava/lang/String;

    iget v2, p0, Lcom/aide/engine/C;->FH:I

    iget v3, p0, Lcom/aide/engine/C;->Hw:I

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/engine/C;-><init>(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/C;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/aide/engine/C;->clone()Lcom/aide/engine/C;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const-wide v6, -0x4a5741ae07ed367L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/engine/C;->j6:Z

    if-eqz v2, :cond_0

    const-wide v4, -0x4a5741ae07ed367L

    invoke-static {v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v2, p1, Lcom/aide/engine/C;

    if-nez v2, :cond_1

    :goto_0
    return v3

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/aide/engine/C;

    move-object v2, v0

    iget v4, p0, Lcom/aide/engine/C;->FH:I

    iget v5, v2, Lcom/aide/engine/C;->FH:I

    if-ne v4, v5, :cond_3

    iget v4, p0, Lcom/aide/engine/C;->Hw:I

    iget v5, v2, Lcom/aide/engine/C;->Hw:I

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/aide/engine/C;->v5:Ljava/lang/String;

    iget-object v2, v2, Lcom/aide/engine/C;->v5:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/C;->DW:Z

    if-eqz v3, :cond_2

    invoke-static {v2, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v2

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public hashCode()I
    .registers 5

    const-wide v2, -0x62f8ec7d958060L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/C;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x62f8ec7d958060L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/C;->v5:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/aide/engine/C;->FH:I

    iget v2, p0, Lcom/aide/engine/C;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/C;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5

    const-wide v2, 0x2146a46987c95793L    # 2.21345881171545E-148

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/C;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2146a46987c95793L    # 2.21345881171545E-148

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/engine/C;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/C;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
