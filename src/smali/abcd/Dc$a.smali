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
    .registers 4

    const-wide v2, -0x2967141c501f5625L    # -1.4632267514640805E109

    const-class v0, Labcd/Dc$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x16942df5ef50f7d7L
    .end annotation

    const-wide v4, 0xef696e669824b55L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Dc$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xef696e669824b55L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    new-array v0, v0, [C

    iput-object v0, p0, Labcd/Dc$a;->FH:[C

    const/4 v0, 0x0

    iput v0, p0, Labcd/Dc$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Dc$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Labcd/Cc;)V
    .registers 8

    const-wide v4, 0x142f9f406393be54L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Dc$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x142f9f406393be54L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Labcd/Dc$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Dc$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW([CII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x189dd72eeab91760L
    .end annotation

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x5c

    :try_start_0
    sget-boolean v0, Labcd/Dc$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x25ba352024b4fb8cL

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Dc$a;->Hw:I

    mul-int/lit8 v1, p3, 0x6

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    array-length v1, v1

    if-gt v1, v0, :cond_1

    iget v1, p0, Labcd/Dc$a;->Hw:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Labcd/Dc$a;->Hw:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Dc$a;->FH:[C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v1, p2

    :goto_0
    add-int v0, p2, p3

    if-ge v1, v0, :cond_b

    aget-char v0, p1, v1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_9

    const/16 v2, 0xa

    if-eq v0, v2, :cond_8

    const/16 v2, 0xd

    if-eq v0, v2, :cond_7

    const/16 v2, 0x22

    if-eq v0, v2, :cond_6

    :try_start_1
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v7, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    iget-object v2, p0, Labcd/Dc$a;->FH:[C

    iget v3, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/Dc$a;->Hw:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    aput-char v6, v2, v3

    :try_start_2
    iget-object v2, p0, Labcd/Dc$a;->FH:[C

    iget v3, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/Dc$a;->Hw:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v4, 0x75

    aput-char v4, v2, v3

    :try_start_3
    iget-object v2, p0, Labcd/Dc$a;->FH:[C

    iget v3, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/Dc$a;->Hw:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    iget-object v2, p0, Labcd/Dc$a;->FH:[C

    iget v3, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/Dc$a;->Hw:I

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    iget-object v2, p0, Labcd/Dc$a;->FH:[C

    iget v3, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/Dc$a;->Hw:I

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    iget-object v2, p0, Labcd/Dc$a;->FH:[C

    iget v3, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/Dc$a;->Hw:I

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, v2, v3

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v8, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v9, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Labcd/Dc$a;->FH:[C

    iget v3, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/Dc$a;->Hw:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    aput-char v0, v2, v3

    goto :goto_2

    :cond_6
    :try_start_4
    iget-object v0, p0, Labcd/Dc$a;->FH:[C

    iget v2, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/Dc$a;->Hw:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    aput-char v6, v0, v2

    :try_start_5
    iget-object v0, p0, Labcd/Dc$a;->FH:[C

    iget v2, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/Dc$a;->Hw:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    const/16 v3, 0x22

    aput-char v3, v0, v2

    goto :goto_2

    :cond_7
    :try_start_6
    iget-object v0, p0, Labcd/Dc$a;->FH:[C

    iget v2, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/Dc$a;->Hw:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    aput-char v6, v0, v2

    :try_start_7
    iget-object v0, p0, Labcd/Dc$a;->FH:[C

    iget v2, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/Dc$a;->Hw:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    const/16 v3, 0x72

    aput-char v3, v0, v2

    goto :goto_2

    :cond_8
    :try_start_8
    iget-object v0, p0, Labcd/Dc$a;->FH:[C

    iget v2, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/Dc$a;->Hw:I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    aput-char v6, v0, v2

    :try_start_9
    iget-object v0, p0, Labcd/Dc$a;->FH:[C

    iget v2, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/Dc$a;->Hw:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    const/16 v3, 0x6e

    aput-char v3, v0, v2

    goto/16 :goto_2

    :cond_9
    :try_start_a
    iget-object v0, p0, Labcd/Dc$a;->FH:[C

    iget v2, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/Dc$a;->Hw:I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    aput-char v6, v0, v2

    :try_start_b
    iget-object v0, p0, Labcd/Dc$a;->FH:[C

    iget v2, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/Dc$a;->Hw:I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    const/16 v3, 0x74

    aput-char v3, v0, v2

    goto/16 :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Dc$a;->DW:Z

    if-eqz v0, :cond_a

    const-wide v2, -0x25ba352024b4fb8cL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    throw v1

    :cond_b
    return-void
.end method

.method public DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2228126cde1eaa8L
    .end annotation

    const-wide v2, 0x13f48966c4eed4b8L    # 1.52508568464433E-212

    :try_start_0
    sget-boolean v0, Labcd/Dc$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x13f48966c4eed4b8L    # 1.52508568464433E-212

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Dc$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Dc$a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public DW(Ljava/lang/String;)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x117a22b7b62e95e9L
    .end annotation

    const-wide v4, 0xeeef510a558a463L    # 9.508155811907462E-237

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Dc$a;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0xeeef510a558a463L    # 9.508155811907462E-237

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Labcd/Dc$a;->Hw:I

    if-eq v1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v1, v0

    :goto_1
    iget v2, p0, Labcd/Dc$a;->Hw:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Labcd/Dc$a;->FH:[C

    aget-char v2, v2, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Dc$a;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public FH()Ljava/io/Reader;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x3aa1883c564dc430L
    .end annotation

    const-wide v4, -0x5fdbe791ccfc690L    # -5.177865571269053E279

    :try_start_0
    sget-boolean v0, Labcd/Dc$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5fdbe791ccfc690L    # -5.177865571269053E279

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/io/CharArrayReader;

    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    const/4 v2, 0x0

    iget v3, p0, Labcd/Dc$a;->Hw:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/CharArrayReader;-><init>([CII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Dc$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x41772b019340448bL
    .end annotation

    const-wide v4, 0x1aecb68a88abc7f5L    # 5.535692228644668E-179

    :try_start_0
    sget-boolean v0, Labcd/Dc$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1aecb68a88abc7f5L    # 5.535692228644668E-179

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    aget-char v1, v1, v0

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    const/16 v2, 0x2e

    aput-char v2, v1, v0

    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x2e

    aput-char v3, v1, v2

    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    add-int/lit8 v0, v0, 0x2

    const/16 v2, 0x2e

    aput-char v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Dc$a;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xe710cd2c2aae08L
    .end annotation

    const-wide v2, 0x12c436e9f80836c8L    # 2.863230547339449E-218

    :try_start_0
    sget-boolean v0, Labcd/Dc$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x12c436e9f80836c8L    # 2.863230547339449E-218

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Labcd/Dc$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Dc$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x604c5c09cf4de18L
    .end annotation

    const-wide v2, 0x22b271e7c8ed70L

    :try_start_0
    sget-boolean v0, Labcd/Dc$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x22b271e7c8ed70L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/Dc$a;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Dc$a;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Dc$a;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x6e1bcd40f19e470L
    .end annotation

    const-wide v6, 0x4f825bf9bdc064L

    :try_start_0
    sget-boolean v0, Labcd/Dc$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4f825bf9bdc064L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Dc$a;->Hw:I

    iget v1, p1, Labcd/Dc$a;->Hw:I

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    array-length v1, v1

    if-gt v1, v0, :cond_1

    iget v1, p0, Labcd/Dc$a;->Hw:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Labcd/Dc$a;->Hw:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Dc$a;->FH:[C

    :cond_1
    iget-object v0, p1, Labcd/Dc$a;->FH:[C

    const/4 v1, 0x0

    iget-object v2, p0, Labcd/Dc$a;->FH:[C

    iget v3, p0, Labcd/Dc$a;->Hw:I

    iget v4, p1, Labcd/Dc$a;->Hw:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Labcd/Dc$a;->Hw:I

    iget v1, p1, Labcd/Dc$a;->Hw:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/Dc$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Dc$a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xb347aa3afcf9f33L
    .end annotation

    const-wide v6, 0xe1c968749d4783L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Dc$a;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0xe1c968749d4783L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/Dc$a;->Hw:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Labcd/Dc$a;->FH:[C

    array-length v2, v2

    if-gt v2, v1, :cond_1

    iget v2, p0, Labcd/Dc$a;->Hw:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [C

    iget-object v2, p0, Labcd/Dc$a;->FH:[C

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Labcd/Dc$a;->Hw:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Labcd/Dc$a;->FH:[C

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    iget v2, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/Dc$a;->Hw:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Dc$a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method public j6([CII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x153681dd448b8077L
    .end annotation

    const-wide v8, -0x29caac80bf777fL

    :try_start_0
    sget-boolean v0, Labcd/Dc$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x29caac80bf777fL

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Dc$a;->Hw:I

    add-int/2addr v0, p3

    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    array-length v1, v1

    if-gt v1, v0, :cond_1

    iget v1, p0, Labcd/Dc$a;->Hw:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Labcd/Dc$a;->Hw:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Dc$a;->FH:[C

    :cond_1
    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    iget v2, p0, Labcd/Dc$a;->Hw:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/Dc$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    aget-char v3, p1, v0

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Dc$a;->DW:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x9638b9ce482c957L
    .end annotation

    const-wide v4, 0x1d95ac7f24fe3d1dL

    :try_start_0
    sget-boolean v0, Labcd/Dc$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1d95ac7f24fe3d1dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Labcd/Dc$a;->FH:[C

    const/4 v2, 0x0

    iget v3, p0, Labcd/Dc$a;->Hw:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Dc$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x7bff5ff308e73e0L
    .end annotation

    const-wide v2, 0x2018911ee17cf780L

    :try_start_0
    sget-boolean v0, Labcd/Dc$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2018911ee17cf780L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Dc$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Dc$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
