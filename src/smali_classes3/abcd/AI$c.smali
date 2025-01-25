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
    .registers 2

    iput-object p1, p0, Labcd/AI$c;->VH:Labcd/AI;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    invoke-static {}, Labcd/tE;->j6()Ljava/util/zip/Inflater;

    move-result-object p1

    iput-object p1, p0, Labcd/AI$c;->j6:Ljava/util/zip/Inflater;

    const/16 p1, 0x200

    new-array p1, p1, [B

    iput-object p1, p0, Labcd/AI$c;->DW:[B

    return-void
.end method


# virtual methods
.method public close()V
    .registers 6

    iget-object v0, p0, Labcd/AI$c;->DW:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_38

    iget-wide v0, p0, Labcd/AI$c;->v5:J

    iget-wide v2, p0, Labcd/AI$c;->Hw:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_38

    iget-object v0, p0, Labcd/AI$c;->VH:Labcd/AI;

    invoke-static {v0}, Labcd/AI;->DW(Labcd/AI;)I

    move-result v0

    iget-object v1, p0, Labcd/AI$c;->j6:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_32

    iget-object v1, p0, Labcd/AI$c;->VH:Labcd/AI;

    iget-object v2, p0, Labcd/AI$c;->FH:Labcd/AI$e;

    invoke-static {v1}, Labcd/AI;->j6(Labcd/AI;)[B

    move-result-object v3

    iget v4, p0, Labcd/AI$c;->Zo:I

    invoke-virtual {v1, v2, v3, v4, v0}, Labcd/AI;->j6(Labcd/AI$e;[BII)V

    iget-object v1, p0, Labcd/AI$c;->VH:Labcd/AI;

    invoke-static {v1, v0}, Labcd/AI;->j6(Labcd/AI;I)V

    :cond_32
    iget-object v0, p0, Labcd/AI$c;->j6:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    return-void

    :cond_38
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packfileCorruptionDetected:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->wrongDecompressedLength:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

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
    .registers 5

    iput-object p1, p0, Labcd/AI$c;->FH:Labcd/AI$e;

    iput-wide p2, p0, Labcd/AI$c;->Hw:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Labcd/AI$c;->v5:J

    iget-object p2, p0, Labcd/AI$c;->VH:Labcd/AI;

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Labcd/AI;->j6(Labcd/AI;Labcd/AI$e;I)I

    move-result p1

    iput p1, p0, Labcd/AI$c;->Zo:I

    iget-object p1, p0, Labcd/AI$c;->j6:Ljava/util/zip/Inflater;

    iget-object p2, p0, Labcd/AI$c;->VH:Labcd/AI;

    invoke-static {p2}, Labcd/AI;->j6(Labcd/AI;)[B

    move-result-object p2

    iget p3, p0, Labcd/AI$c;->Zo:I

    iget-object v0, p0, Labcd/AI$c;->VH:Labcd/AI;

    invoke-static {v0}, Labcd/AI;->DW(Labcd/AI;)I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    return-void
.end method

.method public read()I
    .registers 4

    iget-object v0, p0, Labcd/AI$c;->DW:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Labcd/AI$c;->read([BII)I

    move-result v0

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Labcd/AI$c;->DW:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_12

    :cond_11
    const/4 v0, -0x1

    :goto_12
    return v0
.end method

.method public read([BII)I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x1

    if-lt v1, p3, :cond_6

    goto :goto_1a

    :cond_6
    :try_start_6
    iget-object v3, p0, Labcd/AI$c;->j6:Ljava/util/zip/Inflater;

    add-int v4, p2, v1

    sub-int v5, p3, v1

    invoke-virtual {v3, p1, v4, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v3

    if-nez v3, :cond_81

    iget-object v3, p0, Labcd/AI$c;->j6:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-eqz v3, :cond_25

    :goto_1a
    iget-wide p1, p0, Labcd/AI$c;->v5:J

    int-to-long v3, v1

    add-long/2addr p1, v3

    iput-wide p1, p0, Labcd/AI$c;->v5:J

    if-lez v1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, -0x1

    :goto_24
    return v1

    :cond_25
    iget-object v3, p0, Labcd/AI$c;->j6:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v3

    if-eqz v3, :cond_67

    iget-object v3, p0, Labcd/AI$c;->VH:Labcd/AI;

    iget-object v4, p0, Labcd/AI$c;->FH:Labcd/AI$e;

    invoke-static {v3}, Labcd/AI;->j6(Labcd/AI;)[B

    move-result-object v5

    iget v6, p0, Labcd/AI$c;->Zo:I

    iget-object v7, p0, Labcd/AI$c;->VH:Labcd/AI;

    invoke-static {v7}, Labcd/AI;->DW(Labcd/AI;)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Labcd/AI;->j6(Labcd/AI$e;[BII)V

    iget-object v3, p0, Labcd/AI$c;->VH:Labcd/AI;

    invoke-static {v3}, Labcd/AI;->DW(Labcd/AI;)I

    move-result v4

    invoke-static {v3, v4}, Labcd/AI;->j6(Labcd/AI;I)V

    iget-object v3, p0, Labcd/AI$c;->VH:Labcd/AI;

    iget-object v4, p0, Labcd/AI$c;->FH:Labcd/AI$e;

    invoke-static {v3, v4, v2}, Labcd/AI;->j6(Labcd/AI;Labcd/AI$e;I)I

    move-result v3

    iput v3, p0, Labcd/AI$c;->Zo:I

    iget-object v3, p0, Labcd/AI$c;->j6:Ljava/util/zip/Inflater;

    iget-object v4, p0, Labcd/AI$c;->VH:Labcd/AI;

    invoke-static {v4}, Labcd/AI;->j6(Labcd/AI;)[B

    move-result-object v4

    iget v5, p0, Labcd/AI$c;->Zo:I

    iget-object v6, p0, Labcd/AI$c;->VH:Labcd/AI;

    invoke-static {v6}, Labcd/AI;->DW(Labcd/AI;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_2

    :cond_67
    new-instance p1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->packfileCorruptionDetected:Ljava/lang/String;

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unknownZlibError:Ljava/lang/String;

    aput-object v1, p3, v0

    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_81
    .catch Ljava/util/zip/DataFormatException; {:try_start_6 .. :try_end_81} :catch_84

    :cond_81
    add-int/2addr v1, v3

    goto/16 :goto_2

    :catch_84
    move-exception p1

    new-instance p2, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p3

    iget-object p3, p3, Lorg/eclipse/jgit/JGitText;->packfileCorruptionDetected:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {p3, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    goto :goto_9e

    :goto_9d
    throw p2

    :goto_9e
    goto :goto_9d
.end method

.method public skip(J)J
    .registers 9

    const-wide/16 v0, 0x0

    :goto_2
    cmp-long v2, v0, p1

    if-ltz v2, :cond_7

    goto :goto_1b

    :cond_7
    iget-object v2, p0, Labcd/AI$c;->DW:[B

    array-length v2, v2

    int-to-long v2, v2

    sub-long v4, p1, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    iget-object v2, p0, Labcd/AI$c;->DW:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Labcd/AI$c;->read([BII)I

    move-result v2

    if-gtz v2, :cond_1c

    :goto_1b
    return-wide v0

    :cond_1c
    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_2
.end method
