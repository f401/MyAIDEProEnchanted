.class public Labcd/Ab;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Labcd/Aa;",
        ">",
        "Ljava/lang/Object;"
    }
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
.field private FH:[I
    .annotation runtime Labcd/ru;
        field = -0x222c44d50e7b0e00L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = 0x16c18f83db02a9c5L
    .end annotation
.end field

.field private final v5:Labcd/Ba;
    .annotation runtime Labcd/ru;
        field = -0x24ede185a80ee284L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Ab;

    const-wide v1, -0x830f0920f78aed0L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Ba;)V
    .registers 7

    const-wide v0, 0x6780cf0227eb9039L  # 3.74454887405983E190

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Ab;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Ab;->v5:Labcd/Ba;

    iput-object v2, p0, Labcd/Ab;->FH:[I

    const/4 v3, 0x0

    iput v3, p0, Labcd/Ab;->Hw:I
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v3

    sget-boolean v4, Labcd/Ab;->DW:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method public constructor <init>(Labcd/Ba;I)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Ab;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x15b1cc895893c9c0L  # -1.1836105458980284E204

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Ab;->v5:Labcd/Ba;

    new-array v0, p2, [I

    iput-object v0, p0, Labcd/Ab;->FH:[I

    iput p2, p0, Labcd/Ab;->Hw:I
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Labcd/Ab;->DW:Z

    if-eqz v1, :cond_33

    const-wide v2, -0x15b1cc895893c9c0L  # -1.1836105458980284E204

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v0
.end method

.method public constructor <init>(Labcd/Ba;Labcd/ec;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Ab;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x610a4133734d92f5L  # 2.883730296747837E159

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Ab;->v5:Labcd/Ba;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Labcd/Ab;->Hw:I

    if-lez v0, :cond_2d

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Ab;->FH:[I

    const/4 v0, 0x0

    :goto_1f
    iget-object v1, p0, Labcd/Ab;->FH:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2d

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    aput v2, v1, v0
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2e

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2d
    return-void

    :catchall_2e
    move-exception v0

    sget-boolean v1, Labcd/Ab;->DW:Z

    if-eqz v1, :cond_3f

    const-wide v2, 0x610a4133734d92f5L  # 2.883730296747837E159

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    goto :goto_41

    :goto_40
    throw v0

    :goto_41
    goto :goto_40
.end method

.method private j6(IILjava/util/Comparator;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xe6993c85fdf99e9L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ab;->j6:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x21a5331290d3b90L

    move-object v3, p0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    if-ge p1, p2, :cond_6e

    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Ab;->v5:Labcd/Ba;

    iget-object v2, p0, Labcd/Ab;->FH:[I

    add-int/2addr v0, p1

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v0
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_6f

    move v1, p1

    move v2, p2

    :cond_2b
    :goto_2b
    if-gt v1, v2, :cond_64

    :goto_2d
    :try_start_2d
    iget-object v3, p0, Labcd/Ab;->v5:Labcd/Ba;

    iget-object v4, p0, Labcd/Ab;->FH:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v3

    invoke-interface {p3, v3, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_40

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_40
    :goto_40
    iget-object v3, p0, Labcd/Ab;->v5:Labcd/Ba;

    iget-object v4, p0, Labcd/Ab;->FH:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v3

    invoke-interface {p3, v0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_53

    add-int/lit8 v2, v2, -0x1

    goto :goto_40

    :cond_53
    if-gt v1, v2, :cond_2b

    iget-object v3, p0, Labcd/Ab;->FH:[I

    aget v4, v3, v2

    aget v5, v3, v1

    aput v5, v3, v2

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2b

    :cond_64
    invoke-direct {p0, p1, v2, p3}, Labcd/Ab;->j6(IILjava/util/Comparator;)V

    invoke-direct {p0, v1, p2, p3}, Labcd/Ab;->j6(IILjava/util/Comparator;)V
    :try_end_6a
    .catchall {:try_start_2d .. :try_end_6a} :catchall_6b

    goto :goto_6e

    :catchall_6b
    move-exception p1

    move p2, v2

    goto :goto_72

    :cond_6e
    :goto_6e
    return-void

    :catchall_6f
    move-exception v0

    move v1, p1

    move-object p1, v0

    :goto_72
    sget-boolean v0, Labcd/Ab;->DW:Z

    if-eqz v0, :cond_8b

    const-wide v2, 0x21a5331290d3b90L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, p1

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8b
    goto :goto_8d

    :goto_8c
    throw p1

    :goto_8d
    goto :goto_8c
.end method


# virtual methods
.method public DW()Labcd/Aa;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const-wide v0, -0x20db36d5339b8ea9L  # -2.126252279571113E150

    :try_start_5
    sget-boolean v2, Labcd/Ab;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Ab;->Hw:I

    if-nez v2, :cond_12

    const/4 v0, 0x0

    return-object v0

    :cond_12
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Labcd/Ab;->j6(I)Labcd/Aa;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-object v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Ab;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public DW(I)V
    .registers 6

    const-wide v0, 0x3b79845c30936c4L

    :try_start_5
    sget-boolean v2, Labcd/Ab;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Labcd/Ab;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Ab;->DW:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public DW(Labcd/Aa;)Z
    .registers 7

    const-wide v0, -0xe24fc3e94b7364L

    :try_start_5
    sget-boolean v2, Labcd/Ab;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    invoke-virtual {p0}, Labcd/Ab;->Hw()I

    move-result v4

    if-ge v3, v4, :cond_1f

    invoke-virtual {p0, v3}, Labcd/Ab;->j6(I)Labcd/Aa;

    move-result-object v4
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_20

    if-ne v4, p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1f
    return v2

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/Ab;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    goto :goto_2a

    :goto_29
    throw v2

    :goto_2a
    goto :goto_29
.end method

.method public FH()Labcd/Aa;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const-wide v0, -0x2f72d5e333024cbL

    :try_start_5
    sget-boolean v2, Labcd/Ab;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Ab;->Hw:I

    if-nez v2, :cond_12

    const/4 v0, 0x0

    return-object v0

    :cond_12
    iget-object v3, p0, Labcd/Ab;->FH:[I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Labcd/Ab;->Hw:I
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_21

    aget v2, v3, v2

    :try_start_1a
    iget-object v3, p0, Labcd/Ab;->v5:Labcd/Ba;

    invoke-virtual {v3, v2}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_21

    return-object v0

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/Ab;->DW:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public FH(Labcd/Aa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const-wide v0, -0x3098c985c2e0010dL  # -3.281077787466805E74

    :try_start_5
    sget-boolean v2, Labcd/Ab;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Ab;->j6(Labcd/Aa;)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Ab;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public Hw()I
    .registers 5

    const-wide v0, -0x20ec9226d0e9f181L  # -9.937346530110687E149

    :try_start_5
    sget-boolean v2, Labcd/Ab;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Ab;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Ab;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(I)Labcd/Aa;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const-wide v0, -0x66b51ba46c010c99L  # -7.725670209500708E-187

    :try_start_5
    sget-boolean v2, Labcd/Ab;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Ab;->FH:[I

    const/4 v3, 0x0

    if-nez v2, :cond_12

    return-object v3

    :cond_12
    array-length v4, v2

    if-lt p1, v4, :cond_16

    return-object v3

    :cond_16
    iget v4, p0, Labcd/Ab;->Hw:I

    if-lt p1, v4, :cond_1b

    return-object v3

    :cond_1b
    aget v2, v2, p1

    iget-object v3, p0, Labcd/Ab;->v5:Labcd/Ba;

    invoke-virtual {v3, v2}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return-object p1

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/Ab;->DW:Z

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0xa208dc4b897fecfL  # -6.043724889988599E259

    :try_start_5
    sget-boolean v2, Labcd/Ab;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, p0, Labcd/Ab;->Hw:I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Ab;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(ILabcd/Aa;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ab;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xacd67a31927e988L

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Labcd/Ab;->FH:[I

    if-nez v0, :cond_22

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Ab;->FH:[I

    goto :goto_3b

    :cond_22
    array-length v1, v0

    if-lt p1, v1, :cond_3b

    add-int/lit8 v1, p1, 0x1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Labcd/Ab;->FH:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Ab;->FH:[I

    :cond_3b
    :goto_3b
    iget v0, p0, Labcd/Ab;->Hw:I

    if-lt p1, v0, :cond_43

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Labcd/Ab;->Hw:I

    :cond_43
    iget-object v0, p0, Labcd/Ab;->FH:[I

    iget-object v1, p0, Labcd/Ab;->v5:Labcd/Ba;

    invoke-virtual {v1, p2}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v1

    aput v1, v0, p1
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_4e

    return-void

    :catchall_4e
    move-exception v0

    sget-boolean v1, Labcd/Ab;->DW:Z

    if-eqz v1, :cond_63

    const-wide v2, 0xacd67a31927e988L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    throw v0
.end method

.method public j6(Labcd/Aa;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const-wide v0, 0x62113de7742243f0L  # 2.4822217643021474E164

    :try_start_5
    sget-boolean v2, Labcd/Ab;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ab;->FH:[I

    if-nez v2, :cond_17

    const/16 v2, 0xa

    new-array v2, v2, [I

    iput-object v2, p0, Labcd/Ab;->FH:[I

    goto :goto_2a

    :cond_17
    iget v3, p0, Labcd/Ab;->Hw:I

    array-length v4, v2

    if-lt v3, v4, :cond_2a

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/Ab;->FH:[I

    :cond_2a
    :goto_2a
    iget-object v2, p0, Labcd/Ab;->FH:[I

    iget v3, p0, Labcd/Ab;->Hw:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/Ab;->Hw:I

    iget-object v4, p0, Labcd/Ab;->v5:Labcd/Ba;

    invoke-virtual {v4, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v4

    aput v4, v2, v3
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception v2

    sget-boolean v3, Labcd/Ab;->DW:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v2
.end method

.method public j6(Labcd/Ab;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LAb<",
            "TE;>;)V"
        }
    .end annotation

    const-wide v0, -0x495d49062ce09b74L  # -1.6390593603696756E-45

    :try_start_5
    sget-boolean v2, Labcd/Ab;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {p1}, Labcd/Ab;->Hw()I

    move-result v3

    if-ge v2, v3, :cond_1d

    invoke-virtual {p1, v2}, Labcd/Ab;->j6(I)Labcd/Aa;

    move-result-object v3

    invoke-virtual {p0, v3}, Labcd/Ab;->j6(Labcd/Aa;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1e

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Labcd/Ab;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    goto :goto_28

    :goto_27
    throw v2

    :goto_28
    goto :goto_27
.end method

.method public j6(Labcd/fc;)V
    .registers 6

    const-wide v0, 0x34290e35e71f280L

    :try_start_5
    sget-boolean v2, Labcd/Ab;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ab;->FH:[I

    const/4 v3, 0x0

    if-nez v2, :cond_15

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_28

    :cond_15
    iget v2, p0, Labcd/Ab;->Hw:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_1a
    iget v2, p0, Labcd/Ab;->Hw:I

    if-ge v3, v2, :cond_28

    iget-object v2, p0, Labcd/Ab;->FH:[I

    aget v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_29

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_28
    :goto_28
    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/Ab;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    goto :goto_33

    :goto_32
    throw v2

    :goto_33
    goto :goto_32
.end method

.method public j6(Ljava/util/Comparator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    const-wide v0, 0x4b90a70b3ae5ed88L  # 1.0207962058445424E56

    :try_start_5
    sget-boolean v2, Labcd/Ab;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Ab;->Hw:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2, p1}, Labcd/Ab;->j6(IILjava/util/Comparator;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Ab;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const-wide v0, 0x33c4ff60474c980L

    :try_start_5
    sget-boolean v2, Labcd/Ab;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_4a

    :cond_c
    const-string v2, "{"

    const/4 v3, 0x0

    :goto_f
    :try_start_f
    iget v4, p0, Labcd/Ab;->Hw:I

    if-ge v3, v4, :cond_38

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/Ab;->v5:Labcd/Ba;

    iget-object v5, p0, Labcd/Ab;->FH:[I

    aget v5, v5, v3

    invoke-virtual {v2, v5}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Aa;->VH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_49
    .catchall {:try_start_f .. :try_end_49} :catchall_4a

    return-object v0

    :catchall_4a
    move-exception v2

    sget-boolean v3, Labcd/Ab;->DW:Z

    if-eqz v3, :cond_52

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_52
    goto :goto_54

    :goto_53
    throw v2

    :goto_54
    goto :goto_53
.end method
