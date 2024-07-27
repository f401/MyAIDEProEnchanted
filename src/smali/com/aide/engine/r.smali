.class public final Lcom/aide/engine/r;
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
.field private final FH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x2ef6b42a74af72d1L
    .end annotation
.end field

.field private final Hw:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x288a4c8699882858L
    .end annotation
.end field

.field private final v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x304d5e62a5ef4fd4L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0xfd564f74a7fa0b4L    # -2.06528389502687E232

    const-class v0, Lcom/aide/engine/r;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-wide v8, -0x27e34440adc22030L    # -2.830382837997678E116

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/r;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x27e34440adc22030L    # -2.830382837997678E116

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/r;->FH:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/engine/r;->Hw:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/engine/r;->v5:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/r;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x5f51beb3f29b7cf4L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/r;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5f51beb3f29b7cf4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/r;->v5:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/r;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x432a1c0b3c9109a0L    # 3.674591990416592E15

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/r;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x432a1c0b3c9109a0L    # 3.674591990416592E15

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/r;->Hw:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/r;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public clone()Lcom/aide/engine/r;
    .registers 7

    const-wide v4, -0x1d79d64eb8e89c93L    # -4.084072546213982E166

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/r;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1d79d64eb8e89c93L    # -4.084072546213982E166

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/r;

    iget-object v1, p0, Lcom/aide/engine/r;->FH:Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/engine/r;->Hw:Ljava/lang/String;

    iget-object v3, p0, Lcom/aide/engine/r;->v5:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/engine/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/r;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/aide/engine/r;->clone()Lcom/aide/engine/r;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const-wide v6, -0x1e4da99c8040f60L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/engine/r;->j6:Z

    if-eqz v2, :cond_0

    const-wide v4, -0x1e4da99c8040f60L

    invoke-static {v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v2, p1, Lcom/aide/engine/r;

    if-nez v2, :cond_1

    :goto_0
    return v3

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/aide/engine/r;

    move-object v2, v0

    iget-object v4, p0, Lcom/aide/engine/r;->FH:Ljava/lang/String;

    iget-object v5, v2, Lcom/aide/engine/r;->FH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/aide/engine/r;->Hw:Ljava/lang/String;

    iget-object v5, v2, Lcom/aide/engine/r;->Hw:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/aide/engine/r;->v5:Ljava/lang/String;

    iget-object v2, v2, Lcom/aide/engine/r;->v5:Ljava/lang/String;

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

    sget-boolean v3, Lcom/aide/engine/r;->DW:Z

    if-eqz v3, :cond_2

    invoke-static {v2, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v2

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public hashCode()I
    .registers 7

    const-wide v4, -0xf91b45b05564755L    # -3.762743226808423E233

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/r;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xf91b45b05564755L    # -3.762743226808423E233

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/r;->FH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/aide/engine/r;->Hw:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/aide/engine/r;->v5:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/r;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v2, -0x2139ef3cca9a4007L    # -3.52680325002568E148

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/r;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2139ef3cca9a4007L    # -3.52680325002568E148

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/r;->FH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/r;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
