.class public final Labcd/Wa;
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
.field public EQ:I

.field public FH:[I

.field public Hw:[I

.field public VH:[I

.field public Zo:[I

.field public gn:[I

.field public tp:I

.field public u7:[C

.field public v5:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Wa;

    const-wide v1, -0x1d0af3d80fc09bebL  # -4.964525956896806E168

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x12257f9d10a1558L

    :try_start_6
    sget-boolean v3, Labcd/Wa;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x2710

    new-array v4, v3, [I

    iput-object v4, p0, Labcd/Wa;->FH:[I

    new-array v4, v3, [I

    iput-object v4, p0, Labcd/Wa;->Hw:[I

    new-array v4, v3, [I

    iput-object v4, p0, Labcd/Wa;->v5:[I

    new-array v4, v3, [I

    iput-object v4, p0, Labcd/Wa;->Zo:[I

    new-array v4, v3, [I

    iput-object v4, p0, Labcd/Wa;->VH:[I

    new-array v3, v3, [I

    iput-object v3, p0, Labcd/Wa;->gn:[I

    const/16 v3, 0x3e8

    new-array v3, v3, [C

    iput-object v3, p0, Labcd/Wa;->u7:[C

    const/4 v3, 0x1

    iput v3, p0, Labcd/Wa;->tp:I
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v3

    sget-boolean v4, Labcd/Wa;->DW:Z

    if-eqz v4, :cond_3c

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3c
    throw v3
.end method


# virtual methods
.method public DW(I)I
    .registers 6

    const-wide v0, -0x8aca34adb73cc14L

    :try_start_5
    sget-boolean v2, Labcd/Wa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Wa;->u7:[C

    aget-char p1, v2, p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return p1

    :catchall_11
    move-exception v2

    sget-boolean v3, Labcd/Wa;->DW:Z

    if-eqz v3, :cond_1e

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public FH(I)I
    .registers 6

    const-wide v0, -0x88232c6ecbb86e0L  # -3.843762170248878E267

    :try_start_5
    sget-boolean v2, Labcd/Wa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    add-int/lit8 p1, p1, 0x1

    return p1

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Wa;->DW:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public Hw(I)Ljava/lang/String;
    .registers 8

    const-wide v0, 0x4a7b9797ea656b10L  # 6.452158343302319E50

    :try_start_5
    sget-boolean v2, Labcd/Wa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Labcd/Wa;->u7:[C

    invoke-virtual {p0, p1}, Labcd/Wa;->FH(I)I

    move-result v4

    invoke-virtual {p0, p1}, Labcd/Wa;->DW(I)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-object v2

    :catchall_1c
    move-exception v2

    sget-boolean v3, Labcd/Wa;->DW:Z

    if-eqz v3, :cond_29

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public j6([CII)I
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Wa;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x143e45d6d65da510L  # -1.165592895828392E211

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget v0, p0, Labcd/Wa;->tp:I

    add-int v1, v0, p3

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Labcd/Wa;->u7:[C

    array-length v3, v2

    if-lt v1, v3, :cond_3a

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    iget-object v1, p0, Labcd/Wa;->u7:[C

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Wa;->u7:[C

    :cond_3a
    iget v0, p0, Labcd/Wa;->tp:I

    iget-object v1, p0, Labcd/Wa;->u7:[C

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Labcd/Wa;->tp:I
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_4e

    int-to-char v3, p3

    aput-char v3, v1, v0

    :try_start_45
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Labcd/Wa;->tp:I

    add-int/2addr v1, p3

    iput v1, p0, Labcd/Wa;->tp:I
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4e

    return v0

    :catchall_4e
    move-exception v0

    sget-boolean v1, Labcd/Wa;->DW:Z

    if-eqz v1, :cond_68

    const-wide v2, -0x143e45d6d65da510L  # -1.165592895828392E211

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_68
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v0, 0x4d3f65f12ca5888L

    :try_start_5
    sget-boolean v2, Labcd/Wa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, p0, Labcd/Wa;->EQ:I

    const/4 v2, 0x1

    iput v2, p0, Labcd/Wa;->tp:I
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Wa;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public j6(I)V
    .registers 9

    const-wide v0, 0x7ae0879ad27d9f7L

    :try_start_5
    sget-boolean v2, Labcd/Wa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Wa;->FH:[I

    array-length v2, v2

    if-lt p1, v2, :cond_56

    :goto_11
    if-lt p1, v2, :cond_19

    iget-object v2, p0, Labcd/Wa;->FH:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_11

    :cond_19
    new-array v3, v2, [I

    iget-object v4, p0, Labcd/Wa;->FH:[I

    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/Wa;->FH:[I

    new-array v3, v2, [I

    iget-object v4, p0, Labcd/Wa;->Hw:[I

    array-length v5, v4

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/Wa;->Hw:[I

    new-array v3, v2, [I

    iget-object v4, p0, Labcd/Wa;->v5:[I

    array-length v5, v4

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/Wa;->v5:[I

    new-array v3, v2, [I

    iget-object v4, p0, Labcd/Wa;->VH:[I

    array-length v5, v4

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/Wa;->VH:[I

    new-array v3, v2, [I

    iget-object v4, p0, Labcd/Wa;->Zo:[I

    array-length v5, v4

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/Wa;->Zo:[I

    new-array v2, v2, [I

    iget-object v3, p0, Labcd/Wa;->gn:[I

    array-length v4, v3

    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Labcd/Wa;->gn:[I
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_57

    :cond_56
    return-void

    :catchall_57
    move-exception v2

    sget-boolean v3, Labcd/Wa;->DW:Z

    if-eqz v3, :cond_64

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    goto :goto_66

    :goto_65
    throw v2

    :goto_66
    goto :goto_65
.end method

.method public j6(IIIIII)V
    .registers 11

    sget-boolean v0, Labcd/Wa;->j6:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3f

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-wide v2, 0x26c1a1367f898b10L

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_3f
    iget v0, p0, Labcd/Wa;->EQ:I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Labcd/Wa;->j6(I)V

    iget-object v2, p0, Labcd/Wa;->FH:[I

    aput p1, v2, v0

    iget-object p1, p0, Labcd/Wa;->Hw:[I

    aput p2, p1, v0

    iget-object p1, p0, Labcd/Wa;->v5:[I

    aput p3, p1, v0

    iget-object p1, p0, Labcd/Wa;->VH:[I

    aput p4, p1, v0

    iget-object p1, p0, Labcd/Wa;->Zo:[I

    aput p5, p1, v0

    iget-object p1, p0, Labcd/Wa;->gn:[I

    aput p6, p1, v0

    iget p1, p0, Labcd/Wa;->EQ:I

    add-int/2addr p1, v1

    iput p1, p0, Labcd/Wa;->EQ:I

    return-void
.end method
