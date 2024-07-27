.class public final Labcd/Zt;
.super Ljava/io/FilterWriter;


# instance fields
.field private final DW:I

.field private final FH:I

.field private Hw:I

.field private Zo:I

.field private final j6:Ljava/lang/String;

.field private v5:Z


# direct methods
.method public constructor <init>(Ljava/io/Writer;I)V
    .registers 4

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Labcd/Zt;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ILjava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    if-eqz p1, :cond_4

    if-ltz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    move v0, p2

    :goto_0
    iput v0, p0, Labcd/Zt;->DW:I

    shr-int/lit8 v0, p2, 0x1

    iput v0, p0, Labcd/Zt;->FH:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput-object p3, p0, Labcd/Zt;->j6:Ljava/lang/String;

    invoke-direct {p0}, Labcd/Zt;->j6()V

    return-void

    :cond_1
    const v0, 0x7fffffff

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prefix == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6()V
    .registers 3

    const/4 v1, 0x0

    iput v1, p0, Labcd/Zt;->Hw:I

    iget v0, p0, Labcd/Zt;->FH:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Labcd/Zt;->v5:Z

    iput v1, p0, Labcd/Zt;->Zo:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public write(I)V
    .registers 7

    const/16 v3, 0x20

    const/16 v4, 0xa

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Labcd/Zt;->v5:Z

    if-eqz v2, :cond_0

    if-ne p1, v3, :cond_3

    iget v2, p0, Labcd/Zt;->Zo:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/Zt;->Zo:I

    iget v2, p0, Labcd/Zt;->Zo:I

    iget v3, p0, Labcd/Zt;->FH:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Labcd/Zt;->FH:I

    iput v2, p0, Labcd/Zt;->Zo:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Labcd/Zt;->v5:Z

    :cond_0
    :goto_0
    iget v2, p0, Labcd/Zt;->Hw:I

    iget v3, p0, Labcd/Zt;->DW:I

    if-ne v2, v3, :cond_1

    if-eq p1, v4, :cond_1

    iget-object v2, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    const/4 v2, 0x0

    iput v2, p0, Labcd/Zt;->Hw:I

    :cond_1
    iget v2, p0, Labcd/Zt;->Hw:I

    if-nez v2, :cond_5

    iget-object v2, p0, Labcd/Zt;->j6:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Labcd/Zt;->j6:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    iget-boolean v2, p0, Labcd/Zt;->v5:Z

    if-nez v2, :cond_5

    :goto_1
    iget v2, p0, Labcd/Zt;->Zo:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Labcd/Zt;->v5:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    iget v0, p0, Labcd/Zt;->Zo:I

    iput v0, p0, Labcd/Zt;->Hw:I

    :cond_5
    iget-object v0, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    if-ne p1, v4, :cond_6

    invoke-direct {p0}, Labcd/Zt;->j6()V

    :goto_2
    monitor-exit v1

    return-void

    :cond_6
    iget v0, p0, Labcd/Zt;->Hw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Zt;->Hw:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public write(Ljava/lang/String;II)V
    .registers 6

    iget-object v1, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    if-lez p3, :cond_0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Labcd/Zt;->write(I)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write([CII)V
    .registers 6

    iget-object v1, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    if-lez p3, :cond_0

    :try_start_0
    aget-char v0, p1, p2

    invoke-virtual {p0, v0}, Labcd/Zt;->write(I)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
