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
    .registers 3

    const-class v0, Lcom/aide/common/na;

    const-wide v1, -0x22f2b263c9bd8d5L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x1df8d741c54e2600L

    :try_start_6
    sget-boolean v3, Lcom/aide/common/na;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 v3, 0x3e8

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/aide/common/na;->Hw:[B

    iput-object p1, p0, Lcom/aide/common/na;->FH:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/common/na;->DW:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method private j6(I)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x2e5e1b4ac6f13250L
    .end annotation

    const-wide v0, 0x23a9ebdc1b776950L

    :try_start_5
    sget-boolean v2, Lcom/aide/common/na;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/na;->Hw:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, Lcom/aide/common/na;->Hw:[B

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/aide/common/na;->Hw:[B
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/common/na;->DW:Z

    if-eqz v3, :cond_2e

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v2
.end method


# virtual methods
.method public close()V
    .registers 9

    const-wide v0, 0x157fc2e23cad7338L  # 3.95713395239261E-205

    :try_start_5
    sget-boolean v2, Lcom/aide/common/na;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/aide/common/na;->FH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/aide/common/na;->FH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5b

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/aide/common/na;->FH:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iget v2, p0, Lcom/aide/common/na;->v5:I

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-nez v2, :cond_5b

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/aide/common/na;->FH:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_42
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_54

    iget-object v6, p0, Lcom/aide/common/na;->Hw:[B

    aget-byte v6, v6, v4

    if-eq v5, v6, :cond_51

    const/4 v4, 0x1

    goto :goto_55

    :cond_51
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    :cond_54
    const/4 v4, 0x0

    :goto_55
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    if-nez v4, :cond_5b

    return-void

    :cond_5b
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/aide/common/na;->FH:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aide/common/na;->Hw:[B

    iget v5, p0, Lcom/aide/common/na;->v5:I

    invoke-virtual {v2, v4, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6c
    .catchall {:try_start_5 .. :try_end_6c} :catchall_6d

    return-void

    :catchall_6d
    move-exception v2

    sget-boolean v3, Lcom/aide/common/na;->DW:Z

    if-eqz v3, :cond_75

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_75
    goto :goto_77

    :goto_76
    throw v2

    :goto_77
    goto :goto_76
.end method

.method public write(I)V
    .registers 7

    const-wide v0, -0x7aa6fcf33056280L  # -4.556697686650839E271

    :try_start_5
    sget-boolean v2, Lcom/aide/common/na;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget v2, p0, Lcom/aide/common/na;->v5:I

    iget-object v3, p0, Lcom/aide/common/na;->Hw:[B

    array-length v3, v3

    if-lt v2, v3, :cond_18

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/aide/common/na;->j6(I)V

    :cond_18
    iget-object v2, p0, Lcom/aide/common/na;->Hw:[B

    iget v3, p0, Lcom/aide/common/na;->v5:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/aide/common/na;->v5:I
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_24

    int-to-byte p1, p1

    aput-byte p1, v2, v3

    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/common/na;->DW:Z

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public write([BII)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/common/na;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xd40179238976378L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget v0, p0, Lcom/aide/common/na;->v5:I

    add-int v1, v0, p3

    iget-object v2, p0, Lcom/aide/common/na;->Hw:[B

    array-length v2, v2

    if-lt v1, v2, :cond_25

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lcom/aide/common/na;->j6(I)V

    :cond_25
    const/4 v0, 0x0

    :goto_26
    if-ge v0, p3, :cond_36

    iget-object v1, p0, Lcom/aide/common/na;->Hw:[B

    iget v2, p0, Lcom/aide/common/na;->v5:I

    add-int/2addr v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_36
    iget v0, p0, Lcom/aide/common/na;->v5:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/aide/common/na;->v5:I
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3c

    return-void

    :catchall_3c
    move-exception v0

    sget-boolean v1, Lcom/aide/common/na;->DW:Z

    if-eqz v1, :cond_56

    const-wide v2, 0xd40179238976378L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_56
    goto :goto_58

    :goto_57
    throw v0

    :goto_58
    goto :goto_57
.end method
