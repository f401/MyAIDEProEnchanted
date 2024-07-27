.class Lcom/aide/ui/views/editor/A;
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
.field protected FH:[C
    .annotation runtime Labcd/ru;
        field = -0x1b3121b0ff935e68L
    .end annotation
.end field

.field protected Hw:I
    .annotation runtime Labcd/ru;
        field = -0x1b27bc92cb3affd4L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x133fe112ff77e039L    # -6.946620962450398E215

    const-class v0, Lcom/aide/ui/views/editor/A;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x2ce3561ee7619274L
    .end annotation

    const-wide v4, -0x10d84fc64ebafda4L    # -2.805834886134735E227

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x10d84fc64ebafda4L    # -2.805834886134735E227

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/aide/ui/views/editor/A;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(I)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x20f81436e4c41b5L
    .end annotation

    const-wide v4, 0x241ddf15d39977a5L    # 1.027443427213899E-134

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x241ddf15d39977a5L    # 1.027443427213899E-134

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [C

    iput-object v0, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    const/4 v0, 0x0

    iput v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>([C)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x6f25757a41520L
    .end annotation

    const-wide v4, -0x2f20c50b638ec460L    # -3.7030104084312277E81

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2f20c50b638ec460L    # -3.7030104084312277E81

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    array-length v0, p1

    iput v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method protected DW()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0xc58db66b4f0b0f3L
    .end annotation

    const-wide v6, -0x10b920d2f109b61fL    # -1.0836442337555989E228

    const/16 v1, 0x8

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x10b920d2f109b61fL    # -1.0836442337555989E228

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    array-length v0, v0

    :cond_1
    :goto_0
    if-le v0, v1, :cond_2

    iget v2, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    div-int/lit8 v3, v0, 0x4

    if-ge v2, v3, :cond_2

    div-int/lit8 v0, v0, 0x2

    if-ge v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    array-length v1, v1

    if-ne v0, v1, :cond_3

    :goto_1
    return-void

    :cond_3
    new-array v0, v0, [C

    iget-object v1, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/aide/ui/views/editor/A;->FH:[C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public DW(CI)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x10b8d52941f7277dL
    .end annotation

    const-wide v2, -0xd4affb334af108bL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0xd4affb334af108bL

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lcom/aide/ui/views/editor/A;->DW(I)V

    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    if-ne p2, v0, :cond_2

    iput v1, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    aput-char p1, v0, p2

    return-void

    :cond_2
    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    :goto_1
    if-ge v0, p2, :cond_3

    iget-object v4, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    const/16 v5, 0x20

    aput-char v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput v1, p0, Lcom/aide/ui/views/editor/A;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method protected DW(I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xa2873d546d3b3c8L
    .end annotation

    const-wide v6, -0xa02711a92aac678L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa02711a92aac678L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    array-length v0, v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-ge v0, p1, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    array-length v1, v1

    if-eq v0, v1, :cond_3

    new-array v0, v0, [C

    iget-object v1, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/aide/ui/views/editor/A;->FH:[C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public DW([CI)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x12c53873defd1b51L
    .end annotation

    const-wide v2, -0xba122121f339543L    # -3.53597799149937E252

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0xba122121f339543L    # -3.53597799149937E252

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    array-length v0, p1

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/A;->DW(I)V

    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    const/16 v4, 0x20

    aput-char v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    add-int/2addr v0, p2

    iget v1, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    if-le v0, v1, :cond_2

    array-length v0, p1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    :cond_2
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    add-int v4, p2, v0

    aget-char v5, p1, v0

    aput-char v5, v1, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    return-void
.end method

.method public FH()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x11502ec79ba74fd9L
    .end annotation

    const-wide v2, -0x10631d516ade24bbL    # -4.3794164789152756E229

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x10631d516ade24bbL    # -4.3794164789152756E229

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(I)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x34889fa30939f694L
    .end annotation

    const-wide v4, -0x2db664cf3e537cc0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2db664cf3e537cc0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    iget-object v3, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    array-length v3, v3

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/A;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(I)C
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1bb3567f55d9a70L
    .end annotation

    const-wide v2, 0x47cf7402925d430L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x47cf7402925d430L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    aget-char v0, v0, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(CI)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x38b4972625add660L
    .end annotation

    const-wide v2, -0x1233e999ce8eb770L    # -7.931948315118262E220

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x1233e999ce8eb770L    # -7.931948315118262E220

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    if-lt p2, v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/editor/A;->DW(CI)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/A;->DW(I)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    iget-object v1, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    add-int/lit8 v4, p2, 0x1

    iget v5, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    sub-int/2addr v5, p2

    invoke-static {v0, p2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    aput-char p1, v0, p2

    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x30f74366f0d4d32cL
    .end annotation

    const-wide v2, 0x11c498f14c88c220L    # 4.451704186224437E-223

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x11c498f14c88c220L    # 4.451704186224437E-223

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int v0, p2, p1

    iget v1, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    iget-object v4, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    iget-object v5, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    array-length v5, v5

    sub-int/2addr v5, p2

    sub-int/2addr v5, p1

    invoke-static {v1, v0, v4, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/A;->DW()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to remove "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " characters at position "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " from a line containing "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " characters"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(II[CI)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x660b680f65f6a08L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x460fe7e0f3eb870L

    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    invoke-static {v0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x460fe7e0f3eb870L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6([C)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x505f724c807b228L
    .end annotation

    const-wide v4, -0x126a49e6f6cfd58L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x126a49e6f6cfd58L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/A;->DW(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    iget v2, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    add-int/2addr v2, v0

    aget-char v3, p1, v0

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6([CI)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3da7acf87e257894L
    .end annotation

    const-wide v2, 0x1d286fab4088a900L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x1d286fab4088a900L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    if-lt p2, v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/editor/A;->DW([CI)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/A;->DW(I)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    iget-object v1, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    array-length v4, p1

    add-int/2addr v4, p2

    iget v5, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    sub-int/2addr v5, p2

    invoke-static {v0, p2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    array-length v4, p1

    invoke-static {p1, v0, v1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6()[C
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x137e94b723e4178bL
    .end annotation

    const-wide v4, 0x2005991c3b0de849L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2005991c3b0de849L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    new-array v0, v0, [C

    const/4 v1, 0x0

    iget v2, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/aide/ui/views/editor/A;->j6(II[CI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
