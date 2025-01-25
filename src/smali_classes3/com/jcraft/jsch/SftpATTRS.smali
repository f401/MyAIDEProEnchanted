.class public Lcom/jcraft/jsch/SftpATTRS;
.super Ljava/lang/Object;


# instance fields
.field DW:J

.field FH:I

.field Hw:I

.field VH:I

.field Zo:I

.field gn:[Ljava/lang/String;

.field j6:I

.field v5:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/SftpATTRS;->j6:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/SftpATTRS;->gn:[Ljava/lang/String;

    return-void
.end method

.method static DW(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;
    .registers 7

    new-instance v0, Lcom/jcraft/jsch/SftpATTRS;

    invoke-direct {v0}, Lcom/jcraft/jsch/SftpATTRS;-><init>()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->j6:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->v5()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpATTRS;->DW:J

    :cond_15
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->j6:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->FH:I

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->Hw:I

    :cond_27
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->j6:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->v5:I

    :cond_33
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->j6:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3f

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->Zo:I

    :cond_3f
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->j6:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4b

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->VH:I

    :cond_4b
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->j6:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_81

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v1

    if-lez v1, :cond_81

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Lcom/jcraft/jsch/SftpATTRS;->gn:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_5f
    if-lt v2, v1, :cond_62

    goto :goto_81

    :cond_62
    iget-object v3, v0, Lcom/jcraft/jsch/SftpATTRS;->gn:[Ljava/lang/String;

    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v3, v0, Lcom/jcraft/jsch/SftpATTRS;->gn:[Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->tp()[B

    move-result-object v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->j6([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    :cond_81
    :goto_81
    return-object v0
.end method

.method private j6(I)Z
    .registers 4

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->j6:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->v5:I

    const v1, 0xf000

    and-int/2addr v0, v1

    if-ne v0, p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->Hw:I

    return v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->VH:I

    return v0
.end method

.method public Hw()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/Date;

    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->VH:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public VH()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->FH:I

    return v0
.end method

.method public Zo()J
    .registers 3

    iget-wide v0, p0, Lcom/jcraft/jsch/SftpATTRS;->DW:J

    return-wide v0
.end method

.method public gn()Z
    .registers 2

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->j6(I)Z

    move-result v0

    return v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->j6:I

    return v0
.end method

.method j6(Lcom/jcraft/jsch/Buffer;)V
    .registers 6

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->j6:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->j6:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/jcraft/jsch/SftpATTRS;->DW:J

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->j6(J)V

    :cond_10
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->j6:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->FH:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->Hw:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    :cond_20
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->j6:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->v5:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    :cond_2b
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->j6:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_36

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->Zo:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    :cond_36
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->j6:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->VH:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->FH(I)V

    :cond_41
    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->j6:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/jcraft/jsch/SftpATTRS;->gn:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_70

    const/4 v1, 0x0

    :goto_50
    if-lt v1, v0, :cond_53

    goto :goto_70

    :cond_53
    iget-object v2, p0, Lcom/jcraft/jsch/SftpATTRS;->gn:[Ljava/lang/String;

    mul-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    iget-object v2, p0, Lcom/jcraft/jsch/SftpATTRS;->gn:[Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->FH(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Buffer;->Hw([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_70
    :goto_70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->v5()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->VH()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->DW()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->Zo()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method tp()I
    .registers 7

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->j6:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x4

    if-eqz v1, :cond_a

    const/16 v1, 0xc

    goto :goto_b

    :cond_a
    const/4 v1, 0x4

    :goto_b
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_11

    add-int/lit8 v1, v1, 0x8

    :cond_11
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_17

    add-int/lit8 v1, v1, 0x4

    :cond_17
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_1d

    add-int/lit8 v1, v1, 0x8

    :cond_1d
    const/high16 v3, -0x80000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_4b

    add-int/lit8 v1, v1, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/SftpATTRS;->gn:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_4b

    const/4 v3, 0x0

    :goto_2c
    if-lt v3, v0, :cond_2f

    goto :goto_4b

    :cond_2f
    iget-object v4, p0, Lcom/jcraft/jsch/SftpATTRS;->gn:[Ljava/lang/String;

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v1, v1, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v2

    iget-object v4, p0, Lcom/jcraft/jsch/SftpATTRS;->gn:[Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_4b
    :goto_4b
    return v1
.end method

.method public u7()Z
    .registers 2

    const v0, 0xa000

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->j6(I)Z

    move-result v0

    return v0
.end method

.method public v5()Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->gn()Z

    move-result v1

    const/16 v2, 0x2d

    if-eqz v1, :cond_15

    const/16 v1, 0x64

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_21

    :cond_15
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->u7()Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v1, 0x6c

    goto :goto_11

    :cond_1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_21
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->v5:I

    and-int/lit16 v1, v1, 0x100

    const/16 v3, 0x72

    if-eqz v1, :cond_2d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_30

    :cond_2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_30
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->v5:I

    and-int/lit16 v1, v1, 0x80

    const/16 v4, 0x77

    if-eqz v1, :cond_3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3f

    :cond_3c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3f
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->v5:I

    and-int/lit16 v5, v1, 0x800

    const/16 v6, 0x73

    const/16 v7, 0x78

    if-eqz v5, :cond_4d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_58

    :cond_4d
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_55

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_58

    :cond_55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_58
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->v5:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_62

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_65

    :cond_62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_65
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->v5:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_72

    :cond_6f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_72
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->v5:I

    and-int/lit16 v5, v1, 0x400

    if-eqz v5, :cond_7c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_87

    :cond_7c
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_84

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_87

    :cond_84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_87
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->v5:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_91

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_94

    :cond_91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_94
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->v5:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_a1

    :cond_9e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_a1
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->v5:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_ab

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_ae

    :cond_ab
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_ae
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
