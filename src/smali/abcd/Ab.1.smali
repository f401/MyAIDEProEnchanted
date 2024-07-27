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
    .registers 4

    const-wide v2, -0x830f0920f78aed0L

    const-class v0, Labcd/Ab;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Ba;)V
    .registers 8

    const-wide v4, 0x6780cf0227eb9039L    # 3.74454887405983E190

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ab;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6780cf0227eb9039L    # 3.74454887405983E190

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Ab;->v5:Labcd/Ba;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Ab;->FH:[I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Ab;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ab;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/Ba;I)V
    .registers 11

    const-wide v2, -0x15b1cc895893c9c0L    # -1.1836105458980284E204

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ab;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x15b1cc895893c9c0L    # -1.1836105458980284E204

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Ab;->v5:Labcd/Ba;

    new-array v0, p2, [I

    iput-object v0, p0, Labcd/Ab;->FH:[I

    iput p2, p0, Labcd/Ab;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ab;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Labcd/Ba;Labcd/ec;)V
    .registers 10

    const-wide v2, 0x610a4133734d92f5L    # 2.883730296747837E159

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ab;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x610a4133734d92f5L    # 2.883730296747837E159

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Ab;->v5:Labcd/Ba;

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Labcd/Ab;->Hw:I

    iget v0, p0, Labcd/Ab;->Hw:I

    if-lez v0, :cond_2

    iget v0, p0, Labcd/Ab;->Hw:I

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Ab;->FH:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/Ab;->FH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Labcd/Ab;->FH:[I

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    aput v5, v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ab;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    return-void
.end method

.method private j6(IILjava/util/Comparator;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0xe6993c85fdf99e9L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    const-wide v8, 0x21a5331290d3b90L

    :try_start_0
    sget-boolean v0, Labcd/Ab;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x21a5331290d3b90L

    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-ge p1, p2, :cond_6

    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Ab;->v5:Labcd/Ba;

    iget-object v2, p0, Labcd/Ab;->FH:[I

    add-int/2addr v0, p1

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Labcd/Ba;->FH(I)Labcd/Aa;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    move v0, p1

    move v1, p2

    :cond_1
    :goto_0
    if-gt v0, v1, :cond_5

    :goto_1
    :try_start_1
    iget-object v3, p0, Labcd/Ab;->v5:Labcd/Ba;

    iget-object v4, p0, Labcd/Ab;->FH:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v3

    invoke-interface {p3, v3, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v3, p0, Labcd/Ab;->v5:Labcd/Ba;

    iget-object v4, p0, Labcd/Ab;->FH:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_3

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    if-gt v0, v1, :cond_1

    iget-object v3, p0, Labcd/Ab;->FH:[I

    aget v3, v3, v1

    iget-object v4, p0, Labcd/Ab;->FH:[I

    iget-object v5, p0, Labcd/Ab;->FH:[I

    aget v5, v5, v0

    aput v5, v4, v1

    iget-object v4, p0, Labcd/Ab;->FH:[I

    aput v3, v4, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception v2

    move p1, v0

    move p2, v1

    move-object v1, v2

    :goto_3
    sget-boolean v0, Labcd/Ab;->DW:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    :try_start_2
    invoke-direct {p0, p1, v1, p3}, Labcd/Ab;->j6(IILjava/util/Comparator;)V

    invoke-direct {p0, v0, p2, p3}, Labcd/Ab;->j6(IILjava/util/Comparator;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    return-void

    :catch_1
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public DW()Labcd/Aa;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const-wide v2, -0x20db36d5339b8ea9L    # -2.126252279571113E150

    :try_start_0
    sget-boolean v0, Labcd/Ab;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x20db36d5339b8ea9L    # -2.126252279571113E150

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Ab;->Hw:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Labcd/Ab;->Hw:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Labcd/Ab;->j6(I)Labcd/Aa;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ab;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public DW(I)V
    .registers 6

    const-wide v2, 0x3b79845c30936c4L

    :try_start_0
    sget-boolean v0, Labcd/Ab;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3b79845c30936c4L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Labcd/Ab;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ab;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Labcd/Aa;)Z
    .registers 8

    const-wide v4, -0xe24fc3e94b7364L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ab;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0xe24fc3e94b7364L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Labcd/Ab;->Hw()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Labcd/Ab;->j6(I)Labcd/Aa;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-ne v2, p1, :cond_2

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ab;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public FH()Labcd/Aa;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const-wide v2, -0x2f72d5e333024cbL

    :try_start_0
    sget-boolean v0, Labcd/Ab;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2f72d5e333024cbL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Ab;->Hw:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Labcd/Ab;->FH:[I

    iget v1, p0, Labcd/Ab;->Hw:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Labcd/Ab;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    aget v0, v0, v1

    :try_start_1
    iget-object v1, p0, Labcd/Ab;->v5:Labcd/Ba;

    invoke-virtual {v1, v0}, Labcd/Ba;->FH(I)Labcd/Aa;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ab;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH(Labcd/Aa;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const-wide v2, -0x3098c985c2e0010dL    # -3.281077787466805E74

    :try_start_0
    sget-boolean v0, Labcd/Ab;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3098c985c2e0010dL    # -3.281077787466805E74

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Labcd/Ab;->j6(Labcd/Aa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ab;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()I
    .registers 5

    const-wide v2, -0x20ec9226d0e9f181L    # -9.937346530110687E149

    :try_start_0
    sget-boolean v0, Labcd/Ab;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x20ec9226d0e9f181L    # -9.937346530110687E149

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Ab;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ab;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(I)Labcd/Aa;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const-wide v4, -0x66b51ba46c010c99L    # -7.725670209500708E-187

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ab;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x66b51ba46c010c99L    # -7.725670209500708E-187

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v1, p0, Labcd/Ab;->FH:[I

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Labcd/Ab;->FH:[I

    array-length v1, v1

    if-ge p1, v1, :cond_1

    iget v1, p0, Labcd/Ab;->Hw:I

    if-ge p1, v1, :cond_1

    iget-object v0, p0, Labcd/Ab;->FH:[I

    aget v0, v0, p1

    iget-object v1, p0, Labcd/Ab;->v5:Labcd/Ba;

    invoke-virtual {v1, v0}, Labcd/Ba;->FH(I)Labcd/Aa;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ab;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v2, -0xa208dc4b897fecfL    # -6.043724889988599E259

    :try_start_0
    sget-boolean v0, Labcd/Ab;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa208dc4b897fecfL    # -6.043724889988599E259

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Labcd/Ab;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ab;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(ILabcd/Aa;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    const-wide v2, 0xacd67a31927e988L

    :try_start_0
    sget-boolean v0, Labcd/Ab;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0xacd67a31927e988L

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ab;->FH:[I

    if-nez v0, :cond_3

    const/16 v0, 0xa

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Ab;->FH:[I

    :cond_1
    :goto_0
    iget v0, p0, Labcd/Ab;->Hw:I

    if-lt p1, v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Labcd/Ab;->Hw:I

    :cond_2
    iget-object v0, p0, Labcd/Ab;->FH:[I

    iget-object v1, p0, Labcd/Ab;->v5:Labcd/Ba;

    invoke-virtual {v1, p2}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v1

    aput v1, v0, p1

    return-void

    :cond_3
    iget-object v0, p0, Labcd/Ab;->FH:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Labcd/Ab;->FH:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Labcd/Ab;->FH:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Labcd/Ab;->FH:[I

    array-length v6, v6

    invoke-static {v1, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Ab;->FH:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ab;->DW:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public j6(Labcd/Aa;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const-wide v6, 0x62113de7742243f0L    # 2.4822217643021474E164

    :try_start_0
    sget-boolean v0, Labcd/Ab;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x62113de7742243f0L    # 2.4822217643021474E164

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Ab;->FH:[I

    if-nez v0, :cond_2

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Ab;->FH:[I

    :cond_1
    :goto_0
    iget-object v0, p0, Labcd/Ab;->FH:[I

    iget v1, p0, Labcd/Ab;->Hw:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/Ab;->Hw:I

    iget-object v2, p0, Labcd/Ab;->v5:Labcd/Ba;

    invoke-virtual {v2, p1}, Labcd/Ba;->Hw(Labcd/Aa;)I

    move-result v2

    aput v2, v0, v1

    return-void

    :cond_2
    iget v0, p0, Labcd/Ab;->Hw:I

    iget-object v1, p0, Labcd/Ab;->FH:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Labcd/Ab;->FH:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Labcd/Ab;->FH:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/Ab;->FH:[I

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Ab;->FH:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ab;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(Labcd/Ab;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LAb",
            "<TE;>;)V"
        }
    .end annotation

    const-wide v2, -0x495d49062ce09b74L    # -1.6390593603696756E-45

    :try_start_0
    sget-boolean v0, Labcd/Ab;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x495d49062ce09b74L    # -1.6390593603696756E-45

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Labcd/Ab;->Hw()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Labcd/Ab;->j6(I)Labcd/Aa;

    move-result-object v1

    invoke-virtual {p0, v1}, Labcd/Ab;->j6(Labcd/Aa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ab;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public j6(Labcd/fc;)V
    .registers 8

    const-wide v4, 0x34290e35e71f280L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ab;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x34290e35e71f280L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Labcd/Ab;->FH:[I

    if-nez v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Labcd/Ab;->Hw:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    iget v1, p0, Labcd/Ab;->Hw:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Labcd/Ab;->FH:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ab;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(Ljava/util/Comparator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    const-wide v2, 0x4b90a70b3ae5ed88L    # 1.0207962058445424E56

    :try_start_0
    sget-boolean v0, Labcd/Ab;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4b90a70b3ae5ed88L    # 1.0207962058445424E56

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Labcd/Ab;->Hw:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Labcd/Ab;->j6(IILjava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ab;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const-wide v4, 0x33c4ff60474c980L

    :try_start_0
    sget-boolean v0, Labcd/Ab;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x33c4ff60474c980L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "{"

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget v2, p0, Labcd/Ab;->Hw:I

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/Ab;->v5:Labcd/Ba;

    iget-object v3, p0, Labcd/Ab;->FH:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Labcd/Ba;->FH(I)Labcd/Aa;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Aa;->VH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ab;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
