.class public abstract Labcd/AI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/AI$a;,
        Labcd/AI$b;,
        Labcd/AI$c;,
        Labcd/AI$d;,
        Labcd/AI$e;,
        Labcd/AI$f;
    }
.end annotation


# static fields
.field private static j6:[I


# instance fields
.field private BT:Labcd/IE;

.field private final DW:Labcd/xE;

.field private EQ:I

.field private FH:Labcd/AI$c;

.field private Hw:[B

.field private J0:Labcd/wE;

.field private J8:Z

.field private Mr:Labcd/DE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LDE",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field

.field private P8:J

.field private QX:Z

.field private U2:I

.field private final VH:Labcd/uE;

.field private Ws:Z

.field private XL:Z

.field private final Zo:Ljava/security/MessageDigest;

.field private a8:I

.field private aM:J

.field private er:Labcd/wI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LwI",
            "<",
            "Labcd/AI$f;",
            ">;"
        }
    .end annotation
.end field

.field private gW:Ljava/security/MessageDigest;

.field private gn:Ljava/io/InputStream;

.field private j3:[Labcd/CI;

.field private lg:Labcd/AE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LAE",
            "<",
            "Labcd/AI$a;",
            ">;"
        }
    .end annotation
.end field

.field private rN:Labcd/DE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LDE",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field

.field private tp:J

.field private u7:[B

.field private v5:[B

.field private vy:Ljava/lang/String;

.field private we:I

.field private yS:Labcd/lK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LlK",
            "<",
            "Labcd/CI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Labcd/xE;Ljava/io/InputStream;)V
    .registers 5

    const/16 v1, 0x2000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Labcd/xE;->FH()Labcd/xE;

    move-result-object v0

    iput-object v0, p0, Labcd/AI;->DW:Labcd/xE;

    iput-object p2, p0, Labcd/AI;->gn:Ljava/io/InputStream;

    new-instance v0, Labcd/AI$c;

    invoke-direct {v0, p0}, Labcd/AI$c;-><init>(Labcd/AI;)V

    iput-object v0, p0, Labcd/AI;->FH:Labcd/AI$c;

    iget-object v0, p0, Labcd/AI;->DW:Labcd/xE;

    invoke-virtual {v0}, Labcd/xE;->v5()Labcd/IE;

    move-result-object v0

    iput-object v0, p0, Labcd/AI;->BT:Labcd/IE;

    new-array v0, v1, [B

    iput-object v0, p0, Labcd/AI;->u7:[B

    new-array v0, v1, [B

    iput-object v0, p0, Labcd/AI;->Hw:[B

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/AI;->v5:[B

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    new-instance v0, Labcd/uE;

    invoke-direct {v0}, Labcd/uE;-><init>()V

    iput-object v0, p0, Labcd/AI;->VH:Labcd/uE;

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Labcd/AI;->gW:Ljava/security/MessageDigest;

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/AI;->Ws:Z

    return-void
.end method

.method static synthetic DW(Labcd/AI;)I
    .registers 2

    iget v0, p0, Labcd/AI;->we:I

    return v0
.end method

.method private DW(Labcd/AI$f;Labcd/AI$d;)Labcd/AI$d;
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Labcd/AI;->EQ:I

    iput v0, p0, Labcd/AI;->we:I

    invoke-virtual {p0, p1, p2}, Labcd/AI;->j6(Labcd/AI$f;Labcd/AI$d;)Labcd/AI$d;

    return-object p2
.end method

.method private DW(Labcd/CI;Labcd/AI$d;)Labcd/AI$d;
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Labcd/AI;->EQ:I

    iput v0, p0, Labcd/AI;->we:I

    invoke-virtual {p0, p1, p2}, Labcd/AI;->j6(Labcd/CI;Labcd/AI$d;)Labcd/AI$d;

    return-object p2
.end method

.method private DW(JIJ)V
    .registers 14

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    invoke-static {p3}, Labcd/hE;->j6(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update(B)V

    iget-object v1, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    invoke-static {p4, p5}, Labcd/hE;->j6(J)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update(B)V

    const/4 v1, 0x3

    if-ne p3, v1, :cond_5

    invoke-virtual {p0}, Labcd/AI;->DW()[B

    move-result-object v1

    sget-object v3, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {p0, v3, p4, p5}, Labcd/AI;->j6(Labcd/AI$e;J)Ljava/io/InputStream;

    move-result-object v3

    const-wide/16 v4, 0x0

    :goto_0
    cmp-long v6, v4, p4

    if-ltz v6, :cond_4

    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    iget-object v1, p0, Labcd/AI;->VH:Labcd/uE;

    iget-object v3, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Labcd/uE;->Hw([BI)V

    invoke-virtual {p0}, Labcd/AI;->u7()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/AI;->BT:Labcd/IE;

    iget-object v3, p0, Labcd/AI;->VH:Labcd/uE;

    invoke-virtual {v1, v3}, Labcd/IE;->DW(Labcd/YD;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    move-object v1, v2

    :goto_1
    iget-object v3, p0, Labcd/AI;->VH:Labcd/uE;

    invoke-virtual {p0, v3, v2, v2}, Labcd/AI;->j6(Labcd/YD;Labcd/AI$f;Labcd/yE;)Labcd/CI;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Labcd/CI;->j6(J)V

    invoke-virtual {p0, v2}, Labcd/AI;->j6(Labcd/CI;)V

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2, p3, v1}, Labcd/AI;->j6(Labcd/CI;I[B)V

    :cond_2
    invoke-direct {p0, v2}, Labcd/AI;->DW(Labcd/CI;)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/AI;->yS:Labcd/lK;

    invoke-virtual {v0, v2}, Labcd/lK;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_0

    iget-object v7, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    invoke-virtual {v7, v1, v0, v6}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_0

    :cond_5
    sget-object v1, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {p0, v1, p4, p5}, Labcd/AI;->DW(Labcd/AI$e;J)[B

    move-result-object v1

    iget-object v3, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v3, p0, Labcd/AI;->VH:Labcd/uE;

    iget-object v4, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Labcd/uE;->Hw([BI)V

    iget-object v3, p0, Labcd/AI;->VH:Labcd/uE;

    invoke-direct {p0, v3, p3, v1}, Labcd/AI;->j6(Labcd/YD;I[B)V

    goto :goto_1
.end method

.method private DW(Labcd/CI;)V
    .registers 5

    iget-object v0, p0, Labcd/AI;->j3:[Labcd/CI;

    iget v1, p0, Labcd/AI;->a8:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/AI;->a8:I

    aput-object p1, v0, v1

    invoke-direct {p0}, Labcd/AI;->Ws()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/AI;->Mr:Labcd/DE;

    invoke-virtual {v0, p1}, Labcd/DE;->j6(Labcd/yE;)V

    :cond_0
    return-void
.end method

.method private DW(Labcd/LE;)V
    .registers 5

    iget v1, p0, Labcd/AI;->a8:I

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Labcd/AI;->j3:[Labcd/CI;

    aget-object v2, v2, v0

    invoke-direct {p0, v2, p1}, Labcd/AI;->j6(Labcd/CI;Labcd/LE;)V

    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->downloadCancelledDuringIndexing:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private DW(Labcd/AI$e;J)[B
    .registers 8

    long-to-int v0, p2

    new-array v0, v0, [B

    invoke-direct {p0, p1, p2, p3}, Labcd/AI;->j6(Labcd/AI$e;J)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v0, v2, v3}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method private FH(Labcd/CI;)Labcd/AI$f;
    .registers 14

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Labcd/AI;->j6(Labcd/YD;)Labcd/AI$f;

    move-result-object v0

    invoke-static {v0}, Labcd/AI;->j6(Labcd/AI$f;)Labcd/AI$f;

    move-result-object v2

    iget-object v0, p0, Labcd/AI;->er:Labcd/wI;

    invoke-virtual {p1}, Labcd/CI;->getOffset()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Labcd/wI;->j6(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/AI$f;

    invoke-static {v0}, Labcd/AI;->j6(Labcd/AI$f;)Labcd/AI$f;

    move-result-object v1

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez v1, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v6, v7

    move-object v0, v7

    move-object v3, v2

    move-object v5, v1

    :goto_1
    if-nez v3, :cond_3

    if-eqz v5, :cond_0

    :cond_3
    if-eqz v5, :cond_4

    if-eqz v3, :cond_5

    iget-wide v8, v3, Labcd/AI$f;->j6:J

    iget-wide v10, v5, Labcd/AI$f;->j6:J

    cmp-long v1, v8, v10

    if-gez v1, :cond_5

    :cond_4
    iget-object v2, v3, Labcd/AI$f;->FH:Labcd/AI$f;

    move-object v4, v5

    move-object v1, v3

    :goto_2
    if-eqz v6, :cond_6

    iput-object v1, v6, Labcd/AI$f;->FH:Labcd/AI$f;

    :goto_3
    iput-object v7, v1, Labcd/AI$f;->FH:Labcd/AI$f;

    move-object v6, v1

    move-object v3, v2

    move-object v5, v4

    goto :goto_1

    :cond_5
    iget-object v4, v5, Labcd/AI$f;->FH:Labcd/AI$f;

    move-object v2, v3

    move-object v1, v5

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_3
.end method

.method private FH(I)V
    .registers 6

    const/4 v3, 0x0

    iget-wide v0, p0, Labcd/AI;->aM:J

    long-to-int v0, v0

    add-int/2addr v0, p1

    new-array v0, v0, [Labcd/CI;

    iget-object v1, p0, Labcd/AI;->j3:[Labcd/CI;

    iget v2, p0, Labcd/AI;->a8:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/AI;->j3:[Labcd/CI;

    return-void
.end method

.method private FH(Labcd/AI$e;J)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Labcd/AI;->j6(Labcd/AI$e;J)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p2, p3}, Labcd/BK;->j6(Ljava/io/InputStream;J)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private FH(Labcd/LE;)V
    .registers 11

    const/4 v8, 0x0

    iget-object v0, p0, Labcd/AI;->lg:Labcd/AE;

    invoke-virtual {v0}, Labcd/AE;->size()I

    move-result v0

    invoke-direct {p0, v0}, Labcd/AI;->FH(I)V

    iget-boolean v0, p0, Labcd/AI;->QX:Z

    if-eqz v0, :cond_0

    new-instance v0, Labcd/DE;

    invoke-direct {v0}, Labcd/DE;-><init>()V

    iput-object v0, p0, Labcd/AI;->rN:Labcd/DE;

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v0, 0x40

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Labcd/AI;->lg:Labcd/AE;

    invoke-virtual {v0}, Labcd/AE;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Labcd/AI;->EQ()V

    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/AI$a;

    iget-object v2, v0, Labcd/AI$a;->EQ:Labcd/AI$f;

    if-eqz v2, :cond_2

    new-instance v1, Labcd/fD;

    const-string v2, "delta base"

    invoke-direct {v1, v0, v2}, Labcd/fD;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/AI$a;

    iget-object v3, v0, Labcd/AI$a;->EQ:Labcd/AI$f;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Labcd/AI;->QX:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Labcd/AI;->rN:Labcd/DE;

    invoke-virtual {v3, v0}, Labcd/DE;->j6(Labcd/yE;)V

    :cond_5
    :try_start_0
    iget-object v3, p0, Labcd/AI;->BT:Labcd/IE;

    invoke-virtual {v3, v0}, Labcd/IE;->FH(Labcd/YD;)Labcd/FE;
    :try_end_0
    .catch Labcd/fD; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    new-instance v4, Labcd/AI$b;

    invoke-direct {v4}, Labcd/AI$b;-><init>()V

    const v5, 0x7fffffff

    invoke-virtual {v3, v5}, Labcd/FE;->DW(I)[B

    move-result-object v5

    iput-object v5, v4, Labcd/AI$b;->FH:[B

    iput-object v0, v4, Labcd/AI$b;->DW:Labcd/yE;

    invoke-virtual {v3}, Labcd/FE;->FH()I

    move-result v3

    invoke-virtual {p0, v0, v8, v8}, Labcd/AI;->j6(Labcd/YD;Labcd/AI$f;Labcd/yE;)Labcd/CI;

    move-result-object v0

    iget-object v5, v4, Labcd/AI$b;->FH:[B

    invoke-virtual {p0, v3, v5, v0}, Labcd/AI;->j6(I[BLabcd/CI;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Labcd/AI;->j3:[Labcd/CI;

    iget v6, p0, Labcd/AI;->a8:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Labcd/AI;->a8:I

    aput-object v0, v5, v6

    :cond_6
    invoke-direct {p0, v0}, Labcd/AI;->FH(Labcd/CI;)Labcd/AI$f;

    move-result-object v0

    iput-object v0, v4, Labcd/AI$b;->v5:Labcd/AI$f;

    invoke-virtual {v4}, Labcd/AI$b;->j6()Labcd/AI$b;

    move-result-object v0

    new-instance v4, Labcd/AI$d;

    invoke-direct {v4}, Labcd/AI$d;-><init>()V

    invoke-direct {p0, v0, v3, v4, p1}, Labcd/AI;->j6(Labcd/AI$b;ILabcd/AI$d;Labcd/LE;)V

    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->downloadCancelledDuringIndexing:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private Hw(I)V
    .registers 3

    iget v0, p0, Labcd/AI;->EQ:I

    add-int/2addr v0, p1

    iput v0, p0, Labcd/AI;->EQ:I

    iget v0, p0, Labcd/AI;->we:I

    sub-int/2addr v0, p1

    iput v0, p0, Labcd/AI;->we:I

    return-void
.end method

.method private J0()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/AI;->gn:Ljava/io/InputStream;

    return-void
.end method

.method private J8()V
    .registers 16

    const/4 v13, 0x7

    const/4 v7, 0x4

    const/16 v12, 0x14

    const/4 v9, 0x1

    const/4 v14, 0x0

    invoke-direct {p0}, Labcd/AI;->aM()J

    move-result-wide v1

    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {p0, v0}, Labcd/AI;->j6(Labcd/AI$e;)I

    move-result v0

    iget-object v3, p0, Labcd/AI;->v5:[B

    int-to-byte v4, v0

    aput-byte v4, v3, v14

    shr-int/lit8 v3, v0, 0x4

    and-int/lit8 v3, v3, 0x7

    and-int/lit8 v4, v0, 0xf

    int-to-long v4, v4

    move v6, v7

    move v8, v9

    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_4

    invoke-direct {p0, v3, v4, v5}, Labcd/AI;->j6(IJ)V

    if-eq v3, v9, :cond_3

    const/4 v0, 0x2

    if-eq v3, v0, :cond_3

    const/4 v0, 0x3

    if-eq v3, v0, :cond_3

    if-eq v3, v7, :cond_3

    const/4 v0, 0x6

    if-eq v3, v0, :cond_1

    if-ne v3, v13, :cond_0

    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {p0, v0, v12}, Labcd/AI;->j6(Labcd/AI$e;I)I

    move-result v0

    iget-object v3, p0, Labcd/AI;->u7:[B

    invoke-static {v3, v0}, Labcd/yE;->Hw([BI)Labcd/yE;

    move-result-object v3

    iget-object v6, p0, Labcd/AI;->u7:[B

    iget-object v7, p0, Labcd/AI;->v5:[B

    invoke-static {v6, v0, v7, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v12}, Labcd/AI;->Hw(I)V

    iget-object v0, p0, Labcd/AI;->lg:Labcd/AE;

    invoke-virtual {v0, v3}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/AI$a;

    if-nez v0, :cond_5

    new-instance v0, Labcd/AI$a;

    invoke-direct {v0, v3}, Labcd/AI$a;-><init>(Labcd/YD;)V

    iget-object v6, p0, Labcd/AI;->lg:Labcd/AE;

    invoke-virtual {v6, v0}, Labcd/AE;->j6(Labcd/AE$a;)V

    move-object v6, v0

    :goto_1
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Labcd/AI;->j6(JLabcd/YD;J)V

    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    iget-object v3, p0, Labcd/AI;->v5:[B

    add-int/lit8 v7, v8, 0x14

    invoke-virtual {p0, v0, v3, v14, v7}, Labcd/AI;->DW(Labcd/AI$e;[BII)V

    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {p0, v0, v4, v5}, Labcd/AI;->FH(Labcd/AI$e;J)V

    invoke-virtual {p0}, Labcd/AI;->tp()Labcd/AI$f;

    move-result-object v0

    iput-wide v1, v0, Labcd/AI$f;->j6:J

    invoke-virtual {v6, v0}, Labcd/AI$a;->j6(Labcd/AI$f;)V

    iget v0, p0, Labcd/AI;->U2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/AI;->U2:I

    :goto_2
    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v14

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {p0, v0}, Labcd/AI;->j6(Labcd/AI$e;)I

    move-result v0

    iget-object v3, p0, Labcd/AI;->v5:[B

    int-to-byte v6, v0

    aput-byte v6, v3, v8

    and-int/lit8 v3, v0, 0x7f

    int-to-long v6, v3

    add-int/lit8 v3, v8, 0x1

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    sub-long v10, v1, v6

    move-object v7, p0

    move-wide v8, v1

    move-wide v12, v4

    invoke-virtual/range {v7 .. v13}, Labcd/AI;->j6(JJJ)V

    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    iget-object v6, p0, Labcd/AI;->v5:[B

    invoke-virtual {p0, v0, v6, v14, v3}, Labcd/AI;->DW(Labcd/AI$e;[BII)V

    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {p0, v0, v4, v5}, Labcd/AI;->FH(Labcd/AI$e;J)V

    invoke-virtual {p0}, Labcd/AI;->tp()Labcd/AI$f;

    move-result-object v3

    iput-wide v1, v3, Labcd/AI$f;->j6:J

    iget-object v0, p0, Labcd/AI;->er:Labcd/wI;

    invoke-virtual {v0, v10, v11, v3}, Labcd/wI;->j6(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/AI$f;

    iput-object v0, v3, Labcd/AI$f;->FH:Labcd/AI$f;

    iget v0, p0, Labcd/AI;->U2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/AI;->U2:I

    goto :goto_2

    :cond_2
    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {p0, v0}, Labcd/AI;->j6(Labcd/AI$e;)I

    move-result v0

    iget-object v8, p0, Labcd/AI;->v5:[B

    int-to-byte v9, v0

    aput-byte v9, v8, v3

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    shl-long/2addr v6, v13

    and-int/lit8 v8, v0, 0x7f

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Labcd/AI;->j6(JIJ)V

    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    iget-object v6, p0, Labcd/AI;->v5:[B

    invoke-virtual {p0, v0, v6, v14, v8}, Labcd/AI;->DW(Labcd/AI$e;[BII)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Labcd/AI;->DW(JIJ)V

    goto :goto_2

    :cond_4
    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {p0, v0}, Labcd/AI;->j6(Labcd/AI$e;)I

    move-result v0

    iget-object v10, p0, Labcd/AI;->v5:[B

    int-to-byte v11, v0

    aput-byte v11, v10, v8

    and-int/lit8 v10, v0, 0x7f

    shl-int/2addr v10, v6

    int-to-long v10, v10

    add-long/2addr v4, v10

    add-int/lit8 v6, v6, 0x7

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_5
    move-object v6, v0

    goto/16 :goto_1
.end method

.method private QX()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x14

    invoke-direct {p0}, Labcd/AI;->j3()V

    iget-object v0, p0, Labcd/AI;->gW:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    sget-object v1, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {p0, v1, v4}, Labcd/AI;->j6(Labcd/AI$e;I)I

    move-result v1

    new-array v2, v4, [B

    iget-object v3, p0, Labcd/AI;->u7:[B

    invoke-static {v3, v1, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v4}, Labcd/AI;->Hw(I)V

    iget v1, p0, Labcd/AI;->we:I

    if-nez v1, :cond_3

    invoke-virtual {p0}, Labcd/AI;->gn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Labcd/AI;->gn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Labcd/AI;->j6([B)V

    return-void

    :cond_1
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->expectedEOFReceived:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/YC;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectPackfileChecksumIncorrect:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->expectedEOFReceived:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/AI;->u7:[B

    iget v3, p0, Labcd/AI;->EQ:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Labcd/YC;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private Ws()Z
    .registers 2

    iget-object v0, p0, Labcd/AI;->Mr:Labcd/DE;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private XL()V
    .registers 9

    const/4 v1, 0x0

    sget-object v0, Labcd/hE;->v5:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v0, 0x4

    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {p0, v0, v2}, Labcd/AI;->j6(Labcd/AI$e;I)I

    move-result v3

    move v0, v1

    :goto_0
    sget-object v4, Labcd/hE;->v5:[B

    array-length v5, v4

    if-lt v0, v5, :cond_2

    iget-object v0, p0, Labcd/AI;->u7:[B

    add-int/lit8 v4, v3, 0x4

    invoke-static {v0, v4}, Labcd/FK;->FH([BI)J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    const-wide/16 v6, 0x3

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Labcd/AI;->u7:[B

    add-int/lit8 v1, v3, 0x8

    invoke-static {v0, v1}, Labcd/FK;->FH([BI)J

    move-result-wide v0

    iput-wide v0, p0, Labcd/AI;->aM:J

    invoke-direct {p0, v2}, Labcd/AI;->Hw(I)V

    iget-wide v0, p0, Labcd/AI;->aM:J

    invoke-virtual {p0, v0, v1}, Labcd/AI;->j6(J)V

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->unsupportedPackVersion:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v5, p0, Labcd/AI;->u7:[B

    add-int v6, v3, v0

    aget-byte v5, v5, v6

    aget-byte v4, v4, v0

    if-ne v5, v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->notAPACKFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private aM()J
    .registers 5

    iget-wide v0, p0, Labcd/AI;->tp:J

    iget v2, p0, Labcd/AI;->EQ:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private j3()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Labcd/AI;->gW:Ljava/security/MessageDigest;

    iget-object v1, p0, Labcd/AI;->u7:[B

    iget v2, p0, Labcd/AI;->EQ:I

    invoke-virtual {v0, v1, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, p0, Labcd/AI;->u7:[B

    iget v1, p0, Labcd/AI;->EQ:I

    invoke-virtual {p0, v0, v4, v1}, Labcd/AI;->j6([BII)V

    iget v0, p0, Labcd/AI;->we:I

    if-lez v0, :cond_0

    iget-object v1, p0, Labcd/AI;->u7:[B

    iget v2, p0, Labcd/AI;->EQ:I

    invoke-static {v1, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-wide v0, p0, Labcd/AI;->tp:J

    iget v2, p0, Labcd/AI;->EQ:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Labcd/AI;->tp:J

    iput v4, p0, Labcd/AI;->EQ:I

    return-void
.end method

.method private j6(Labcd/AI$e;)I
    .registers 5

    iget v0, p0, Labcd/AI;->we:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Labcd/AI;->j6(Labcd/AI$e;I)I

    :cond_0
    iget v0, p0, Labcd/AI;->we:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/AI;->we:I

    iget-object v0, p0, Labcd/AI;->u7:[B

    iget v1, p0, Labcd/AI;->EQ:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/AI;->EQ:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private j6(Labcd/AI$e;I)I
    .registers 10

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    :goto_0
    iget v2, p0, Labcd/AI;->we:I

    if-lt v2, p2, :cond_0

    iget v0, p0, Labcd/AI;->EQ:I

    return v0

    :cond_0
    iget v0, p0, Labcd/AI;->EQ:I

    add-int v1, v0, v2

    iget-object v0, p0, Labcd/AI;->u7:[B

    array-length v0, v0

    sub-int/2addr v0, v1

    add-int/2addr v2, v0

    if-ge v2, p2, :cond_1

    invoke-static {}, Labcd/AI;->j6()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v5, :cond_4

    if-eq v0, v6, :cond_2

    :goto_1
    iget v1, p0, Labcd/AI;->we:I

    iget-object v0, p0, Labcd/AI;->u7:[B

    array-length v0, v0

    sub-int/2addr v0, v1

    :cond_1
    invoke-static {}, Labcd/AI;->j6()[I

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v5, :cond_6

    if-eq v2, v6, :cond_5

    :goto_2
    if-lez v1, :cond_7

    iget v0, p0, Labcd/AI;->we:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/AI;->we:I

    goto :goto_0

    :cond_2
    iget v0, p0, Labcd/AI;->we:I

    if-lez v0, :cond_3

    iget-object v1, p0, Labcd/AI;->u7:[B

    iget v2, p0, Labcd/AI;->EQ:I

    invoke-static {v1, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iput v4, p0, Labcd/AI;->EQ:I

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Labcd/AI;->j3()V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Labcd/AI;->u7:[B

    invoke-virtual {p0, v2, v1, v0}, Labcd/AI;->DW([BII)I

    move-result v1

    goto :goto_2

    :cond_6
    iget-object v2, p0, Labcd/AI;->gn:Ljava/io/InputStream;

    iget-object v3, p0, Labcd/AI;->u7:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/io/EOFException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packfileIsTruncated:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic j6(Labcd/AI;Labcd/AI$e;I)I
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/AI;->j6(Labcd/AI$e;I)I

    move-result v0

    return v0
.end method

.method private static j6(Labcd/AI$f;)Labcd/AI$f;
    .registers 3

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, v1, Labcd/AI$f;->FH:Labcd/AI$f;

    iput-object v0, v1, Labcd/AI$f;->FH:Labcd/AI$f;

    move-object v0, v1

    move-object v1, p0

    goto :goto_0
.end method

.method private j6(Labcd/YD;)Labcd/AI$f;
    .registers 3

    iget-object v0, p0, Labcd/AI;->lg:Labcd/AE;

    invoke-virtual {v0, p1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/AI$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/AI$a;->aM()Labcd/AI$f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j6(Labcd/AI$e;J)Ljava/io/InputStream;
    .registers 6

    iget-object v0, p0, Labcd/AI;->FH:Labcd/AI$c;

    invoke-virtual {v0, p1, p2, p3}, Labcd/AI$c;->j6(Labcd/AI$e;J)V

    iget-object v0, p0, Labcd/AI;->FH:Labcd/AI$c;

    return-object v0
.end method

.method private final j6(IJ)V
    .registers 10

    const/4 v4, 0x1

    iget-wide v0, p0, Labcd/AI;->P8:J

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    cmp-long v0, v0, p2

    if-gez v0, :cond_2

    if-eq p1, v4, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Labcd/uD;

    iget-wide v2, p0, Labcd/AI;->P8:J

    invoke-direct {v0, v2, v3}, Labcd/uD;-><init>(J)V

    throw v0

    :cond_1
    new-instance v0, Labcd/uD;

    iget-wide v2, p0, Labcd/AI;->P8:J

    invoke-direct {v0, p2, p3, v2, v3}, Labcd/uD;-><init>(JJ)V

    throw v0

    :cond_2
    return-void
.end method

.method private j6(Labcd/AI$b;ILabcd/AI$d;Labcd/LE;)V
    .registers 12

    const/4 v4, 0x1

    const/4 v6, 0x0

    :cond_0
    invoke-interface {p4, v4}, Labcd/LE;->update(I)V

    iget-object v0, p1, Labcd/AI$b;->j6:Labcd/AI$f;

    invoke-direct {p0, v0, p3}, Labcd/AI;->DW(Labcd/AI$f;Labcd/AI$d;)Labcd/AI$d;

    iget v0, p3, Labcd/AI$d;->j6:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    :cond_1
    sget-object v0, Labcd/AI$e;->DW:Labcd/AI$e;

    iget-wide v2, p3, Labcd/AI$d;->DW:J

    invoke-direct {p0, v0, v2, v3}, Labcd/AI;->DW(Labcd/AI$e;J)[B

    move-result-object v0

    invoke-static {v0}, Labcd/AH;->j6([B)J

    move-result-wide v2

    invoke-direct {p0, p2, v2, v3}, Labcd/AI;->j6(IJ)V

    iget-object v1, p1, Labcd/AI$b;->Hw:Labcd/AI$b;

    iget-object v1, v1, Labcd/AI$b;->FH:[B

    invoke-static {v1, v0}, Labcd/AH;->j6([B[B)[B

    move-result-object v0

    iput-object v0, p1, Labcd/AI$b;->FH:[B

    iget-object v0, p1, Labcd/AI$b;->j6:Labcd/AI$f;

    iget v0, v0, Labcd/AI$f;->DW:I

    invoke-virtual {p0, v0}, Labcd/AI;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    invoke-static {p2}, Labcd/hE;->j6(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    iget-object v0, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    iget-object v1, p1, Labcd/AI$b;->FH:[B

    array-length v1, v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Labcd/hE;->j6(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->update(B)V

    iget-object v0, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    iget-object v1, p1, Labcd/AI$b;->FH:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Labcd/AI;->VH:Labcd/uE;

    iget-object v1, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Labcd/uE;->Hw([BI)V

    iget-object v0, p0, Labcd/AI;->VH:Labcd/uE;

    iget-object v1, p1, Labcd/AI$b;->FH:[B

    invoke-direct {p0, v0, p2, v1}, Labcd/AI;->j6(Labcd/YD;I[B)V

    iget-object v0, p0, Labcd/AI;->VH:Labcd/uE;

    iget-object v1, p1, Labcd/AI$b;->j6:Labcd/AI$f;

    iget-object v2, p1, Labcd/AI$b;->Hw:Labcd/AI$b;

    iget-object v2, v2, Labcd/AI$b;->DW:Labcd/yE;

    invoke-virtual {p0, v0, v1, v2}, Labcd/AI;->j6(Labcd/YD;Labcd/AI$f;Labcd/yE;)Labcd/CI;

    move-result-object v0

    iget-object v1, p1, Labcd/AI$b;->j6:Labcd/AI$f;

    iget-wide v2, v1, Labcd/AI$f;->j6:J

    invoke-virtual {v0, v2, v3}, Labcd/CI;->j6(J)V

    iget-object v1, p1, Labcd/AI$b;->FH:[B

    invoke-virtual {p0, v0, p2, v1}, Labcd/AI;->j6(Labcd/CI;I[B)V

    invoke-direct {p0, v0}, Labcd/AI;->DW(Labcd/CI;)V

    iput-object v0, p1, Labcd/AI$b;->DW:Labcd/yE;

    invoke-direct {p0, v0}, Labcd/AI;->FH(Labcd/CI;)Labcd/AI$f;

    move-result-object v0

    iput-object v0, p1, Labcd/AI$b;->v5:Labcd/AI$f;

    invoke-virtual {p1}, Labcd/AI$b;->j6()Labcd/AI$b;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p3, Labcd/AI$d;->j6:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptionDetectedReReadingAt:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p1, Labcd/AI$b;->j6:Labcd/AI$f;

    iget-wide v4, v3, Labcd/AI$f;->j6:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic j6(Labcd/AI;I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/AI;->Hw(I)V

    return-void
.end method

.method private j6(Labcd/CI;Labcd/LE;)V
    .registers 11

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Labcd/AI;->FH(Labcd/CI;)Labcd/AI$f;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Labcd/AI$b;

    invoke-direct {v1}, Labcd/AI$b;-><init>()V

    iput-object v0, v1, Labcd/AI$b;->v5:Labcd/AI$f;

    new-instance v0, Labcd/AI$d;

    invoke-direct {v0}, Labcd/AI$d;-><init>()V

    invoke-direct {p0, p1, v0}, Labcd/AI;->DW(Labcd/CI;Labcd/AI$d;)Labcd/AI$d;

    iget v2, v0, Labcd/AI$d;->j6:I

    if-eq v2, v6, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    :cond_1
    sget-object v2, Labcd/AI$e;->DW:Labcd/AI$e;

    iget-wide v4, v0, Labcd/AI$d;->DW:J

    invoke-direct {p0, v2, v4, v5}, Labcd/AI;->DW(Labcd/AI$e;J)[B

    move-result-object v2

    iput-object v2, v1, Labcd/AI$b;->FH:[B

    iput-object p1, v1, Labcd/AI$b;->DW:Labcd/yE;

    invoke-virtual {p1}, Labcd/CI;->aM()I

    move-result v2

    invoke-virtual {p0, v2}, Labcd/AI;->j6(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Labcd/AI$b;->j6()Labcd/AI$b;

    move-result-object v1

    iget v2, v0, Labcd/AI$d;->j6:I

    invoke-direct {p0, v1, v2, v0, p2}, Labcd/AI;->j6(Labcd/AI$b;ILabcd/AI$d;Labcd/LE;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    iget v0, v0, Labcd/AI$d;->j6:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptionDetectedReReadingAt:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/CI;->getOffset()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(Labcd/YD;I[B)V
    .registers 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Labcd/AI;->J0:Labcd/wE;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p2, p3}, Labcd/wE;->j6(I[B)V
    :try_end_0
    .catch Labcd/YC; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {p0}, Labcd/AI;->u7()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Labcd/AI;->BT:Labcd/IE;

    invoke-virtual {v0, p1, p2}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;

    move-result-object v0

    array-length v1, p3

    invoke-virtual {v0, v1}, Labcd/FE;->DW(I)[B

    move-result-object v0

    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_1
    .catch Labcd/fD; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->invalidObject:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Labcd/hE;->DW(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->collisionOn:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Labcd/fD; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic j6(Labcd/AI;)[B
    .registers 2

    iget-object v0, p0, Labcd/AI;->u7:[B

    return-object v0
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/AI;->j6:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/AI$e;->values()[Labcd/AI$e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/AI$e;->DW:Labcd/AI$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Labcd/AI;->j6:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private we()V
    .registers 16

    const/4 v14, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Labcd/AI;->DW()[B

    move-result-object v3

    array-length v0, v3

    new-array v6, v0, [B

    new-instance v7, Labcd/AI$d;

    invoke-direct {v7}, Labcd/AI$d;-><init>()V

    iget-object v0, p0, Labcd/AI;->yS:Labcd/lK;

    invoke-virtual {v0}, Labcd/lK;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/CI;

    invoke-direct {p0, v0, v7}, Labcd/AI;->DW(Labcd/CI;Labcd/AI$d;)Labcd/AI$d;

    iget v1, v7, Labcd/AI$d;->j6:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_5

    iget-object v4, p0, Labcd/AI;->BT:Labcd/IE;

    invoke-virtual {v4, v0, v1}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/FE;->v5()Labcd/JE;

    move-result-object v9

    :try_start_0
    iget-wide v4, v7, Labcd/AI$d;->DW:J

    invoke-virtual {v9}, Labcd/JE;->j6()J

    move-result-wide v10

    cmp-long v1, v10, v4

    if-nez v1, :cond_4

    sget-object v1, Labcd/AI$e;->DW:Labcd/AI$e;

    invoke-direct {p0, v1, v4, v5}, Labcd/AI;->j6(Labcd/AI$e;J)Ljava/io/InputStream;

    move-result-object v10

    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v1, v12, v4

    if-ltz v1, :cond_1

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :cond_1
    :try_start_1
    array-length v1, v3

    int-to-long v12, v1

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v11, v12

    const/4 v1, 0x0

    invoke-static {v9, v6, v1, v11}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    const/4 v1, 0x0

    invoke-static {v10, v3, v1, v11}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    :goto_2
    if-lt v1, v11, :cond_2

    int-to-long v12, v11

    sub-long/2addr v4, v12

    goto :goto_1

    :cond_2
    aget-byte v12, v6, v1

    aget-byte v13, v3, v1

    if-ne v12, v13, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->collisionOn:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_4
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->collisionOn:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    new-array v3, v14, [Ljava/lang/Object;

    iget v4, v7, Labcd/AI$d;->j6:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract DW([BII)I
.end method

.method public DW(I)Labcd/CI;
    .registers 3

    iget-object v0, p0, Labcd/AI;->j3:[Labcd/CI;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public DW(J)V
    .registers 4

    iput-wide p1, p0, Labcd/AI;->P8:J

    return-void
.end method

.method protected abstract DW(Labcd/AI$e;[BII)V
.end method

.method public DW(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/AI;->XL:Z

    return-void
.end method

.method protected DW()[B
    .registers 2

    iget-object v0, p0, Labcd/AI;->Hw:[B

    return-object v0
.end method

.method protected abstract EQ()V
.end method

.method public FH()Labcd/DE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LDE",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/AI;->rN:Labcd/DE;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/DE;

    invoke-direct {v0}, Labcd/DE;-><init>()V

    goto :goto_0
.end method

.method public FH(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/AI;->QX:Z

    return-void
.end method

.method public Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/AI;->vy:Ljava/lang/String;

    return-object v0
.end method

.method public Hw(Z)V
    .registers 3

    if-eqz p1, :cond_0

    new-instance v0, Labcd/DE;

    invoke-direct {v0}, Labcd/DE;-><init>()V

    iput-object v0, p0, Labcd/AI;->Mr:Labcd/DE;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/AI;->Mr:Labcd/DE;

    goto :goto_0
.end method

.method public VH()Z
    .registers 2

    iget-boolean v0, p0, Labcd/AI;->J8:Z

    return v0
.end method

.method public Zo()I
    .registers 2

    iget v0, p0, Labcd/AI;->a8:I

    return v0
.end method

.method public gn()Z
    .registers 2

    iget-boolean v0, p0, Labcd/AI;->XL:Z

    return v0
.end method

.method protected j6(Labcd/AI$d;)Labcd/AI$d;
    .registers 14

    const/4 v4, 0x4

    const/16 v11, 0x14

    const/4 v6, 0x1

    const/4 v10, 0x0

    sget-object v0, Labcd/AI$e;->DW:Labcd/AI$e;

    invoke-direct {p0, v0}, Labcd/AI;->j6(Labcd/AI$e;)I

    move-result v2

    iget-object v0, p0, Labcd/AI;->v5:[B

    int-to-byte v1, v2

    aput-byte v1, v0, v10

    shr-int/lit8 v0, v2, 0x4

    and-int/lit8 v0, v0, 0x7

    iput v0, p1, Labcd/AI$d;->j6:I

    and-int/lit8 v0, v2, 0xf

    int-to-long v0, v0

    move v3, v4

    move v5, v6

    :goto_0
    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_4

    iput-wide v0, p1, Labcd/AI$d;->DW:J

    iget v0, p1, Labcd/AI$d;->j6:I

    if-eq v0, v6, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    if-eq v0, v4, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Labcd/AI;->u7:[B

    sget-object v1, Labcd/AI$e;->DW:Labcd/AI$e;

    invoke-direct {p0, v1, v11}, Labcd/AI;->j6(Labcd/AI$e;I)I

    move-result v1

    iget-object v2, p0, Labcd/AI;->v5:[B

    invoke-static {v0, v1, v2, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v11}, Labcd/AI;->Hw(I)V

    sget-object v0, Labcd/AI$e;->DW:Labcd/AI$e;

    iget-object v1, p0, Labcd/AI;->v5:[B

    add-int/lit8 v2, v5, 0x14

    invoke-virtual {p0, v0, v1, v10, v2}, Labcd/AI;->DW(Labcd/AI$e;[BII)V

    :goto_1
    return-object p1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p1, Labcd/AI$d;->j6:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Labcd/AI$e;->DW:Labcd/AI$e;

    invoke-direct {p0, v0}, Labcd/AI;->j6(Labcd/AI$e;)I

    move-result v0

    iget-object v2, p0, Labcd/AI;->v5:[B

    add-int/lit8 v1, v5, 0x1

    int-to-byte v3, v0

    aput-byte v3, v2, v5

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    sget-object v0, Labcd/AI$e;->DW:Labcd/AI$e;

    iget-object v2, p0, Labcd/AI;->v5:[B

    invoke-virtual {p0, v0, v2, v10, v1}, Labcd/AI;->DW(Labcd/AI$e;[BII)V

    goto :goto_1

    :cond_2
    sget-object v0, Labcd/AI$e;->DW:Labcd/AI$e;

    invoke-direct {p0, v0}, Labcd/AI;->j6(Labcd/AI$e;)I

    move-result v0

    iget-object v2, p0, Labcd/AI;->v5:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    sget-object v0, Labcd/AI$e;->DW:Labcd/AI$e;

    iget-object v1, p0, Labcd/AI;->v5:[B

    invoke-virtual {p0, v0, v1, v10, v5}, Labcd/AI;->DW(Labcd/AI$e;[BII)V

    goto :goto_1

    :cond_4
    sget-object v2, Labcd/AI$e;->DW:Labcd/AI$e;

    invoke-direct {p0, v2}, Labcd/AI;->j6(Labcd/AI$e;)I

    move-result v2

    iget-object v7, p0, Labcd/AI;->v5:[B

    int-to-byte v8, v2

    aput-byte v8, v7, v5

    and-int/lit8 v7, v2, 0x7f

    shl-int/2addr v7, v3

    int-to-long v8, v7

    add-long/2addr v0, v8

    add-int/lit8 v3, v3, 0x7

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method protected abstract j6(Labcd/AI$f;Labcd/AI$d;)Labcd/AI$d;
.end method

.method protected abstract j6(Labcd/CI;Labcd/AI$d;)Labcd/AI$d;
.end method

.method protected j6(Labcd/YD;Labcd/AI$f;Labcd/yE;)Labcd/CI;
    .registers 6

    new-instance v0, Labcd/CI;

    invoke-direct {v0, p1}, Labcd/CI;-><init>(Labcd/YD;)V

    if-eqz p2, :cond_0

    iget v1, p2, Labcd/AI$f;->DW:I

    invoke-virtual {v0, v1}, Labcd/CI;->DW(I)V

    :cond_0
    return-object v0
.end method

.method public final j6(Labcd/LE;)Labcd/kH;
    .registers 3

    invoke-virtual {p0, p1, p1}, Labcd/AI;->j6(Labcd/LE;Labcd/LE;)Labcd/kH;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/LE;Labcd/LE;)Labcd/kH;
    .registers 14

    const/4 v2, 0x0

    const/4 v10, 0x0

    if-nez p1, :cond_0

    sget-object p1, Labcd/vE;->j6:Labcd/vE;

    :cond_0
    if-nez p2, :cond_c

    sget-object v3, Labcd/vE;->j6:Labcd/vE;

    :goto_0
    if-ne p1, v3, :cond_1

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Labcd/LE;->start(I)V

    :cond_1
    :try_start_0
    invoke-direct {p0}, Labcd/AI;->XL()V

    iget-wide v4, p0, Labcd/AI;->aM:J

    long-to-int v4, v4

    new-array v4, v4, [Labcd/CI;

    iput-object v4, p0, Labcd/AI;->j3:[Labcd/CI;

    new-instance v4, Labcd/AE;

    invoke-direct {v4}, Labcd/AE;-><init>()V

    iput-object v4, p0, Labcd/AI;->lg:Labcd/AE;

    new-instance v4, Labcd/wI;

    invoke-direct {v4}, Labcd/wI;-><init>()V

    iput-object v4, p0, Labcd/AI;->er:Labcd/wI;

    new-instance v4, Labcd/lK;

    invoke-direct {v4}, Labcd/lK;-><init>()V

    iput-object v4, p0, Labcd/AI;->yS:Labcd/lK;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->receivingObjects:Ljava/lang/String;

    iget-wide v6, p0, Labcd/AI;->aM:J

    long-to-int v5, v6

    invoke-interface {p1, v4, v5}, Labcd/LE;->j6(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    int-to-long v4, v2

    :try_start_1
    iget-wide v6, p0, Labcd/AI;->aM:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_a

    invoke-direct {p0}, Labcd/AI;->QX()V

    invoke-direct {p0}, Labcd/AI;->J0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-interface {p1}, Labcd/LE;->j6()V

    iget-object v2, p0, Labcd/AI;->yS:Labcd/lK;

    invoke-virtual {v2}, Ljava/util/AbstractList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Labcd/AI;->we()V

    :cond_2
    iget v2, p0, Labcd/AI;->U2:I

    if-lez v2, :cond_5

    instance-of v2, v3, Labcd/eE;

    if-eqz v2, :cond_3

    move-object v0, v3

    check-cast v0, Labcd/eE;

    move-object v2, v0

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v6}, Labcd/eE;->j6(JLjava/util/concurrent/TimeUnit;)V

    :cond_3
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->resolvingDeltas:Ljava/lang/String;

    iget v4, p0, Labcd/AI;->U2:I

    invoke-interface {v3, v2, v4}, Labcd/LE;->j6(Ljava/lang/String;I)V

    invoke-direct {p0, v3}, Labcd/AI;->DW(Labcd/LE;)V

    iget v2, p0, Labcd/AI;->a8:I

    int-to-long v4, v2

    iget-wide v6, p0, Labcd/AI;->aM:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_4

    invoke-virtual {p0}, Labcd/AI;->VH()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0, v3}, Labcd/AI;->FH(Labcd/LE;)V

    iget v2, p0, Labcd/AI;->a8:I

    int-to-long v4, v2

    iget-wide v6, p0, Labcd/AI;->aM:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_7

    :cond_4
    invoke-interface {v3}, Labcd/LE;->j6()V

    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Labcd/AI;->gW:Ljava/security/MessageDigest;

    const/4 v2, 0x0

    iput-object v2, p0, Labcd/AI;->lg:Labcd/AE;

    const/4 v2, 0x0

    iput-object v2, p0, Labcd/AI;->er:Labcd/wI;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Labcd/AI;->BT:Labcd/IE;

    if-eqz v2, :cond_6

    iget-object v2, p0, Labcd/AI;->BT:Labcd/IE;

    invoke-virtual {v2}, Labcd/IE;->FH()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_6
    iput-object v10, p0, Labcd/AI;->BT:Labcd/IE;

    :try_start_4
    iget-object v2, p0, Labcd/AI;->FH:Labcd/AI$c;

    invoke-virtual {v2}, Labcd/AI$c;->j6()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iput-object v10, p0, Labcd/AI;->FH:Labcd/AI$c;

    return-object v10

    :cond_7
    :try_start_5
    new-instance v2, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->packHasUnresolvedDeltas:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Labcd/AI;->aM:J

    iget v8, p0, Labcd/AI;->a8:I

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_6
    iget-object v3, p0, Labcd/AI;->BT:Labcd/IE;

    if-eqz v3, :cond_8

    iget-object v3, p0, Labcd/AI;->BT:Labcd/IE;

    invoke-virtual {v3}, Labcd/IE;->FH()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :cond_8
    iput-object v10, p0, Labcd/AI;->BT:Labcd/IE;

    :try_start_7
    iget-object v3, p0, Labcd/AI;->FH:Labcd/AI$c;

    invoke-virtual {v3}, Labcd/AI$c;->j6()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    iput-object v10, p0, Labcd/AI;->FH:Labcd/AI$c;

    throw v2

    :cond_9
    :try_start_8
    new-instance v2, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->packHasUnresolvedDeltas:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Labcd/AI;->aM:J

    iget v8, p0, Labcd/AI;->a8:I

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_1
    move-exception v2

    iput-object v10, p0, Labcd/AI;->FH:Labcd/AI$c;

    throw v2

    :catchall_2
    move-exception v2

    iput-object v10, p0, Labcd/AI;->BT:Labcd/IE;

    throw v2

    :cond_a
    :try_start_9
    invoke-direct {p0}, Labcd/AI;->J8()V

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Labcd/LE;->update(I)V

    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_b

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_b
    new-instance v2, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->downloadCancelled:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v2

    :try_start_a
    invoke-interface {p1}, Labcd/LE;->j6()V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_4
    move-exception v2

    iput-object v10, p0, Labcd/AI;->FH:Labcd/AI$c;

    throw v2

    :catchall_5
    move-exception v2

    iput-object v10, p0, Labcd/AI;->BT:Labcd/IE;

    throw v2

    :cond_c
    move-object v3, p2

    goto/16 :goto_0
.end method

.method public j6(Ljava/util/Comparator;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Labcd/CI;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Labcd/CI;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Labcd/AI;->j3:[Labcd/CI;

    iget v1, p0, Labcd/AI;->a8:I

    invoke-static {v0, v3, v1, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    iget-object v0, p0, Labcd/AI;->j3:[Labcd/CI;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Labcd/AI;->a8:I

    iget-object v2, p0, Labcd/AI;->j3:[Labcd/CI;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected abstract j6(J)V
.end method

.method protected abstract j6(JIJ)V
.end method

.method protected abstract j6(JJJ)V
.end method

.method protected abstract j6(JLabcd/YD;J)V
.end method

.method protected abstract j6(Labcd/AI$e;[BII)V
.end method

.method protected abstract j6(Labcd/CI;)V
.end method

.method protected abstract j6(Labcd/CI;I[B)V
.end method

.method public j6(Labcd/wE;)V
    .registers 2

    iput-object p1, p0, Labcd/AI;->J0:Labcd/wE;

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Labcd/AI;->vy:Ljava/lang/String;

    return-void
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/AI;->J8:Z

    return-void
.end method

.method protected abstract j6([B)V
.end method

.method protected abstract j6([BII)V
.end method

.method protected abstract j6(I)Z
.end method

.method protected abstract j6(I[BLabcd/CI;)Z
.end method

.method protected abstract tp()Labcd/AI$f;
.end method

.method public u7()Z
    .registers 2

    iget-boolean v0, p0, Labcd/AI;->Ws:Z

    return v0
.end method

.method public v5()Labcd/DE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LDE",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/AI;->Mr:Labcd/DE;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/DE;

    invoke-direct {v0}, Labcd/DE;-><init>()V

    goto :goto_0
.end method

.method public v5(Z)V
    .registers 3

    if-eqz p1, :cond_0

    new-instance v0, Labcd/wE;

    invoke-direct {v0}, Labcd/wE;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Labcd/AI;->j6(Labcd/wE;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
