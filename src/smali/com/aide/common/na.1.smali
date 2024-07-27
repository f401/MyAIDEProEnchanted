.class public Lcom/aide/common/na;
.super Ljava/io/OutputStream;


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
.field private FH:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0xf5dafc7884cb42cL
    .end annotation
.end field

.field private Hw:[B
    .annotation runtime Labcd/ru;
        field = -0x1af3a15fbfb2ddebL
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = 0x2e7a0c27bad0825L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x22f2b263c9bd8d5L

    const-class v0, Lcom/aide/common/na;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    const-wide v4, -0x1df8d741c54e2600L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/na;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1df8d741c54e2600L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v0, 0x3e8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/aide/common/na;->Hw:[B

    iput-object p1, p0, Lcom/aide/common/na;->FH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/na;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2e5e1b4ac6f13250L
    .end annotation

    const-wide v6, 0x23a9ebdc1b776950L

    :try_start_0
    sget-boolean v0, Lcom/aide/common/na;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x23a9ebdc1b776950L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/na;->Hw:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/aide/common/na;->Hw:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aide/common/na;->Hw:[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/aide/common/na;->Hw:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/na;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public close()V
    .registers 9

    const-wide v6, 0x157fc2e23cad7338L    # 3.95713395239261E-205

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/common/na;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x157fc2e23cad7338L    # 3.95713395239261E-205

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/aide/common/na;->FH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/aide/common/na;->FH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/aide/common/na;->FH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iget v1, p0, Lcom/aide/common/na;->v5:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_3

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/aide/common/na;->FH:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lcom/aide/common/na;->Hw:[B

    aget-byte v4, v4, v1

    if-eq v3, v4, :cond_2

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    if-nez v0, :cond_3

    :goto_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/aide/common/na;->FH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aide/common/na;->Hw:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/aide/common/na;->v5:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/na;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public write(I)V
    .registers 8

    const-wide v4, -0x7aa6fcf33056280L    # -4.556697686650839E271

    :try_start_0
    sget-boolean v0, Lcom/aide/common/na;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7aa6fcf33056280L    # -4.556697686650839E271

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget v0, p0, Lcom/aide/common/na;->v5:I

    iget-object v1, p0, Lcom/aide/common/na;->Hw:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/aide/common/na;->v5:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/aide/common/na;->j6(I)V

    :cond_1
    iget-object v0, p0, Lcom/aide/common/na;->Hw:[B

    iget v1, p0, Lcom/aide/common/na;->v5:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/aide/common/na;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/na;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public write([BII)V
    .registers 14

    const-wide v8, 0xd40179238976378L

    :try_start_0
    sget-boolean v0, Lcom/aide/common/na;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0xd40179238976378L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/common/na;->v5:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/aide/common/na;->Hw:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/aide/common/na;->v5:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/aide/common/na;->j6(I)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    iget-object v1, p0, Lcom/aide/common/na;->Hw:[B

    iget v2, p0, Lcom/aide/common/na;->v5:I

    add-int/2addr v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/aide/common/na;->v5:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/aide/common/na;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/na;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method
