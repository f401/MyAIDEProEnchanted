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
    .registers 3

    const-class v0, Lcom/aide/engine/r;

    const-wide v1, -0xfd564f74a7fa0b4L  # -2.06528389502687E232

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/r;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, -0x27e34440adc22030L  # -2.830382837997678E116

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/r;->FH:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/engine/r;->Hw:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/engine/r;->v5:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/r;->DW:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0x27e34440adc22030L  # -2.830382837997678E116

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x5f51beb3f29b7cf4L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/r;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/r;->v5:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/r;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public FH()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x432a1c0b3c9109a0L  # 3.674591990416592E15

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/r;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/r;->Hw:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/r;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public clone()Lcom/aide/engine/r;
    .registers 7

    const-wide v0, -0x1d79d64eb8e89c93L  # -4.084072546213982E166

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/r;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/engine/r;

    iget-object v3, p0, Lcom/aide/engine/r;->FH:Ljava/lang/String;

    iget-object v4, p0, Lcom/aide/engine/r;->Hw:Ljava/lang/String;

    iget-object v5, p0, Lcom/aide/engine/r;->v5:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/aide/engine/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-object v2

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/r;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/aide/engine/r;->clone()Lcom/aide/engine/r;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const-wide v0, -0x1e4da99c8040f60L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/r;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v2, p1, Lcom/aide/engine/r;

    const/4 v3, 0x0

    if-nez v2, :cond_12

    return v3

    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/aide/engine/r;

    iget-object v4, p0, Lcom/aide/engine/r;->FH:Ljava/lang/String;

    iget-object v5, v2, Lcom/aide/engine/r;->FH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    iget-object v4, p0, Lcom/aide/engine/r;->Hw:Ljava/lang/String;

    iget-object v5, v2, Lcom/aide/engine/r;->Hw:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    iget-object v4, p0, Lcom/aide/engine/r;->v5:Ljava/lang/String;

    iget-object v2, v2, Lcom/aide/engine/r;->v5:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_35

    if-eqz p1, :cond_34

    const/4 v3, 0x1

    :cond_34
    return v3

    :catchall_35
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/r;->DW:Z

    if-eqz v3, :cond_3d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v2
.end method

.method public hashCode()I
    .registers 6

    const-wide v0, -0xf91b45b05564755L  # -3.762743226808423E233

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/r;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/r;->FH:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget-object v3, p0, Lcom/aide/engine/r;->Hw:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iget-object v4, p0, Lcom/aide/engine/r;->v5:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_21

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    return v2

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/r;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public j6()Ljava/lang/String;
    .registers 5

    const-wide v0, -0x2139ef3cca9a4007L  # -3.52680325002568E148

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/r;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/r;->FH:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/r;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
