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
    .registers 4

    const-wide v2, -0x2e29ac0f1055f488L    # -1.7350282930421147E86

    const-class v0, Labcd/Db;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x151a45ac7c8f2a88L    # -8.719739874889959E206

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Db;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x151a45ac7c8f2a88L    # -8.719739874889959E206

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Db;->FH:[J

    const/4 v0, 0x0

    iput v0, p0, Labcd/Db;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Db;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public j6(I)J
    .registers 8

    const-wide v4, 0x1ed502c2a13917f4L

    const-wide/16 v0, -0x1

    :try_start_0
    sget-boolean v2, Labcd/Db;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x1ed502c2a13917f4L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v2, p0, Labcd/Db;->FH:[J

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-wide v0

    :cond_2
    iget-object v2, p0, Labcd/Db;->FH:[J

    array-length v2, v2

    if-ge p1, v2, :cond_1

    iget v2, p0, Labcd/Db;->Hw:I

    if-ge p1, v2, :cond_1

    iget-object v0, p0, Labcd/Db;->FH:[J

    aget-wide v0, v0, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Db;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v2, 0x1f5659b551f59a00L

    :try_start_0
    sget-boolean v0, Labcd/Db;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1f5659b551f59a00L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Labcd/Db;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Db;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(IJ)V
    .registers 12

    const-wide v2, -0x532641e22e56cabL

    :try_start_0
    sget-boolean v0, Labcd/Db;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v4, -0x532641e22e56cabL

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Db;->FH:[J

    if-nez v0, :cond_3

    const/16 v0, 0xa

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Labcd/Db;->FH:[J

    :cond_1
    :goto_0
    iget v0, p0, Labcd/Db;->Hw:I

    if-lt p1, v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Labcd/Db;->Hw:I

    :cond_2
    iget-object v0, p0, Labcd/Db;->FH:[J

    aput-wide p2, v0, p1

    return-void

    :cond_3
    iget-object v0, p0, Labcd/Db;->FH:[J

    array-length v0, v0

    if-lt p1, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Labcd/Db;->FH:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [J

    iget-object v1, p0, Labcd/Db;->FH:[J

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Labcd/Db;->FH:[J

    array-length v6, v6

    invoke-static {v1, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Db;->FH:[J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Db;->DW:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public j6(J)V
    .registers 12

    const-wide v6, -0x115a70ac320bf8adL    # -9.975460807119432E224

    :try_start_0
    sget-boolean v0, Labcd/Db;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const-wide v2, -0x115a70ac320bf8adL    # -9.975460807119432E224

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Db;->FH:[J

    if-nez v0, :cond_2

    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Labcd/Db;->FH:[J

    :cond_1
    :goto_0
    iget-object v0, p0, Labcd/Db;->FH:[J

    iget v1, p0, Labcd/Db;->Hw:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/Db;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    aput-wide p1, v0, v1

    return-void

    :cond_2
    :try_start_1
    iget v0, p0, Labcd/Db;->Hw:I

    iget-object v1, p0, Labcd/Db;->FH:[J

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Labcd/Db;->FH:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [J

    iget-object v1, p0, Labcd/Db;->FH:[J

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/Db;->FH:[J

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Db;->FH:[J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Db;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    const-wide v6, 0x3311c2301653e3bfL    # 1.0792158656563815E-62

    :try_start_0
    sget-boolean v0, Labcd/Db;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3311c2301653e3bfL    # 1.0792158656563815E-62

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "{"

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget v2, p0, Labcd/Db;->Hw:I

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/Db;->FH:[J

    aget-wide v4, v0, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Db;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
