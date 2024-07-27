.class Labcd/AI$c;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/AI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final DW:[B

.field private FH:Labcd/AI$e;

.field private Hw:J

.field final VH:Labcd/AI;

.field private Zo:I

.field private final j6:Ljava/util/zip/Inflater;

.field private v5:J


# direct methods
.method constructor <init>(Labcd/AI;)V
    .registers 3

    iput-object p1, p0, Labcd/AI$c;->VH:Labcd/AI;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    invoke-static {}, Labcd/tE;->j6()Ljava/util/zip/Inflater;

    move-result-object v0

    iput-object v0, p0, Labcd/AI$c;->j6:Ljava/util/zip/Inflater;

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/AI$c;->DW:[B

    return-void
.end method


# virtual methods
.method public close()V
    .registers 6

    iget-object v0, p0, Labcd/AI$c;->DW:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Labcd/AI$c;->v5:J

    iget-wide v2, p0, Labcd/AI$c;->Hw:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/AI$c;->VH:Labcd/AI;

    invoke-static {v0}, Labcd/AI;->DW(Labcd/AI;)I

    move-result v0

    iget-object v1, p0, Labcd/AI$c;->j6:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    iget-object v1, p0, Labcd/AI$c;->VH:Labcd/AI;

    iget-object v2, p0, Labcd/AI$c;->FH:Labcd/AI$e;

    invoke-static {v1}, Labcd/AI;->j6(Labcd/AI;)[B

    move-result-object v3

    iget v4, p0, Labcd/AI$c;->Zo:I

    invoke-virtual {v1, v2, v3, v4, v0}, Labcd/AI;->j6(Labcd/AI$e;[BII)V

    iget-object v1, p0, Labcd/AI$c;->VH:Labcd/AI;

    invoke-static {v1, v0}, Labcd/AI;->j6(Labcd/AI;I)V

    :cond_0
    iget-object v0, p0, Labcd/AI$c;->j6:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    return-void

    :cond_1
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packfileCorruptionDetected:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->wrongDecompressedLength:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method j6()V
    .registers 2

    iget-object v0, p0, Labcd/AI$c;->j6:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    iget-object v0, p0, Labcd/AI$c;->j6:Ljava/util/zip/Inflater;

    invoke-static {v0}, Labcd/tE;->j6(Ljava/util/zip/Inflater;)V

    return-void
.end method

.method j6(Labcd/AI$e;J)V
    .registers 8

    iput-object p1, p0, Labcd/AI$c;->FH:Labcd/AI$e;

    iput-wide p2, p0, Labcd/AI$c;->Hw:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Labcd/AI$c;->v5:J

    iget-object v0, p0, Labcd/AI$c;->VH:Labcd/AI;

    iget-object v1, p0, Labcd/AI$c;->FH:Labcd/AI$e;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Labcd/AI;->j6(Labcd/AI;Labcd/AI$e;I)I

    move-result v0

    iput v0, p0, Labcd/AI$c;->Zo:I

    iget-object v0, p0, Labcd/AI$c;->j6:Ljava/util/zip/Inflater;

    iget-object v1, p0, Labcd/AI$c;->VH:Labcd/AI;

    invoke-static {v1}, Labcd/AI;->j6(Labcd/AI;)[B

    move-result-object v1

    iget v2, p0, Labcd/AI$c;->Zo:I

    iget-object v3, p0, Labcd/AI$c;->VH:Labcd/AI;

    invoke-static {v3}, Labcd/AI;->DW(Labcd/AI;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    return-void
.end method

.method public read()I
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/AI$c;->DW:[B

    invoke-virtual {p0, v0, v1, v2}, Labcd/AI$c;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Labcd/AI$c;->DW:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read([BII)I
    .registers 12

    const/4 v7, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-lt v0, p3, :cond_1

    :cond_0
    :try_start_0
    iget-wide v2, p0, Labcd/AI$c;->v5:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/AI$c;->v5:J

    if-lez v0, :cond_2

    :goto_1
    return v0

    :cond_1
    iget-object v2, p0, Labcd/AI$c;->j6:Ljava/util/zip/Inflater;

    add-int v3, p2, v0

    sub-int v4, p3, v0

    invoke-virtual {v2, p1, v3, v4}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Labcd/AI$c;->j6:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Labcd/AI$c;->j6:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Labcd/AI$c;->VH:Labcd/AI;

    iget-object v3, p0, Labcd/AI$c;->FH:Labcd/AI$e;

    iget-object v4, p0, Labcd/AI$c;->VH:Labcd/AI;

    invoke-static {v4}, Labcd/AI;->j6(Labcd/AI;)[B

    move-result-object v4

    iget v5, p0, Labcd/AI$c;->Zo:I

    iget-object v6, p0, Labcd/AI$c;->VH:Labcd/AI;

    invoke-static {v6}, Labcd/AI;->DW(Labcd/AI;)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Labcd/AI;->j6(Labcd/AI$e;[BII)V

    iget-object v2, p0, Labcd/AI$c;->VH:Labcd/AI;

    iget-object v3, p0, Labcd/AI$c;->VH:Labcd/AI;

    invoke-static {v3}, Labcd/AI;->DW(Labcd/AI;)I

    move-result v3

    invoke-static {v2, v3}, Labcd/AI;->j6(Labcd/AI;I)V

    iget-object v2, p0, Labcd/AI$c;->VH:Labcd/AI;

    iget-object v3, p0, Labcd/AI$c;->FH:Labcd/AI$e;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Labcd/AI;->j6(Labcd/AI;Labcd/AI$e;I)I

    move-result v2

    iput v2, p0, Labcd/AI$c;->Zo:I

    iget-object v2, p0, Labcd/AI$c;->j6:Ljava/util/zip/Inflater;

    iget-object v3, p0, Labcd/AI$c;->VH:Labcd/AI;

    invoke-static {v3}, Labcd/AI;->j6(Labcd/AI;)[B

    move-result-object v3

    iget v4, p0, Labcd/AI$c;->Zo:I

    iget-object v5, p0, Labcd/AI$c;->VH:Labcd/AI;

    invoke-static {v5}, Labcd/AI;->DW(Labcd/AI;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Inflater;->setInput([BII)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->packfileCorruptionDetected:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->packfileCorruptionDetected:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v5

    iget-object v5, v5, Lorg/eclipse/jgit/JGitText;->unknownZlibError:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    add-int/2addr v0, v2

    goto/16 :goto_0
.end method

.method public skip(J)J
    .registers 10

    const-wide/16 v0, 0x0

    :goto_0
    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    :cond_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Labcd/AI$c;->DW:[B

    array-length v2, v2

    int-to-long v2, v2

    sub-long v4, p1, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Labcd/AI$c;->DW:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Labcd/AI$c;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0
.end method
