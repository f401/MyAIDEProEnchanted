.class public Labcd/Db;
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
.field private FH:[J
    .annotation runtime Labcd/ru;
        field = 0x2df94e75a38217a8L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = -0x163483d1dbdea65fL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Db;

    const-wide v1, -0x2e29ac0f1055f488L  # -1.7350282930421147E86

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const-wide v0, -0x151a45ac7c8f2a88L  # -8.719739874889959E206

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Db;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Labcd/Db;->FH:[J

    const/4 v3, 0x0

    iput v3, p0, Labcd/Db;->Hw:I
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/Db;->DW:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method


# virtual methods
.method public j6(I)J
    .registers 8

    const-wide v0, 0x1ed502c2a13917f4L

    :try_start_5
    sget-boolean v2, Labcd/Db;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Db;->FH:[J

    const-wide/16 v3, -0x1

    if-nez v2, :cond_13

    return-wide v3

    :cond_13
    array-length v5, v2

    if-lt p1, v5, :cond_17

    return-wide v3

    :cond_17
    iget v5, p0, Labcd/Db;->Hw:I

    if-lt p1, v5, :cond_1c

    return-wide v3

    :cond_1c
    aget-wide v0, v2, p1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-wide v0

    :catchall_1f
    move-exception v2

    sget-boolean v3, Labcd/Db;->DW:Z

    if-eqz v3, :cond_2c

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, 0x1f5659b551f59a00L

    :try_start_5
    sget-boolean v2, Labcd/Db;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, p0, Labcd/Db;->Hw:I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Db;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(IJ)V
    .registers 11

    :try_start_0
    sget-boolean v0, Labcd/Db;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v2, -0x532641e22e56cabL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Labcd/Db;->FH:[J

    if-nez v0, :cond_27

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Labcd/Db;->FH:[J

    goto :goto_40

    :cond_27
    array-length v1, v0

    if-lt p1, v1, :cond_40

    add-int/lit8 v1, p1, 0x1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [J

    iget-object v1, p0, Labcd/Db;->FH:[J

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Db;->FH:[J

    :cond_40
    :goto_40
    iget v0, p0, Labcd/Db;->Hw:I

    if-lt p1, v0, :cond_48

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Labcd/Db;->Hw:I

    :cond_48
    iget-object v0, p0, Labcd/Db;->FH:[J

    aput-wide p2, v0, p1
    :try_end_4c
    .catchall {:try_start_0 .. :try_end_4c} :catchall_4d

    return-void

    :catchall_4d
    move-exception v0

    sget-boolean v1, Labcd/Db;->DW:Z

    if-eqz v1, :cond_66

    const-wide v2, -0x532641e22e56cabL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_66
    throw v0
.end method

.method public j6(J)V
    .registers 9

    const-wide v0, -0x115a70ac320bf8adL  # -9.975460807119432E224

    :try_start_5
    sget-boolean v2, Labcd/Db;->j6:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v2, p0, Labcd/Db;->FH:[J

    if-nez v2, :cond_1c

    const/16 v2, 0xa

    new-array v2, v2, [J

    iput-object v2, p0, Labcd/Db;->FH:[J

    goto :goto_2f

    :cond_1c
    iget v3, p0, Labcd/Db;->Hw:I

    array-length v4, v2

    if-lt v3, v4, :cond_2f

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [J

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/Db;->FH:[J

    :cond_2f
    :goto_2f
    iget-object v2, p0, Labcd/Db;->FH:[J

    iget v3, p0, Labcd/Db;->Hw:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/Db;->Hw:I
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_3a

    aput-wide p1, v2, v3

    return-void

    :catchall_3a
    move-exception v2

    sget-boolean v3, Labcd/Db;->DW:Z

    if-eqz v3, :cond_47

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_47
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const-wide v0, 0x3311c2301653e3bfL  # 1.0792158656563815E-62

    :try_start_5
    sget-boolean v2, Labcd/Db;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_40

    :cond_c
    const-string v2, "{"

    const/4 v3, 0x0

    :goto_f
    :try_start_f
    iget v4, p0, Labcd/Db;->Hw:I

    if-ge v3, v4, :cond_2e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/Db;->FH:[J

    aget-wide v5, v2, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3f
    .catchall {:try_start_f .. :try_end_3f} :catchall_40

    return-object v0

    :catchall_40
    move-exception v2

    sget-boolean v3, Labcd/Db;->DW:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_48
    goto :goto_4a

    :goto_49
    throw v2

    :goto_4a
    goto :goto_49
.end method
