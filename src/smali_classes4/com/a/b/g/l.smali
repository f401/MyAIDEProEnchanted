.class public final Lcom/a/b/g/l;
.super Ljava/io/FilterWriter;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;I)V
    .registers 4

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/a/b/g/l;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ILjava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-gez p2, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "width < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    if-nez p3, :cond_21

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prefix == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    if-eqz p2, :cond_37

    move v0, p2

    :goto_24
    iput v0, p0, Lcom/a/b/g/l;->b:I

    shr-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/a/b/g/l;->c:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_31

    const/4 p3, 0x0

    :cond_31
    iput-object p3, p0, Lcom/a/b/g/l;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/a/b/g/l;->a()V

    return-void

    :cond_37
    const v0, 0x7fffffff

    goto :goto_24
.end method

.method private a()V
    .registers 3

    const/4 v1, 0x0

    iput v1, p0, Lcom/a/b/g/l;->d:I

    iget v0, p0, Lcom/a/b/g/l;->c:I

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lcom/a/b/g/l;->e:Z

    iput v1, p0, Lcom/a/b/g/l;->f:I

    return-void

    :cond_d
    move v0, v1

    goto :goto_8
.end method


# virtual methods
.method public write(I)V
    .registers 7

    const/16 v3, 0x20

    const/16 v4, 0xa

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/a/b/g/l;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-boolean v2, p0, Lcom/a/b/g/l;->e:Z

    if-eqz v2, :cond_21

    if-ne p1, v3, :cond_5a

    iget v2, p0, Lcom/a/b/g/l;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/a/b/g/l;->f:I

    iget v2, p0, Lcom/a/b/g/l;->f:I

    iget v3, p0, Lcom/a/b/g/l;->c:I

    if-lt v2, v3, :cond_21

    iget v2, p0, Lcom/a/b/g/l;->c:I

    iput v2, p0, Lcom/a/b/g/l;->f:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/a/b/g/l;->e:Z

    :cond_21
    :goto_21
    iget v2, p0, Lcom/a/b/g/l;->d:I

    iget v3, p0, Lcom/a/b/g/l;->b:I

    if-ne v2, v3, :cond_33

    if-eq p1, v4, :cond_33

    iget-object v2, p0, Lcom/a/b/g/l;->out:Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/a/b/g/l;->d:I

    :cond_33
    iget v2, p0, Lcom/a/b/g/l;->d:I

    if-nez v2, :cond_4e

    iget-object v2, p0, Lcom/a/b/g/l;->a:Ljava/lang/String;

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/a/b/g/l;->out:Ljava/io/Writer;

    iget-object v3, p0, Lcom/a/b/g/l;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_42
    iget-boolean v2, p0, Lcom/a/b/g/l;->e:Z

    if-nez v2, :cond_4e

    :goto_46
    iget v2, p0, Lcom/a/b/g/l;->f:I

    if-lt v0, v2, :cond_61

    iget v0, p0, Lcom/a/b/g/l;->f:I

    iput v0, p0, Lcom/a/b/g/l;->d:I

    :cond_4e
    iget-object v0, p0, Lcom/a/b/g/l;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    if-ne p1, v4, :cond_6b

    invoke-direct {p0}, Lcom/a/b/g/l;->a()V

    :goto_58
    monitor-exit v1

    return-void

    :cond_5a
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/a/b/g/l;->e:Z

    goto :goto_21

    :catchall_5e
    move-exception v0

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_8 .. :try_end_60} :catchall_5e

    throw v0

    :cond_61
    :try_start_61
    iget-object v2, p0, Lcom/a/b/g/l;->out:Ljava/io/Writer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_6b
    iget v0, p0, Lcom/a/b/g/l;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/b/g/l;->d:I
    :try_end_71
    .catchall {:try_start_61 .. :try_end_71} :catchall_5e

    goto :goto_58
.end method

.method public write(Ljava/lang/String;II)V
    .registers 6

    iget-object v1, p0, Lcom/a/b/g/l;->lock:Ljava/lang/Object;

    monitor-enter v1

    :goto_3
    if-gtz p3, :cond_7

    :try_start_5
    monitor-exit v1

    return-void

    :cond_7
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/b/g/l;->write(I)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public write([CII)V
    .registers 6

    iget-object v1, p0, Lcom/a/b/g/l;->lock:Ljava/lang/Object;

    monitor-enter v1

    :goto_3
    if-gtz p3, :cond_7

    :try_start_5
    monitor-exit v1

    return-void

    :cond_7
    aget-char v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/a/b/g/l;->write(I)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0
.end method
