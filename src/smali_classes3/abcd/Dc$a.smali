.class Labcd/Dc$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Dc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
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
.field private FH:[C
    .annotation runtime Labcd/ru;
        field = 0x27616b90e43fa781L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = -0x36e3d25c6b94ef35L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Dc$a;

    const-wide v1, -0x2967141c501f5625L  # -1.4632267514640805E109

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x16942df5ef50f7d7L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xef696e669824b55L

    :try_start_6
    sget-boolean v3, Labcd/Dc$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x64

    new-array v3, v3, [C

    iput-object v3, p0, Labcd/Dc$a;->FH:[C

    const/4 v3, 0x0

    iput v3, p0, Labcd/Dc$a;->Hw:I
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v3

    sget-boolean v4, Labcd/Dc$a;->DW:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v3
.end method

.method synthetic constructor <init>(Labcd/Cc;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x142f9f406393be54L

    :try_start_6
    sget-boolean v3, Labcd/Dc$a;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Labcd/Dc$a;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/Dc$a;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public DW([CII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x189dd72eeab91760L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Dc$a;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x25ba352024b4fb8cL

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget v0, p0, Labcd/Dc$a;->Hw:I

    mul-int/lit8 v1, p3, 0x6

    add-int/2addr v1, v0

    iget-object v2, p0, Labcd/Dc$a;->FH:[C

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-gt v2, v1, :cond_35

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    iget v2, p0, Labcd/Dc$a;->Hw:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Dc$a;->FH:[C
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_13a

    :cond_35
    move v0, p2

    :goto_36
    add-int v1, p2, p3

    if-ge v0, v1, :cond_139

    aget-char v1, p1, v0

    const/16 v2, 0x9

    const/16 v5, 0x5c

    if-eq v1, v2, :cond_123

    const/16 v2, 0xa

    if-eq v1, v2, :cond_110

    const/16 v2, 0xd

    if-eq v1, v2, :cond_fd

    const/16 v2, 0x22

    if-eq v1, v2, :cond_ec

    :try_start_4e
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_e1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ne v2, v7, :cond_72

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "000"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9a

    :cond_72
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_86

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "00"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6d

    :cond_86
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_9a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6d

    :cond_9a
    :goto_9a
    iget-object v2, p0, Labcd/Dc$a;->FH:[C

    iget v8, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Labcd/Dc$a;->Hw:I
    :try_end_a2
    .catchall {:try_start_4e .. :try_end_a2} :catchall_13a

    aput-char v5, v2, v8

    add-int/lit8 v5, v9, 0x1

    :try_start_a6
    iput v5, p0, Labcd/Dc$a;->Hw:I
    :try_end_a8
    .catchall {:try_start_a6 .. :try_end_a8} :catchall_13a

    const/16 v8, 0x75

    aput-char v8, v2, v9

    add-int/lit8 v8, v5, 0x1

    :try_start_ae
    iput v8, p0, Labcd/Dc$a;->Hw:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v2, v5

    iget-object v2, p0, Labcd/Dc$a;->FH:[C

    iget v5, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Labcd/Dc$a;->Hw:I

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v2, v5

    iget-object v2, p0, Labcd/Dc$a;->FH:[C

    iget v5, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Labcd/Dc$a;->Hw:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v2, v5

    iget-object v2, p0, Labcd/Dc$a;->FH:[C

    iget v5, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Labcd/Dc$a;->Hw:I

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v2, v5

    goto :goto_135

    :cond_e1
    iget-object v2, p0, Labcd/Dc$a;->FH:[C

    iget v5, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Labcd/Dc$a;->Hw:I
    :try_end_e9
    .catchall {:try_start_ae .. :try_end_e9} :catchall_13a

    aput-char v1, v2, v5

    goto :goto_135

    :cond_ec
    :try_start_ec
    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    iget v6, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Labcd/Dc$a;->Hw:I
    :try_end_f4
    .catchall {:try_start_ec .. :try_end_f4} :catchall_13a

    aput-char v5, v1, v6

    add-int/lit8 v5, v7, 0x1

    :try_start_f8
    iput v5, p0, Labcd/Dc$a;->Hw:I
    :try_end_fa
    .catchall {:try_start_f8 .. :try_end_fa} :catchall_13a

    aput-char v2, v1, v7

    goto :goto_135

    :cond_fd
    :try_start_fd
    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    iget v2, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Labcd/Dc$a;->Hw:I
    :try_end_105
    .catchall {:try_start_fd .. :try_end_105} :catchall_13a

    aput-char v5, v1, v2

    add-int/lit8 v2, v6, 0x1

    :try_start_109
    iput v2, p0, Labcd/Dc$a;->Hw:I
    :try_end_10b
    .catchall {:try_start_109 .. :try_end_10b} :catchall_13a

    const/16 v2, 0x72

    aput-char v2, v1, v6

    goto :goto_135

    :cond_110
    :try_start_110
    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    iget v2, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Labcd/Dc$a;->Hw:I
    :try_end_118
    .catchall {:try_start_110 .. :try_end_118} :catchall_13a

    aput-char v5, v1, v2

    add-int/lit8 v2, v6, 0x1

    :try_start_11c
    iput v2, p0, Labcd/Dc$a;->Hw:I
    :try_end_11e
    .catchall {:try_start_11c .. :try_end_11e} :catchall_13a

    const/16 v2, 0x6e

    aput-char v2, v1, v6

    goto :goto_135

    :cond_123
    :try_start_123
    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    iget v2, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Labcd/Dc$a;->Hw:I
    :try_end_12b
    .catchall {:try_start_123 .. :try_end_12b} :catchall_13a

    aput-char v5, v1, v2

    add-int/lit8 v2, v6, 0x1

    :try_start_12f
    iput v2, p0, Labcd/Dc$a;->Hw:I
    :try_end_131
    .catchall {:try_start_12f .. :try_end_131} :catchall_13a

    const/16 v2, 0x74

    aput-char v2, v1, v6

    :goto_135
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_36

    :cond_139
    return-void

    :catchall_13a
    move-exception v0

    sget-boolean v1, Labcd/Dc$a;->DW:Z

    if-eqz v1, :cond_154

    const-wide v2, -0x25ba352024b4fb8cL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_154
    goto :goto_156

    :goto_155
    throw v0

    :goto_156
    goto :goto_155
.end method

.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2228126cde1eaa8L
    .end annotation

    const-wide v0, 0x13f48966c4eed4b8L  # 1.52508568464433E-212

    :try_start_5
    sget-boolean v2, Labcd/Dc$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Dc$a;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/Dc$a;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public DW(Ljava/lang/String;)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x117a22b7b62e95e9L
    .end annotation

    const-wide v0, 0xeeef510a558a463L  # 9.508155811907462E-237

    :try_start_5
    sget-boolean v2, Labcd/Dc$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Labcd/Dc$a;->Hw:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_16

    return v4

    :cond_16
    const/4 v2, 0x0

    :goto_17
    iget v3, p0, Labcd/Dc$a;->Hw:I

    if-ge v2, v3, :cond_29

    iget-object v3, p0, Labcd/Dc$a;->FH:[C

    aget-char v3, v3, v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_2b

    if-eq v3, v5, :cond_26

    return v4

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_29
    const/4 p1, 0x1

    return p1

    :catchall_2b
    move-exception v2

    sget-boolean v3, Labcd/Dc$a;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    goto :goto_35

    :goto_34
    throw v2

    :goto_35
    goto :goto_34
.end method

.method public FH()Ljava/io/Reader;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x3aa1883c564dc430L
    .end annotation

    const-wide v0, -0x5fdbe791ccfc690L  # -5.177865571269053E279

    :try_start_5
    sget-boolean v2, Labcd/Dc$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/io/CharArrayReader;

    iget-object v3, p0, Labcd/Dc$a;->FH:[C

    iget v4, p0, Labcd/Dc$a;->Hw:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4}, Ljava/io/CharArrayReader;-><init>([CII)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v2

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Dc$a;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public Hw()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x41772b019340448bL
    .end annotation

    const-wide v0, 0x1aecb68a88abc7f5L  # 5.535692228644668E-179

    :try_start_5
    sget-boolean v2, Labcd/Dc$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v2, v2, -0x1

    :goto_10
    if-ltz v2, :cond_2a

    iget-object v3, p0, Labcd/Dc$a;->FH:[C

    aget-char v4, v3, v2

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_27

    const/16 v4, 0x2e

    aput-char v4, v3, v2

    add-int/lit8 v5, v2, 0x1

    aput-char v4, v3, v5

    add-int/lit8 v2, v2, 0x2

    aput-char v4, v3, v2
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2b

    return-void

    :cond_27
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    :cond_2a
    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Labcd/Dc$a;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    goto :goto_35

    :goto_34
    throw v2

    :goto_35
    goto :goto_34
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xe710cd2c2aae08L
    .end annotation

    const-wide v0, 0x12c436e9f80836c8L  # 2.863230547339449E-218

    :try_start_5
    sget-boolean v2, Labcd/Dc$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, p0, Labcd/Dc$a;->Hw:I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Dc$a;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x604c5c09cf4de18L
    .end annotation

    const-wide v0, 0x22b271e7c8ed70L

    :try_start_5
    sget-boolean v2, Labcd/Dc$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Labcd/Dc$a;->j6(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/Dc$a;->DW:Z

    if-eqz v3, :cond_21

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public j6(Labcd/Dc$a;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x6e1bcd40f19e470L
    .end annotation

    const-wide v0, 0x4f825bf9bdc064L

    :try_start_5
    sget-boolean v2, Labcd/Dc$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Dc$a;->Hw:I

    iget v3, p1, Labcd/Dc$a;->Hw:I

    add-int/2addr v3, v2

    iget-object v4, p0, Labcd/Dc$a;->FH:[C

    array-length v4, v4

    const/4 v5, 0x0

    if-gt v4, v3, :cond_28

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [C

    iget-object v3, p0, Labcd/Dc$a;->FH:[C

    iget v4, p0, Labcd/Dc$a;->Hw:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Labcd/Dc$a;->FH:[C

    :cond_28
    iget-object v2, p1, Labcd/Dc$a;->FH:[C

    iget-object v3, p0, Labcd/Dc$a;->FH:[C

    iget v4, p0, Labcd/Dc$a;->Hw:I

    iget v6, p1, Labcd/Dc$a;->Hw:I

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Labcd/Dc$a;->Hw:I

    iget v3, p1, Labcd/Dc$a;->Hw:I

    add-int/2addr v2, v3

    iput v2, p0, Labcd/Dc$a;->Hw:I
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v2

    sget-boolean v3, Labcd/Dc$a;->DW:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0xb347aa3afcf9f33L
    .end annotation

    const-wide v0, 0xe1c968749d4783L

    :try_start_5
    sget-boolean v2, Labcd/Dc$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Dc$a;->Hw:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Labcd/Dc$a;->FH:[C

    array-length v3, v3

    const/4 v4, 0x0

    if-gt v3, v2, :cond_2c

    iget v3, p0, Labcd/Dc$a;->Hw:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [C

    iget-object v3, p0, Labcd/Dc$a;->FH:[C

    iget v5, p0, Labcd/Dc$a;->Hw:I

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Labcd/Dc$a;->FH:[C

    :cond_2c
    :goto_2c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_43

    iget-object v2, p0, Labcd/Dc$a;->FH:[C

    iget v3, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Labcd/Dc$a;->Hw:I

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v2, v3
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_44

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_43
    return-void

    :catchall_44
    move-exception v2

    sget-boolean v3, Labcd/Dc$a;->DW:Z

    if-eqz v3, :cond_4c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    goto :goto_4e

    :goto_4d
    throw v2

    :goto_4e
    goto :goto_4d
.end method

.method public j6([CII)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x153681dd448b8077L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Dc$a;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x29caac80bf777fL

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget v0, p0, Labcd/Dc$a;->Hw:I

    add-int v1, v0, p3

    iget-object v2, p0, Labcd/Dc$a;->FH:[C

    array-length v2, v2

    if-gt v2, v1, :cond_33

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    iget v2, p0, Labcd/Dc$a;->Hw:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Dc$a;->FH:[C

    :cond_33
    move v0, p2

    :goto_34
    add-int v1, p2, p3

    if-ge v0, v1, :cond_47

    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    iget v2, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/Dc$a;->Hw:I
    :try_end_40
    .catchall {:try_start_0 .. :try_end_40} :catchall_48

    aget-char v3, p1, v0

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_47
    return-void

    :catchall_48
    move-exception v0

    sget-boolean v1, Labcd/Dc$a;->DW:Z

    if-eqz v1, :cond_62

    const-wide v2, -0x29caac80bf777fL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    goto :goto_64

    :goto_63
    throw v0

    :goto_64
    goto :goto_63
.end method

.method public toString()Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x9638b9ce482c957L
    .end annotation

    const-wide v0, 0x1d95ac7f24fe3d1dL

    :try_start_5
    sget-boolean v2, Labcd/Dc$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Labcd/Dc$a;->FH:[C

    iget v4, p0, Labcd/Dc$a;->Hw:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-object v2

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Dc$a;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public v5()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x7bff5ff308e73e0L
    .end annotation

    const-wide v0, 0x2018911ee17cf780L

    :try_start_5
    sget-boolean v2, Labcd/Dc$a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Dc$a;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Dc$a;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
