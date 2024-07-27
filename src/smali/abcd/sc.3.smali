.class public Labcd/sc;
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
.field private final FH:Labcd/La;
    .annotation runtime Labcd/ru;
        field = -0x1025758189dd76f0L
    .end annotation
.end field

.field protected Hw:[C
    .annotation runtime Labcd/ru;
        field = -0x15c23d1e3008c110L
    .end annotation
.end field

.field protected Zo:I
    .annotation runtime Labcd/ru;
        field = -0x4694af6f0ec709c0L
    .end annotation
.end field

.field protected v5:I
    .annotation runtime Labcd/ru;
        field = -0x15b47c2cb4edf100L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0xbd49f19f65a2e90L

    const-class v0, Labcd/sc;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 8

    const-wide v4, 0x111166187946c5d9L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x111166187946c5d9L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    new-array v0, v0, [C

    iput-object v0, p0, Labcd/sc;->Hw:[C

    const/4 v0, 0x0

    iput v0, p0, Labcd/sc;->v5:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/sc;->Zo:I

    iput-object p1, p0, Labcd/sc;->FH:Labcd/La;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, 0xfc2ded7d52542bbL    # 9.495904255528594E-233

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xfc2ded7d52542bbL    # 9.495904255528594E-233

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Labcd/sc;->v5:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/sc;->Zo:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected final DW(I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xcffe333c7d66e1L
    .end annotation

    const-wide v6, -0x48ef268f3131096bL    # -1.8888805520980295E-43

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x48ef268f3131096bL    # -1.8888805520980295E-43

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget v0, p0, Labcd/sc;->v5:I

    add-int/2addr v0, p1

    iget-object v1, p0, Labcd/sc;->Hw:[C

    array-length v1, v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Labcd/sc;->Hw:[C

    array-length v0, v0

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Labcd/sc;->v5:I

    add-int/2addr v1, p1

    if-ge v1, v0, :cond_1

    new-array v0, v0, [C

    iget-object v1, p0, Labcd/sc;->Hw:[C

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Labcd/sc;->v5:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/sc;->Hw:[C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sc;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public DW(Ljava/lang/String;)Z
    .registers 8

    const-wide v4, -0x151911870b4366cL

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/sc;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x151911870b4366cL

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Labcd/sc;->v5:I

    if-eq v1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v1, v0

    :goto_1
    iget v2, p0, Labcd/sc;->v5:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Labcd/sc;->Hw:[C

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

    sget-boolean v1, Labcd/sc;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public FH()I
    .registers 7

    const-wide v4, -0x38156cfbc7736eadL    # -2.825862491082523E38

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x38156cfbc7736eadL    # -2.825862491082523E38

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/sc;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->j3:Labcd/Ga;

    iget-object v1, p0, Labcd/sc;->Hw:[C

    const/4 v2, 0x0

    iget v3, p0, Labcd/sc;->v5:I

    invoke-virtual {v0, v1, v2, v3}, Labcd/Ga;->j6([CII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(Ljava/lang/String;)I
    .registers 10

    const-wide v6, -0x8165405ae16d611L

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x8165405ae16d611L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move v0, v2

    :goto_0
    iget v1, p0, Labcd/sc;->v5:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    if-gt v0, v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Labcd/sc;->Hw:[C

    add-int v4, v0, v1

    aget-char v3, v3, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eq v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :cond_3
    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sc;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public Hw()Ljava/io/Reader;
    .registers 7

    const-wide v4, -0x3005bdcc4996c2dL

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3005bdcc4996c2dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/io/CharArrayReader;

    iget-object v1, p0, Labcd/sc;->Hw:[C

    const/4 v2, 0x0

    iget v3, p0, Labcd/sc;->v5:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/CharArrayReader;-><init>([CII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()V
    .registers 7

    const-wide v4, 0x3b175a14b3846979L    # 4.8290552647982456E-24

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3b175a14b3846979L    # 4.8290552647982456E-24

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Labcd/sc;->v5:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Labcd/sc;->Hw:[C

    aget-char v1, v1, v0

    const v2, 0xfffe

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x8

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Labcd/sc;->Hw:[C

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sc;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method public j6()V
    .registers 5

    const-wide v2, 0x595c7737d11dacL

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x595c7737d11dacL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Labcd/sc;->j6(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(C)V
    .registers 8

    const-wide v4, 0x4288c55d0ffa7a39L    # 3.404493619023278E12

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    const-wide v2, 0x4288c55d0ffa7a39L    # 3.404493619023278E12

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Labcd/sc;->DW(I)V

    iget-object v0, p0, Labcd/sc;->Hw:[C

    iget v1, p0, Labcd/sc;->v5:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/sc;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    aput-char p1, v0, v1

    :try_start_1
    iget v0, p0, Labcd/sc;->Zo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/sc;->Zo:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sc;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(I)V
    .registers 8

    const-wide v4, 0x3af552a022d47e0L

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3af552a022d47e0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Labcd/sc;->FH:Labcd/La;

    iget-object v0, v0, Labcd/La;->j3:Labcd/Ga;

    invoke-virtual {v0, p1}, Labcd/Ga;->DW(I)I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/sc;->DW(I)V

    iget-object v1, p0, Labcd/sc;->FH:Labcd/La;

    iget-object v1, v1, Labcd/La;->j3:Labcd/Ga;

    iget-object v2, p0, Labcd/sc;->Hw:[C

    iget v3, p0, Labcd/sc;->v5:I

    invoke-virtual {v1, p1, v2, v3}, Labcd/Ga;->j6(I[CI)I

    iget v1, p0, Labcd/sc;->v5:I

    add-int/2addr v1, v0

    iput v1, p0, Labcd/sc;->v5:I

    iget v1, p0, Labcd/sc;->Zo:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/sc;->Zo:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sc;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(II)V
    .registers 10

    const-wide v2, 0x1ff52f32a5147d83L    # 9.875013984240159E-155

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x1ff52f32a5147d83L    # 9.875013984240159E-155

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Labcd/sc;->DW(I)V

    iget-object v0, p0, Labcd/sc;->Hw:[C

    iget v1, p0, Labcd/sc;->v5:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Labcd/sc;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const v4, 0xfffe

    aput-char v4, v0, v1

    :try_start_1
    iget-object v0, p0, Labcd/sc;->Hw:[C

    iget v1, p0, Labcd/sc;->v5:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Labcd/sc;->v5:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    aput-char v4, v0, v1

    :try_start_2
    iget-object v0, p0, Labcd/sc;->Hw:[C

    iget v1, p0, Labcd/sc;->v5:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Labcd/sc;->v5:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    aput-char v4, v0, v1

    :try_start_3
    iget-object v0, p0, Labcd/sc;->Hw:[C

    iget v1, p0, Labcd/sc;->v5:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Labcd/sc;->v5:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    aput-char v4, v0, v1

    :try_start_4
    iget-object v0, p0, Labcd/sc;->Hw:[C

    iget v1, p0, Labcd/sc;->v5:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Labcd/sc;->v5:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    ushr-int/lit8 v4, p1, 0x0

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    aput-char v4, v0, v1

    :try_start_5
    iget-object v0, p0, Labcd/sc;->Hw:[C

    iget v1, p0, Labcd/sc;->v5:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Labcd/sc;->v5:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    ushr-int/lit8 v4, p2, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    aput-char v4, v0, v1

    :try_start_6
    iget-object v0, p0, Labcd/sc;->Hw:[C

    iget v1, p0, Labcd/sc;->v5:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Labcd/sc;->v5:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    ushr-int/lit8 v4, p2, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    aput-char v4, v0, v1

    :try_start_7
    iget-object v0, p0, Labcd/sc;->Hw:[C

    iget v1, p0, Labcd/sc;->v5:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Labcd/sc;->v5:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    ushr-int/lit8 v4, p2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    aput-char v4, v0, v1

    :try_start_8
    iget-object v0, p0, Labcd/sc;->Hw:[C

    iget v1, p0, Labcd/sc;->v5:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Labcd/sc;->v5:I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    ushr-int/lit8 v2, p2, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/sc;->DW:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Labcd/sc;)V
    .registers 10

    const-wide v6, 0x36be816fd3dcc573L    # 5.3434335118335064E-45

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x36be816fd3dcc573L    # 5.3434335118335064E-45

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p1, Labcd/sc;->v5:I

    invoke-virtual {p0, v0}, Labcd/sc;->DW(I)V

    iget-object v0, p1, Labcd/sc;->Hw:[C

    const/4 v1, 0x0

    iget-object v2, p0, Labcd/sc;->Hw:[C

    iget v3, p0, Labcd/sc;->v5:I

    iget v4, p1, Labcd/sc;->v5:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Labcd/sc;->v5:I

    iget v1, p1, Labcd/sc;->v5:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/sc;->v5:I

    iget v0, p0, Labcd/sc;->Zo:I

    iget v1, p1, Labcd/sc;->Zo:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/sc;->Zo:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/sc;II)V
    .registers 14

    const-wide v8, -0x9eedafdf2333b4fL    # -5.27208825519238E260

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x9eedafdf2333b4fL    # -5.27208825519238E260

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p3}, Labcd/sc;->DW(I)V

    iget-object v0, p1, Labcd/sc;->Hw:[C

    iget-object v1, p0, Labcd/sc;->Hw:[C

    iget v2, p0, Labcd/sc;->v5:I

    invoke-static {v0, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Labcd/sc;->v5:I

    add-int v1, v0, p3

    iget v0, p0, Labcd/sc;->v5:I

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Labcd/sc;->Hw:[C

    aget-char v2, v2, v0

    const v3, 0xfffe

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x8

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Labcd/sc;->Zo:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/sc;->Zo:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/sc;->DW:Z

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
    :try_start_1
    iput v1, p0, Labcd/sc;->v5:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 8

    const-wide v4, -0x16f7e3485759390L    # -4.421851114974828E301

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x16f7e3485759390L    # -4.421851114974828E301

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/sc;->DW(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Labcd/sc;->Hw:[C

    iget v2, p0, Labcd/sc;->v5:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/sc;->v5:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    iget v1, p0, Labcd/sc;->Zo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/sc;->Zo:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public j6([CII)V
    .registers 14

    const-wide v8, 0x2a5a3d7ae8f73c0L

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x2a5a3d7ae8f73c0L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p3}, Labcd/sc;->DW(I)V

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Labcd/sc;->Hw:[C

    iget v2, p0, Labcd/sc;->v5:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/sc;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    aget-char v3, p1, v0

    aput-char v3, v1, v2

    :try_start_1
    iget v1, p0, Labcd/sc;->Zo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/sc;->Zo:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/sc;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    return-void
.end method

.method public j6(Ljava/lang/String;I)Z
    .registers 10

    const-wide v2, 0x1401ca6088963b67L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/sc;->j6:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x1401ca6088963b67L

    invoke-static {v4, v5, p0, p1, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    iget v4, p0, Labcd/sc;->v5:I

    if-le v1, v4, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v1, v0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Labcd/sc;->Hw:[C

    add-int v5, p2, v1

    aget-char v4, v4, v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/sc;->DW:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 13

    const-wide v10, -0x1f7569293242da20L

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f7569293242da20L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    iget v0, p0, Labcd/sc;->v5:I

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Labcd/sc;->v5:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Labcd/sc;->Hw:[C

    aget-char v2, v2, v0

    const v3, 0xfffe

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    const-string v2, "#["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Labcd/sc;->Hw:[C

    aget-char v2, v2, v0

    iget-object v3, p0, Labcd/sc;->Hw:[C

    add-int/lit8 v4, v0, 0x1

    aget-char v3, v3, v4

    iget-object v4, p0, Labcd/sc;->Hw:[C

    add-int/lit8 v5, v0, 0x2

    aget-char v4, v4, v5

    iget-object v5, p0, Labcd/sc;->Hw:[C

    add-int/lit8 v6, v0, 0x3

    aget-char v5, v5, v6

    iget-object v6, p0, Labcd/sc;->Hw:[C

    add-int/lit8 v7, v0, 0x4

    aget-char v6, v6, v7

    iget-object v7, p0, Labcd/sc;->Hw:[C

    add-int/lit8 v8, v0, 0x5

    aget-char v7, v7, v8

    iget-object v8, p0, Labcd/sc;->Hw:[C

    add-int/lit8 v9, v0, 0x6

    aget-char v8, v8, v9

    iget-object v9, p0, Labcd/sc;->Hw:[C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x7

    aget-char v9, v9, v0

    shl-int/lit8 v2, v2, 0x18

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v4, 0x8

    or-int/2addr v2, v3

    or-int/2addr v2, v5

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    shl-int/lit8 v2, v6, 0x18

    shl-int/lit8 v3, v7, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v8, 0x8

    or-int/2addr v2, v3

    or-int/2addr v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sc;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v10, v11, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    return-object v0
.end method

.method public v5()I
    .registers 5

    const-wide v2, 0x1ed10f5042e10834L

    :try_start_0
    sget-boolean v0, Labcd/sc;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1ed10f5042e10834L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/sc;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/sc;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
