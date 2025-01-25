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
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    if-eqz p1, :cond_33

    if-ltz p2, :cond_2b

    if-eqz p3, :cond_23

    if-eqz p2, :cond_d

    move p1, p2

    goto :goto_10

    :cond_d
    const p1, 0x7fffffff

    :goto_10
    iput p1, p0, Labcd/Zt;->DW:I

    shr-int/lit8 p1, p2, 0x1

    iput p1, p0, Labcd/Zt;->FH:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1d

    const/4 p3, 0x0

    :cond_1d
    iput-object p3, p0, Labcd/Zt;->j6:Ljava/lang/String;

    invoke-direct {p0}, Labcd/Zt;->j6()V

    return-void

    :cond_23
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "prefix == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "width < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j6()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Labcd/Zt;->Hw:I

    iget v1, p0, Labcd/Zt;->FH:I

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    iput-boolean v1, p0, Labcd/Zt;->v5:Z

    iput v0, p0, Labcd/Zt;->Zo:I

    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 8

    iget-object v0, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Labcd/Zt;->v5:Z

    const/16 v2, 0x20

    const/4 v3, 0x0

    if-eqz v1, :cond_1a

    if-ne p1, v2, :cond_18

    iget v1, p0, Labcd/Zt;->Zo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Zt;->Zo:I

    iget v4, p0, Labcd/Zt;->FH:I

    if-lt v1, v4, :cond_1a

    iput v4, p0, Labcd/Zt;->Zo:I

    :cond_18
    iput-boolean v3, p0, Labcd/Zt;->v5:Z

    :cond_1a
    iget v1, p0, Labcd/Zt;->Hw:I

    iget v4, p0, Labcd/Zt;->DW:I

    const/16 v5, 0xa

    if-ne v1, v4, :cond_2b

    if-eq p1, v5, :cond_2b

    iget-object v1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v5}, Ljava/io/Writer;->write(I)V

    iput v3, p0, Labcd/Zt;->Hw:I

    :cond_2b
    iget v1, p0, Labcd/Zt;->Hw:I

    if-nez v1, :cond_4c

    iget-object v1, p0, Labcd/Zt;->j6:Ljava/lang/String;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    iget-object v4, p0, Labcd/Zt;->j6:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_3a
    iget-boolean v1, p0, Labcd/Zt;->v5:Z

    if-nez v1, :cond_4c

    :goto_3e
    iget v1, p0, Labcd/Zt;->Zo:I

    if-ge v3, v1, :cond_4a

    iget-object v1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_4a
    iput v1, p0, Labcd/Zt;->Hw:I

    :cond_4c
    iget-object v1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V

    if-ne p1, v5, :cond_57

    invoke-direct {p0}, Labcd/Zt;->j6()V

    goto :goto_5d

    :cond_57
    iget p1, p0, Labcd/Zt;->Hw:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Labcd/Zt;->Hw:I

    :goto_5d
    monitor-exit v0

    return-void

    :catchall_5f
    move-exception p1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    goto :goto_63

    :goto_62
    throw p1

    :goto_63
    goto :goto_62
.end method

.method public write(Ljava/lang/String;II)V
    .registers 6

    iget-object v0, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :goto_3
    if-lez p3, :cond_11

    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Labcd/Zt;->write(I)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    goto :goto_17

    :goto_16
    throw p1

    :goto_17
    goto :goto_16
.end method

.method public write([CII)V
    .registers 6

    iget-object v0, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :goto_3
    if-lez p3, :cond_f

    :try_start_5
    aget-char v1, p1, p2

    invoke-virtual {p0, v1}, Labcd/Zt;->write(I)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    goto :goto_15

    :goto_14
    throw p1

    :goto_15
    goto :goto_14
.end method
