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
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/A;

    const-wide v1, -0x133fe112ff77e039L  # -6.946620962450398E215

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2ce3561ee7619274L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x10d84fc64ebafda4L  # -2.805834886134735E227

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/aide/ui/views/editor/A;-><init>(I)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v4, :cond_1b

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v3
.end method

.method public constructor <init>(I)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x20f81436e4c41b5L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x241ddf15d39977a5L  # 1.027443427213899E-134

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v3, p1, [C

    iput-object v3, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    const/4 v3, 0x0

    iput v3, p0, Lcom/aide/ui/views/editor/A;->Hw:I
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v4, :cond_25

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v3
.end method

.method public constructor <init>([C)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x6f25757a41520L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2f20c50b638ec460L  # -3.7030104084312277E81

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    array-length v3, p1

    iput v3, p0, Lcom/aide/ui/views/editor/A;->Hw:I
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method


# virtual methods
.method protected DW()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xc58db66b4f0b0f3L
    .end annotation

    const-wide v0, -0x10b920d2f109b61fL  # -1.0836442337555989E228

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    array-length v2, v2

    :cond_f
    :goto_f
    const/16 v3, 0x8

    if-le v2, v3, :cond_20

    iget v4, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    div-int/lit8 v5, v2, 0x4

    if-ge v4, v5, :cond_20

    div-int/lit8 v2, v2, 0x2

    if-ge v2, v3, :cond_f

    const/16 v2, 0x8

    goto :goto_f

    :cond_20
    iget-object v3, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    array-length v4, v3

    if-ne v2, v4, :cond_26

    return-void

    :cond_26
    new-array v2, v2, [C

    iget v4, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/aide/ui/views/editor/A;->FH:[C
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_39
    goto :goto_3b

    :goto_3a
    throw v2

    :goto_3b
    goto :goto_3a
.end method

.method public DW(CI)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x10b8d52941f7277dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0xd4affb334af108bL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/A;->DW(I)V

    iget v1, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    if-ne p2, v1, :cond_22

    :cond_1f
    iput v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    goto :goto_2f

    :cond_22
    if-le p2, v1, :cond_2f

    :goto_24
    if-ge v1, p2, :cond_1f

    iget-object v2, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    const/16 v3, 0x20

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    aput-char p1, v0, p2
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v1, :cond_4d

    const-wide v2, -0xd4affb334af108bL

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    goto :goto_4f

    :goto_4e
    throw v0

    :goto_4f
    goto :goto_4e
.end method

.method protected DW(I)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0xa2873d546d3b3c8L
    .end annotation

    const-wide v0, -0xa02711a92aac678L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    array-length v2, v2

    if-nez v2, :cond_12

    const/4 v2, 0x1

    :cond_12
    :goto_12
    if-ge v2, p1, :cond_17

    mul-int/lit8 v2, v2, 0x2

    goto :goto_12

    :cond_17
    iget-object v3, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    array-length v4, v3

    if-eq v2, v4, :cond_25

    new-array v2, v2, [C

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/aide/ui/views/editor/A;->FH:[C
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    :cond_25
    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v3, :cond_33

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    goto :goto_35

    :goto_34
    throw v2

    :goto_35
    goto :goto_34
.end method

.method public DW([CI)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x12c53873defd1b51L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xba122121f339543L  # -3.53597799149937E252

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    array-length v0, p1

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/A;->DW(I)V

    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    if-le p2, v0, :cond_25

    :goto_1a
    if-ge v0, p2, :cond_25

    iget-object v1, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    const/16 v2, 0x20

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_25
    array-length v0, p1

    add-int/2addr v0, p2

    iget v1, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    if-le v0, v1, :cond_2f

    array-length v0, p1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    array-length v1, p1

    if-ge v0, v1, :cond_3e

    iget-object v1, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    add-int v2, p2, v0

    aget-char v3, p1, v0

    aput-char v3, v1, v2
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3f

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_3e
    return-void

    :catchall_3f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v1, :cond_54

    const-wide v2, -0xba122121f339543L  # -3.53597799149937E252

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    goto :goto_56

    :goto_55
    throw v0

    :goto_56
    goto :goto_55
.end method

.method public FH()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x11502ec79ba74fd9L
    .end annotation

    const-wide v0, -0x10631d516ade24bbL  # -4.3794164789152756E229

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public FH(I)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x34889fa30939f694L
    .end annotation

    const-wide v0, -0x2db664cf3e537cc0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    add-int/lit8 v3, p1, 0x1

    array-length v4, v2

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/A;->DW()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v3, :cond_2e

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public j6(I)C
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1bb3567f55d9a70L
    .end annotation

    const-wide v0, 0x47cf7402925d430L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    aget-char p1, v2, p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v3, :cond_1e

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public j6(CI)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x38b4972625add660L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x1233e999ce8eb770L  # -7.931948315118262E220

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    if-lt p2, v0, :cond_1e

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/editor/A;->DW(CI)V

    goto :goto_37

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/A;->DW(I)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    add-int/lit8 v1, p2, 0x1

    iget v2, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    aput-char p1, v0, p2

    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_38

    :goto_37
    return-void

    :catchall_38
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v1, :cond_51

    const-wide v2, -0x1233e999ce8eb770L  # -7.931948315118262E220

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_51
    throw v0
.end method

.method public j6(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x30f74366f0d4d32cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x11c498f14c88c220L  # 4.451704186224437E-223

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    add-int v0, p2, p1

    iget v1, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    if-gt v0, v1, :cond_2d

    iget-object v1, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    array-length v2, v1

    sub-int/2addr v2, p2

    sub-int/2addr v2, p1

    invoke-static {v1, v0, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/A;->DW()V

    return-void

    :cond_2d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " characters at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from a line containing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " characters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5b
    .catchall {:try_start_0 .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v1, :cond_74

    const-wide v2, 0x11c498f14c88c220L  # 4.451704186224437E-223

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_74
    throw v0
.end method

.method public j6(II[CI)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x660b680f65f6a08L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x460fe7e0f3eb870L

    move-object v3, p0

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    invoke-static {v0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v1, :cond_42

    const-wide v2, 0x460fe7e0f3eb870L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
.end method

.method public j6([C)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x505f724c807b228L
    .end annotation

    const-wide v0, -0x126a49e6f6cfd58L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/A;->DW(I)V

    const/4 v2, 0x0

    :goto_14
    array-length v3, p1

    if-ge v2, v3, :cond_23

    iget-object v3, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    iget v4, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    add-int/2addr v4, v2

    aget-char v5, p1, v2

    aput-char v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_23
    iget v2, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    array-length v3, p1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/aide/ui/views/editor/A;->Hw:I
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    goto :goto_34

    :goto_33
    throw v2

    :goto_34
    goto :goto_33
.end method

.method public j6([CI)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3da7acf87e257894L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1d286fab4088a900L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    if-lt p2, v0, :cond_19

    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/editor/A;->DW([CI)V

    goto :goto_35

    :cond_19
    array-length v1, p1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/A;->DW(I)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    array-length v1, p1

    add-int/2addr v1, p2

    iget v2, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/A;->FH:[C

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/aide/ui/views/editor/A;->Hw:I
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_36

    :goto_35
    return-void

    :catchall_36
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v1, :cond_4b

    const-wide v2, 0x1d286fab4088a900L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    throw v0
.end method

.method public j6()[C
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x137e94b723e4178bL
    .end annotation

    const-wide v0, 0x2005991c3b0de849L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/A;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/views/editor/A;->Hw:I

    new-array v3, v2, [C

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2, v3, v4}, Lcom/aide/ui/views/editor/A;->j6(II[CI)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v3

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/A;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method
