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
            "LDE<",
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
            "LwI<",
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
            "LAE<",
            "Labcd/AI$a;",
            ">;"
        }
    .end annotation
.end field

.field private rN:Labcd/DE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LDE<",
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
            "LlK<",
            "Labcd/CI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Labcd/xE;Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Labcd/xE;->FH()Labcd/xE;

    move-result-object p1

    iput-object p1, p0, Labcd/AI;->DW:Labcd/xE;

    iput-object p2, p0, Labcd/AI;->gn:Ljava/io/InputStream;

    new-instance p2, Labcd/AI$c;

    invoke-direct {p2, p0}, Labcd/AI$c;-><init>(Labcd/AI;)V

    iput-object p2, p0, Labcd/AI;->FH:Labcd/AI$c;

    invoke-virtual {p1}, Labcd/xE;->v5()Labcd/IE;

    move-result-object p1

    iput-object p1, p0, Labcd/AI;->BT:Labcd/IE;

    const/16 p1, 0x2000

    new-array p2, p1, [B

    iput-object p2, p0, Labcd/AI;->u7:[B

    new-array p1, p1, [B

    iput-object p1, p0, Labcd/AI;->Hw:[B

    const/16 p1, 0x40

    new-array p1, p1, [B

    iput-object p1, p0, Labcd/AI;->v5:[B

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    new-instance p1, Labcd/uE;

    invoke-direct {p1}, Labcd/uE;-><init>()V

    iput-object p1, p0, Labcd/AI;->VH:Labcd/uE;

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Labcd/AI;->gW:Ljava/security/MessageDigest;

    const/4 p1, 0x1

    iput-boolean p1, p0, Labcd/AI;->Ws:Z

    return-void
.end method

.method static synthetic DW(Labcd/AI;)I
    .registers 1

    iget p0, p0, Labcd/AI;->we:I

    return p0
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

    iget-object v0, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    invoke-static {p3}, Labcd/hE;->j6(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    iget-object v0, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    invoke-static {p4, p5}, Labcd/hE;->j6(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    const/4 v0, 0x3

    const/4 v2, 0x0

    if-ne p3, v0, :cond_64

    invoke-virtual {p0}, Labcd/AI;->DW()[B

    move-result-object v0

    sget-object v3, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {p0, v3, p4, p5}, Labcd/AI;->j6(Labcd/AI$e;J)Ljava/io/InputStream;

    move-result-object v3

    const-wide/16 v4, 0x0

    :goto_2f
    cmp-long v6, v4, p4

    if-ltz v6, :cond_34

    goto :goto_3a

    :cond_34
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_5c

    :goto_3a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    iget-object p4, p0, Labcd/AI;->VH:Labcd/uE;

    iget-object p5, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    invoke-virtual {p5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p5

    invoke-virtual {p4, p5, v1}, Labcd/uE;->Hw([BI)V

    invoke-virtual {p0}, Labcd/AI;->u7()Z

    move-result p4

    if-eqz p4, :cond_5a

    iget-object p4, p0, Labcd/AI;->BT:Labcd/IE;

    iget-object p5, p0, Labcd/AI;->VH:Labcd/uE;

    invoke-virtual {p4, p5}, Labcd/IE;->DW(Labcd/YD;)Z

    move-result p4

    if-eqz p4, :cond_5a

    const/4 p4, 0x1

    const/4 v1, 0x1

    :cond_5a
    move-object p4, v2

    goto :goto_7f

    :cond_5c
    iget-object v7, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    invoke-virtual {v7, v0, v1, v6}, Ljava/security/MessageDigest;->update([BII)V

    int-to-long v6, v6

    add-long/2addr v4, v6

    goto :goto_2f

    :cond_64
    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {p0, v0, p4, p5}, Labcd/AI;->DW(Labcd/AI$e;J)[B

    move-result-object p4

    iget-object p5, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    invoke-virtual {p5, p4}, Ljava/security/MessageDigest;->update([B)V

    iget-object p5, p0, Labcd/AI;->VH:Labcd/uE;

    iget-object v0, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-virtual {p5, v0, v1}, Labcd/uE;->Hw([BI)V

    iget-object p5, p0, Labcd/AI;->VH:Labcd/uE;

    invoke-direct {p0, p5, p3, p4}, Labcd/AI;->j6(Labcd/YD;I[B)V

    :goto_7f
    iget-object p5, p0, Labcd/AI;->VH:Labcd/uE;

    invoke-virtual {p0, p5, v2, v2}, Labcd/AI;->j6(Labcd/YD;Labcd/AI$f;Labcd/yE;)Labcd/CI;

    move-result-object p5

    invoke-virtual {p5, p1, p2}, Labcd/CI;->j6(J)V

    invoke-virtual {p0, p5}, Labcd/AI;->j6(Labcd/CI;)V

    if-eqz p4, :cond_90

    invoke-virtual {p0, p5, p3, p4}, Labcd/AI;->j6(Labcd/CI;I[B)V

    :cond_90
    invoke-direct {p0, p5}, Labcd/AI;->DW(Labcd/CI;)V

    if-eqz v1, :cond_9a

    iget-object p1, p0, Labcd/AI;->yS:Labcd/lK;

    invoke-virtual {p1, p5}, Labcd/lK;->add(Ljava/lang/Object;)Z

    :cond_9a
    return-void
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

    if-eqz v0, :cond_15

    iget-object v0, p0, Labcd/AI;->Mr:Labcd/DE;

    invoke-virtual {v0, p1}, Labcd/DE;->j6(Labcd/yE;)V

    :cond_15
    return-void
.end method

.method private DW(Labcd/LE;)V
    .registers 5

    iget v0, p0, Labcd/AI;->a8:I

    const/4 v1, 0x0

    :goto_3
    if-lt v1, v0, :cond_6

    return-void

    :cond_6
    iget-object v2, p0, Labcd/AI;->j3:[Labcd/CI;

    aget-object v2, v2, v1

    invoke-direct {p0, v2, p1}, Labcd/AI;->j6(Labcd/CI;Labcd/LE;)V

    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_16

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_16
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->downloadCancelledDuringIndexing:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_23

    :goto_22
    throw p1

    :goto_23
    goto :goto_22
.end method

.method private DW(Labcd/AI$e;J)[B
    .registers 6

    long-to-int v0, p2

    new-array v1, v0, [B

    invoke-direct {p0, p1, p2, p3}, Labcd/AI;->j6(Labcd/AI$e;J)Ljava/io/InputStream;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, v1, p2, v0}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v1
.end method

.method private FH(Labcd/CI;)Labcd/AI$f;
    .registers 12

    invoke-direct {p0, p1}, Labcd/AI;->j6(Labcd/YD;)Labcd/AI$f;

    move-result-object v0

    invoke-static {v0}, Labcd/AI;->j6(Labcd/AI$f;)Labcd/AI$f;

    move-result-object v0

    iget-object v1, p0, Labcd/AI;->er:Labcd/wI;

    invoke-virtual {p1}, Labcd/CI;->getOffset()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Labcd/wI;->j6(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/AI$f;

    invoke-static {p1}, Labcd/AI;->j6(Labcd/AI$f;)Labcd/AI$f;

    move-result-object p1

    if-nez v0, :cond_1b

    return-object p1

    :cond_1b
    if-nez p1, :cond_1e

    return-object v0

    :cond_1e
    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_21
    if-nez v0, :cond_26

    if-nez p1, :cond_26

    return-object v2

    :cond_26
    if-eqz p1, :cond_36

    if-eqz v0, :cond_33

    iget-wide v4, v0, Labcd/AI$f;->j6:J

    iget-wide v6, p1, Labcd/AI$f;->j6:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_33

    goto :goto_36

    :cond_33
    iget-object v4, p1, Labcd/AI$f;->FH:Labcd/AI$f;

    goto :goto_3c

    :cond_36
    :goto_36
    iget-object v4, v0, Labcd/AI$f;->FH:Labcd/AI$f;

    move-object v9, v4

    move-object v4, p1

    move-object p1, v0

    move-object v0, v9

    :goto_3c
    if-eqz v3, :cond_41

    iput-object p1, v3, Labcd/AI$f;->FH:Labcd/AI$f;

    goto :goto_42

    :cond_41
    move-object v2, p1

    :goto_42
    iput-object v1, p1, Labcd/AI$f;->FH:Labcd/AI$f;

    move-object v3, p1

    move-object p1, v4

    goto :goto_21
.end method

.method private FH(I)V
    .registers 5

    iget-wide v0, p0, Labcd/AI;->aM:J

    long-to-int v1, v0

    add-int/2addr v1, p1

    new-array p1, v1, [Labcd/CI;

    iget-object v0, p0, Labcd/AI;->j3:[Labcd/CI;

    const/4 v1, 0x0

    iget v2, p0, Labcd/AI;->a8:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Labcd/AI;->j3:[Labcd/CI;

    return-void
.end method

.method private FH(Labcd/AI$e;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Labcd/AI;->j6(Labcd/AI$e;J)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, p2, p3}, Labcd/BK;->j6(Ljava/io/InputStream;J)V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private FH(Labcd/LE;)V
    .registers 10

    iget-object v0, p0, Labcd/AI;->lg:Labcd/AE;

    invoke-virtual {v0}, Labcd/AE;->size()I

    move-result v0

    invoke-direct {p0, v0}, Labcd/AI;->FH(I)V

    iget-boolean v0, p0, Labcd/AI;->QX:Z

    if-eqz v0, :cond_14

    new-instance v0, Labcd/DE;

    invoke-direct {v0}, Labcd/DE;-><init>()V

    iput-object v0, p0, Labcd/AI;->rN:Labcd/DE;

    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Labcd/AI;->lg:Labcd/AE;

    invoke-virtual {v1}, Labcd/AE;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_48

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0}, Labcd/AI;->EQ()V

    return-void

    :cond_35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/AI$a;

    iget-object v1, v0, Labcd/AI$a;->EQ:Labcd/AI$f;

    if-nez v1, :cond_40

    goto :goto_2b

    :cond_40
    new-instance p1, Labcd/fD;

    const-string v1, "delta base"

    invoke-direct {p1, v0, v1}, Labcd/fD;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw p1

    :cond_48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/AI$a;

    iget-object v3, v2, Labcd/AI$a;->EQ:Labcd/AI$f;

    if-nez v3, :cond_53

    goto :goto_21

    :cond_53
    iget-boolean v3, p0, Labcd/AI;->QX:Z

    if-eqz v3, :cond_5c

    iget-object v3, p0, Labcd/AI;->rN:Labcd/DE;

    invoke-virtual {v3, v2}, Labcd/DE;->j6(Labcd/yE;)V

    :cond_5c
    :try_start_5c
    iget-object v3, p0, Labcd/AI;->BT:Labcd/IE;

    invoke-virtual {v3, v2}, Labcd/IE;->FH(Labcd/YD;)Labcd/FE;

    move-result-object v3
    :try_end_62
    .catch Labcd/fD; {:try_start_5c .. :try_end_62} :catch_b3

    new-instance v4, Labcd/AI$b;

    invoke-direct {v4}, Labcd/AI$b;-><init>()V

    const v5, 0x7fffffff

    invoke-virtual {v3, v5}, Labcd/FE;->DW(I)[B

    move-result-object v5

    iput-object v5, v4, Labcd/AI$b;->FH:[B

    iput-object v2, v4, Labcd/AI$b;->DW:Labcd/yE;

    invoke-virtual {v3}, Labcd/FE;->FH()I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5, v5}, Labcd/AI;->j6(Labcd/YD;Labcd/AI$f;Labcd/yE;)Labcd/CI;

    move-result-object v2

    iget-object v5, v4, Labcd/AI$b;->FH:[B

    invoke-virtual {p0, v3, v5, v2}, Labcd/AI;->j6(I[BLabcd/CI;)Z

    move-result v5

    if-eqz v5, :cond_8d

    iget-object v5, p0, Labcd/AI;->j3:[Labcd/CI;

    iget v6, p0, Labcd/AI;->a8:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Labcd/AI;->a8:I

    aput-object v2, v5, v6

    :cond_8d
    invoke-direct {p0, v2}, Labcd/AI;->FH(Labcd/CI;)Labcd/AI$f;

    move-result-object v2

    iput-object v2, v4, Labcd/AI$b;->v5:Labcd/AI$f;

    invoke-virtual {v4}, Labcd/AI$b;->j6()Labcd/AI$b;

    move-result-object v2

    new-instance v4, Labcd/AI$d;

    invoke-direct {v4}, Labcd/AI$d;-><init>()V

    invoke-direct {p0, v2, v3, v4, p1}, Labcd/AI;->j6(Labcd/AI$b;ILabcd/AI$d;Labcd/LE;)V

    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_a7

    goto/16 :goto_21

    :cond_a7
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->downloadCancelledDuringIndexing:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_b3
    move-exception v3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21
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
    .registers 19

    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p0}, Labcd/AI;->aM()J

    move-result-wide v8

    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {v7, v0}, Labcd/AI;->j6(Labcd/AI$e;)I

    move-result v0

    iget-object v1, v7, Labcd/AI;->v5:[B

    int-to-byte v2, v0

    const/4 v10, 0x0

    aput-byte v2, v1, v10

    shr-int/lit8 v1, v0, 0x4

    const/4 v2, 0x7

    and-int/lit8 v6, v1, 0x7

    and-int/lit8 v1, v0, 0xf

    int-to-long v3, v1

    const/4 v1, 0x4

    const/4 v11, 0x1

    move-wide v12, v3

    const/4 v3, 0x4

    const/4 v14, 0x1

    :goto_1f
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_107

    invoke-direct {v7, v6, v12, v13}, Labcd/AI;->j6(IJ)V

    if-eq v6, v11, :cond_f1

    const/4 v0, 0x2

    if-eq v6, v0, :cond_f1

    const/4 v0, 0x3

    if-eq v6, v0, :cond_f1

    if-eq v6, v1, :cond_f1

    const/4 v0, 0x6

    if-eq v6, v0, :cond_98

    if-ne v6, v2, :cond_80

    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    const/16 v6, 0x14

    invoke-direct {v7, v0, v6}, Labcd/AI;->j6(Labcd/AI$e;I)I

    move-result v0

    iget-object v1, v7, Labcd/AI;->u7:[B

    invoke-static {v1, v0}, Labcd/yE;->Hw([BI)Labcd/yE;

    move-result-object v3

    iget-object v1, v7, Labcd/AI;->u7:[B

    iget-object v2, v7, Labcd/AI;->v5:[B

    invoke-static {v1, v0, v2, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v7, v6}, Labcd/AI;->Hw(I)V

    iget-object v0, v7, Labcd/AI;->lg:Labcd/AE;

    invoke-virtual {v0, v3}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/AI$a;

    if-nez v0, :cond_61

    new-instance v0, Labcd/AI$a;

    invoke-direct {v0, v3}, Labcd/AI$a;-><init>(Labcd/YD;)V

    iget-object v1, v7, Labcd/AI;->lg:Labcd/AE;

    invoke-virtual {v1, v0}, Labcd/AE;->j6(Labcd/AE$a;)V

    :cond_61
    move-object v15, v0

    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide v4, v12

    invoke-virtual/range {v0 .. v5}, Labcd/AI;->j6(JLabcd/YD;J)V

    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    iget-object v1, v7, Labcd/AI;->v5:[B

    add-int/2addr v14, v6

    invoke-virtual {v7, v0, v1, v10, v14}, Labcd/AI;->DW(Labcd/AI$e;[BII)V

    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {v7, v0, v12, v13}, Labcd/AI;->FH(Labcd/AI$e;J)V

    invoke-virtual/range {p0 .. p0}, Labcd/AI;->tp()Labcd/AI$f;

    move-result-object v0

    iput-wide v8, v0, Labcd/AI$f;->j6:J

    invoke-virtual {v15, v0}, Labcd/AI$a;->j6(Labcd/AI$f;)V

    goto :goto_d5

    :cond_80
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_98
    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {v7, v0}, Labcd/AI;->j6(Labcd/AI$e;)I

    move-result v0

    iget-object v1, v7, Labcd/AI;->v5:[B

    int-to-byte v3, v0

    aput-byte v3, v1, v14

    and-int/lit8 v1, v0, 0x7f

    int-to-long v3, v1

    add-int/2addr v14, v11

    :goto_a7
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_db

    sub-long v5, v8, v3

    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide v3, v5

    move-wide/from16 v16, v5

    move-wide v5, v12

    invoke-virtual/range {v0 .. v6}, Labcd/AI;->j6(JJJ)V

    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    iget-object v1, v7, Labcd/AI;->v5:[B

    invoke-virtual {v7, v0, v1, v10, v14}, Labcd/AI;->DW(Labcd/AI$e;[BII)V

    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {v7, v0, v12, v13}, Labcd/AI;->FH(Labcd/AI$e;J)V

    invoke-virtual/range {p0 .. p0}, Labcd/AI;->tp()Labcd/AI$f;

    move-result-object v0

    iput-wide v8, v0, Labcd/AI$f;->j6:J

    iget-object v1, v7, Labcd/AI;->er:Labcd/wI;

    move-wide/from16 v8, v16

    invoke-virtual {v1, v8, v9, v0}, Labcd/wI;->j6(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/AI$f;

    iput-object v1, v0, Labcd/AI$f;->FH:Labcd/AI$f;

    :goto_d5
    iget v0, v7, Labcd/AI;->U2:I

    add-int/2addr v0, v11

    iput v0, v7, Labcd/AI;->U2:I

    goto :goto_106

    :cond_db
    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {v7, v0}, Labcd/AI;->j6(Labcd/AI$e;)I

    move-result v0

    iget-object v1, v7, Labcd/AI;->v5:[B

    int-to-byte v5, v0

    aput-byte v5, v1, v14

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    shl-long/2addr v3, v2

    and-int/lit8 v1, v0, 0x7f

    int-to-long v5, v1

    add-long/2addr v3, v5

    add-int/lit8 v14, v14, 0x1

    goto :goto_a7

    :cond_f1
    move-object/from16 v0, p0

    move-wide v1, v8

    move v3, v6

    move-wide v4, v12

    invoke-virtual/range {v0 .. v5}, Labcd/AI;->j6(JIJ)V

    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    iget-object v1, v7, Labcd/AI;->v5:[B

    invoke-virtual {v7, v0, v1, v10, v14}, Labcd/AI;->DW(Labcd/AI$e;[BII)V

    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-direct/range {v0 .. v5}, Labcd/AI;->DW(JIJ)V

    :goto_106
    return-void

    :cond_107
    sget-object v0, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {v7, v0}, Labcd/AI;->j6(Labcd/AI$e;)I

    move-result v0

    iget-object v4, v7, Labcd/AI;->v5:[B

    int-to-byte v5, v0

    aput-byte v5, v4, v14

    and-int/lit8 v4, v0, 0x7f

    shl-int/2addr v4, v3

    int-to-long v4, v4

    add-long/2addr v12, v4

    add-int/2addr v3, v2

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1f
.end method

.method private QX()V
    .registers 7

    invoke-direct {p0}, Labcd/AI;->j3()V

    iget-object v0, p0, Labcd/AI;->gW:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    sget-object v1, Labcd/AI$e;->j6:Labcd/AI$e;

    const/16 v2, 0x14

    invoke-direct {p0, v1, v2}, Labcd/AI;->j6(Labcd/AI$e;I)I

    move-result v1

    new-array v3, v2, [B

    iget-object v4, p0, Labcd/AI;->u7:[B

    const/4 v5, 0x0

    invoke-static {v4, v1, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v2}, Labcd/AI;->Hw(I)V

    iget v1, p0, Labcd/AI;->we:I

    const/4 v2, 0x1

    const-string v4, "\\x"

    if-nez v1, :cond_6c

    invoke-virtual {p0}, Labcd/AI;->gn()Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Labcd/AI;->gn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_32

    goto :goto_56

    :cond_32
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->expectedEOFReceived:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Labcd/YC;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_56
    :goto_56
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p0, v3}, Labcd/AI;->j6([B)V

    return-void

    :cond_60
    new-instance v0, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->corruptObjectPackfileChecksumIncorrect:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->expectedEOFReceived:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Labcd/AI;->u7:[B

    iget v4, p0, Labcd/AI;->EQ:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Labcd/YC;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private Ws()Z
    .registers 2

    iget-object v0, p0, Labcd/AI;->Mr:Labcd/DE;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private XL()V
    .registers 9

    sget-object v0, Labcd/hE;->v5:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    sget-object v1, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-direct {p0, v1, v0}, Labcd/AI;->j6(Labcd/AI$e;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    sget-object v4, Labcd/hE;->v5:[B

    array-length v5, v4

    if-lt v3, v5, :cond_55

    iget-object v3, p0, Labcd/AI;->u7:[B

    add-int/lit8 v4, v1, 0x4

    invoke-static {v3, v4}, Labcd/FK;->FH([BI)J

    move-result-wide v3

    const-wide/16 v5, 0x2

    cmp-long v7, v3, v5

    if-eqz v7, :cond_42

    const-wide/16 v5, 0x3

    cmp-long v7, v3, v5

    if-nez v7, :cond_29

    goto :goto_42

    :cond_29
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unsupportedPackVersion:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v1, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    :goto_42
    iget-object v2, p0, Labcd/AI;->u7:[B

    add-int/lit8 v1, v1, 0x8

    invoke-static {v2, v1}, Labcd/FK;->FH([BI)J

    move-result-wide v1

    iput-wide v1, p0, Labcd/AI;->aM:J

    invoke-direct {p0, v0}, Labcd/AI;->Hw(I)V

    iget-wide v0, p0, Labcd/AI;->aM:J

    invoke-virtual {p0, v0, v1}, Labcd/AI;->j6(J)V

    return-void

    :cond_55
    iget-object v5, p0, Labcd/AI;->u7:[B

    add-int v6, v1, v3

    aget-byte v5, v5, v6

    aget-byte v4, v4, v3

    if-ne v5, v4, :cond_62

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_62
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->notAPACKFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6f

    :goto_6e
    throw v0

    :goto_6f
    goto :goto_6e
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
    .registers 7

    iget-object v0, p0, Labcd/AI;->gW:Ljava/security/MessageDigest;

    iget-object v1, p0, Labcd/AI;->u7:[B

    iget v2, p0, Labcd/AI;->EQ:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, p0, Labcd/AI;->u7:[B

    iget v1, p0, Labcd/AI;->EQ:I

    invoke-virtual {p0, v0, v3, v1}, Labcd/AI;->j6([BII)V

    iget v0, p0, Labcd/AI;->we:I

    if-lez v0, :cond_1c

    iget-object v1, p0, Labcd/AI;->u7:[B

    iget v2, p0, Labcd/AI;->EQ:I

    invoke-static {v1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1c
    iget-wide v0, p0, Labcd/AI;->tp:J

    iget v2, p0, Labcd/AI;->EQ:I

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Labcd/AI;->tp:J

    iput v3, p0, Labcd/AI;->EQ:I

    return-void
.end method

.method private j6(Labcd/AI$e;)I
    .registers 4

    iget v0, p0, Labcd/AI;->we:I

    const/4 v1, 0x1

    if-nez v0, :cond_8

    invoke-direct {p0, p1, v1}, Labcd/AI;->j6(Labcd/AI$e;I)I

    :cond_8
    iget p1, p0, Labcd/AI;->we:I

    sub-int/2addr p1, v1

    iput p1, p0, Labcd/AI;->we:I

    iget-object p1, p0, Labcd/AI;->u7:[B

    iget v0, p0, Labcd/AI;->EQ:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Labcd/AI;->EQ:I

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private j6(Labcd/AI$e;I)I
    .registers 9

    :goto_0
    iget v0, p0, Labcd/AI;->we:I

    if-lt v0, p2, :cond_7

    iget p1, p0, Labcd/AI;->EQ:I

    return p1

    :cond_7
    iget v1, p0, Labcd/AI;->EQ:I

    add-int/2addr v1, v0

    iget-object v2, p0, Labcd/AI;->u7:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    add-int/2addr v0, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v0, p2, :cond_3b

    invoke-static {}, Labcd/AI;->j6()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_31

    if-eq v0, v3, :cond_22

    goto :goto_34

    :cond_22
    iget v0, p0, Labcd/AI;->we:I

    const/4 v1, 0x0

    if-lez v0, :cond_2e

    iget-object v2, p0, Labcd/AI;->u7:[B

    iget v5, p0, Labcd/AI;->EQ:I

    invoke-static {v2, v5, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2e
    iput v1, p0, Labcd/AI;->EQ:I

    goto :goto_34

    :cond_31
    invoke-direct {p0}, Labcd/AI;->j3()V

    :goto_34
    iget v1, p0, Labcd/AI;->we:I

    iget-object v0, p0, Labcd/AI;->u7:[B

    array-length v0, v0

    sub-int v2, v0, v1

    :cond_3b
    invoke-static {}, Labcd/AI;->j6()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v0, v0, v5

    if-eq v0, v4, :cond_51

    if-eq v0, v3, :cond_4a

    goto :goto_59

    :cond_4a
    iget-object v0, p0, Labcd/AI;->u7:[B

    invoke-virtual {p0, v0, v1, v2}, Labcd/AI;->DW([BII)I

    move-result v1

    goto :goto_59

    :cond_51
    iget-object v0, p0, Labcd/AI;->gn:Ljava/io/InputStream;

    iget-object v3, p0, Labcd/AI;->u7:[B

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    :goto_59
    if-lez v1, :cond_61

    iget v0, p0, Labcd/AI;->we:I

    add-int/2addr v0, v1

    iput v0, p0, Labcd/AI;->we:I

    goto :goto_0

    :cond_61
    new-instance p1, Ljava/io/EOFException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->packfileIsTruncated:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    goto :goto_6e

    :goto_6d
    throw p1

    :goto_6e
    goto :goto_6d
.end method

.method static synthetic j6(Labcd/AI;Labcd/AI$e;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/AI;->j6(Labcd/AI$e;I)I

    move-result p0

    return p0
.end method

.method private static j6(Labcd/AI$f;)Labcd/AI$f;
    .registers 3

    const/4 v0, 0x0

    :goto_1
    if-nez p0, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Labcd/AI$f;->FH:Labcd/AI$f;

    iput-object v0, p0, Labcd/AI$f;->FH:Labcd/AI$f;

    move-object v0, p0

    move-object p0, v1

    goto :goto_1
.end method

.method private j6(Labcd/YD;)Labcd/AI$f;
    .registers 3

    iget-object v0, p0, Labcd/AI;->lg:Labcd/AE;

    invoke-virtual {v0, p1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object p1

    check-cast p1, Labcd/AI$a;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Labcd/AI$a;->aM()Labcd/AI$f;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return-object p1
.end method

.method private j6(Labcd/AI$e;J)Ljava/io/InputStream;
    .registers 5

    iget-object v0, p0, Labcd/AI;->FH:Labcd/AI$c;

    invoke-virtual {v0, p1, p2, p3}, Labcd/AI$c;->j6(Labcd/AI$e;J)V

    iget-object p1, p0, Labcd/AI;->FH:Labcd/AI$c;

    return-object p1
.end method

.method private final j6(IJ)V
    .registers 9

    iget-wide v0, p0, Labcd/AI;->P8:J

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-gez v4, :cond_47

    cmp-long v2, v0, p2

    if-gez v2, :cond_47

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3f

    const/4 v1, 0x4

    if-eq p1, v1, :cond_3f

    const/4 p2, 0x6

    if-eq p1, p2, :cond_37

    const/4 p2, 0x7

    if-eq p1, p2, :cond_37

    new-instance p2, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p3

    iget-object p3, p3, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p3, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_37
    new-instance p1, Labcd/uD;

    iget-wide p2, p0, Labcd/AI;->P8:J

    invoke-direct {p1, p2, p3}, Labcd/uD;-><init>(J)V

    throw p1

    :cond_3f
    new-instance p1, Labcd/uD;

    iget-wide v0, p0, Labcd/AI;->P8:J

    invoke-direct {p1, p2, p3, v0, v1}, Labcd/uD;-><init>(JJ)V

    throw p1

    :cond_47
    return-void
.end method

.method private j6(Labcd/AI$b;ILabcd/AI$d;Labcd/LE;)V
    .registers 11

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p4, v0}, Labcd/LE;->update(I)V

    iget-object v1, p1, Labcd/AI$b;->j6:Labcd/AI$f;

    invoke-direct {p0, v1, p3}, Labcd/AI;->DW(Labcd/AI$f;Labcd/AI$d;)Labcd/AI$d;

    iget v1, p3, Labcd/AI$d;->j6:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2d

    const/4 v2, 0x7

    if-ne v1, v2, :cond_13

    goto :goto_2d

    :cond_13
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    new-array p4, v0, [Ljava/lang/Object;

    iget p3, p3, Labcd/AI$d;->j6:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p4, v3

    invoke-static {p2, p4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    :goto_2d
    sget-object v1, Labcd/AI$e;->DW:Labcd/AI$e;

    iget-wide v4, p3, Labcd/AI$d;->DW:J

    invoke-direct {p0, v1, v4, v5}, Labcd/AI;->DW(Labcd/AI$e;J)[B

    move-result-object v1

    invoke-static {v1}, Labcd/AH;->j6([B)J

    move-result-wide v4

    invoke-direct {p0, p2, v4, v5}, Labcd/AI;->j6(IJ)V

    iget-object v2, p1, Labcd/AI$b;->Hw:Labcd/AI$b;

    iget-object v2, v2, Labcd/AI$b;->FH:[B

    invoke-static {v2, v1}, Labcd/AH;->j6([B[B)[B

    move-result-object v1

    iput-object v1, p1, Labcd/AI$b;->FH:[B

    iget-object v1, p1, Labcd/AI$b;->j6:Labcd/AI$f;

    iget v1, v1, Labcd/AI$f;->DW:I

    invoke-virtual {p0, v1}, Labcd/AI;->j6(I)Z

    move-result v1

    if-eqz v1, :cond_b5

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

    int-to-long v1, v1

    invoke-static {v1, v2}, Labcd/hE;->j6(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update(B)V

    iget-object v0, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    iget-object v1, p1, Labcd/AI$b;->FH:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Labcd/AI;->VH:Labcd/uE;

    iget-object v1, p0, Labcd/AI;->Zo:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Labcd/uE;->Hw([BI)V

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

    iget-wide v1, v1, Labcd/AI$f;->j6:J

    invoke-virtual {v0, v1, v2}, Labcd/CI;->j6(J)V

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

    :cond_b5
    new-instance p2, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p3

    iget-object p3, p3, Lorg/eclipse/jgit/JGitText;->corruptionDetectedReReadingAt:Ljava/lang/String;

    new-array p4, v0, [Ljava/lang/Object;

    iget-object p1, p1, Labcd/AI$b;->j6:Labcd/AI$f;

    iget-wide v0, p1, Labcd/AI$f;->j6:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p4, v3

    invoke-static {p3, p4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_d2

    :goto_d1
    throw p2

    :goto_d2
    goto :goto_d1
.end method

.method static synthetic j6(Labcd/AI;I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/AI;->Hw(I)V

    return-void
.end method

.method private j6(Labcd/CI;Labcd/LE;)V
    .registers 10

    invoke-direct {p0, p1}, Labcd/AI;->FH(Labcd/CI;)Labcd/AI$f;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v1, Labcd/AI$b;

    invoke-direct {v1}, Labcd/AI$b;-><init>()V

    iput-object v0, v1, Labcd/AI$b;->v5:Labcd/AI$f;

    new-instance v0, Labcd/AI$d;

    invoke-direct {v0}, Labcd/AI$d;-><init>()V

    invoke-direct {p0, p1, v0}, Labcd/AI;->DW(Labcd/CI;Labcd/AI$d;)Labcd/AI$d;

    iget v2, v0, Labcd/AI$d;->j6:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_40

    const/4 v5, 0x2

    if-eq v2, v5, :cond_40

    const/4 v5, 0x3

    if-eq v2, v5, :cond_40

    const/4 v5, 0x4

    if-ne v2, v5, :cond_26

    goto :goto_40

    :cond_26
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    iget v0, v0, Labcd/AI$d;->j6:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {p2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    :goto_40
    sget-object v2, Labcd/AI$e;->DW:Labcd/AI$e;

    iget-wide v5, v0, Labcd/AI$d;->DW:J

    invoke-direct {p0, v2, v5, v6}, Labcd/AI;->DW(Labcd/AI$e;J)[B

    move-result-object v2

    iput-object v2, v1, Labcd/AI$b;->FH:[B

    iput-object p1, v1, Labcd/AI$b;->DW:Labcd/yE;

    invoke-virtual {p1}, Labcd/CI;->aM()I

    move-result v2

    invoke-virtual {p0, v2}, Labcd/AI;->j6(I)Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual {v1}, Labcd/AI$b;->j6()Labcd/AI$b;

    move-result-object p1

    iget v1, v0, Labcd/AI$d;->j6:I

    invoke-direct {p0, p1, v1, v0, p2}, Labcd/AI;->j6(Labcd/AI$b;ILabcd/AI$d;Labcd/LE;)V

    return-void

    :cond_60
    new-instance p2, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->corruptionDetectedReReadingAt:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/CI;->getOffset()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private j6(Labcd/YD;I[B)V
    .registers 9

    iget-object v0, p0, Labcd/AI;->J0:Labcd/wE;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_31

    :try_start_6
    invoke-virtual {v0, p2, p3}, Labcd/wE;->j6(I[B)V
    :try_end_9
    .catch Labcd/YC; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_31

    :catch_a
    move-exception p3

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->invalidObject:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Labcd/hE;->DW(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v2

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    const/4 p1, 0x2

    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, p1

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    :goto_31
    invoke-virtual {p0}, Labcd/AI;->u7()Z

    move-result v0

    if-eqz v0, :cond_62

    :try_start_37
    iget-object v0, p0, Labcd/AI;->BT:Labcd/IE;

    invoke-virtual {v0, p1, p2}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;

    move-result-object p2

    array-length v0, p3

    invoke-virtual {p2, v0}, Labcd/FE;->DW(I)[B

    move-result-object p2

    invoke-static {p3, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_49

    goto :goto_62

    :cond_49
    new-instance p2, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p3

    iget-object p3, p3, Lorg/eclipse/jgit/JGitText;->collisionOn:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {p3, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_61
    .catch Labcd/fD; {:try_start_37 .. :try_end_61} :catch_61

    :catch_61
    move-exception p1

    :cond_62
    :goto_62
    return-void
.end method

.method static synthetic j6(Labcd/AI;)[B
    .registers 1

    iget-object p0, p0, Labcd/AI;->u7:[B

    return-object p0
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/AI;->j6:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/AI$e;->values()[Labcd/AI$e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/AI$e;->DW:Labcd/AI$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/AI$e;->j6:Labcd/AI$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    sput-object v0, Labcd/AI;->j6:[I

    return-object v0
.end method

.method private we()V
    .registers 16

    invoke-virtual {p0}, Labcd/AI;->DW()[B

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [B

    new-instance v2, Labcd/AI$d;

    invoke-direct {v2}, Labcd/AI$d;-><init>()V

    iget-object v3, p0, Labcd/AI;->yS:Labcd/lK;

    invoke-virtual {v3}, Labcd/lK;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_19

    return-void

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/CI;

    invoke-direct {p0, v4, v2}, Labcd/AI;->DW(Labcd/CI;Labcd/AI$d;)Labcd/AI$d;

    iget v5, v2, Labcd/AI$d;->j6:I

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_a1

    iget-object v6, p0, Labcd/AI;->BT:Labcd/IE;

    invoke-virtual {v6, v4, v5}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;

    move-result-object v5

    invoke-virtual {v5}, Labcd/FE;->v5()Labcd/JE;

    move-result-object v5

    :try_start_33
    iget-wide v9, v2, Labcd/AI$d;->DW:J

    invoke-virtual {v5}, Labcd/JE;->j6()J

    move-result-wide v11

    cmp-long v6, v11, v9

    if-nez v6, :cond_84

    sget-object v6, Labcd/AI$e;->DW:Labcd/AI$e;

    invoke-direct {p0, v6, v9, v10}, Labcd/AI;->j6(Labcd/AI$e;J)Ljava/io/InputStream;

    move-result-object v6

    :goto_43
    const-wide/16 v11, 0x0

    cmp-long v13, v11, v9

    if-ltz v13, :cond_50

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catchall {:try_start_33 .. :try_end_4c} :catchall_9c

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_12

    :cond_50
    :try_start_50
    array-length v11, v0

    int-to-long v11, v11

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v12, v11

    invoke-static {v5, v1, v8, v12}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-static {v6, v0, v8, v12}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_9c

    const/4 v11, 0x0

    :goto_5e
    if-lt v11, v12, :cond_63

    int-to-long v11, v12

    sub-long/2addr v9, v11

    goto :goto_43

    :cond_63
    aget-byte v13, v1, v11

    aget-byte v14, v0, v11

    if-ne v13, v14, :cond_6c

    add-int/lit8 v11, v11, 0x1

    goto :goto_5e

    :cond_6c
    :try_start_6c
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->collisionOn:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_84
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->collisionOn:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9c
    .catchall {:try_start_6c .. :try_end_9c} :catchall_9c

    :catchall_9c
    move-exception v0

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_a1
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    iget v2, v2, Labcd/AI$d;->j6:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v8

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_bc

    :goto_bb
    throw v0

    :goto_bc
    goto :goto_bb
.end method


# virtual methods
.method protected abstract DW([BII)I
.end method

.method public DW(I)Labcd/CI;
    .registers 3

    iget-object v0, p0, Labcd/AI;->j3:[Labcd/CI;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public DW(J)V
    .registers 3

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
            "LDE<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/AI;->rN:Labcd/DE;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Labcd/DE;

    invoke-direct {v0}, Labcd/DE;-><init>()V

    return-object v0
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
    .registers 2

    if-eqz p1, :cond_8

    new-instance p1, Labcd/DE;

    invoke-direct {p1}, Labcd/DE;-><init>()V

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    iput-object p1, p0, Labcd/AI;->Mr:Labcd/DE;

    return-void
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
    .registers 13

    sget-object v0, Labcd/AI$e;->DW:Labcd/AI$e;

    invoke-direct {p0, v0}, Labcd/AI;->j6(Labcd/AI$e;)I

    move-result v0

    iget-object v1, p0, Labcd/AI;->v5:[B

    int-to-byte v2, v0

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    shr-int/lit8 v1, v0, 0x4

    const/4 v2, 0x7

    and-int/2addr v1, v2

    iput v1, p1, Labcd/AI$d;->j6:I

    and-int/lit8 v1, v0, 0xf

    int-to-long v4, v1

    const/4 v1, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x4

    :goto_19
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_94

    iput-wide v4, p1, Labcd/AI$d;->DW:J

    iget v0, p1, Labcd/AI$d;->j6:I

    if-eq v0, v6, :cond_8c

    const/4 v4, 0x2

    if-eq v0, v4, :cond_8c

    const/4 v4, 0x3

    if-eq v0, v4, :cond_8c

    if-eq v0, v1, :cond_8c

    const/4 v1, 0x6

    if-eq v0, v1, :cond_65

    if-ne v0, v2, :cond_4b

    iget-object v0, p0, Labcd/AI;->u7:[B

    sget-object v1, Labcd/AI$e;->DW:Labcd/AI$e;

    const/16 v2, 0x14

    invoke-direct {p0, v1, v2}, Labcd/AI;->j6(Labcd/AI$e;I)I

    move-result v1

    iget-object v4, p0, Labcd/AI;->v5:[B

    invoke-static {v0, v1, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v2}, Labcd/AI;->Hw(I)V

    sget-object v0, Labcd/AI$e;->DW:Labcd/AI$e;

    iget-object v1, p0, Labcd/AI;->v5:[B

    add-int/2addr v7, v2

    invoke-virtual {p0, v0, v1, v3, v7}, Labcd/AI;->DW(Labcd/AI$e;[BII)V

    goto :goto_93

    :cond_4b
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    iget p1, p1, Labcd/AI$d;->j6:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    sget-object v0, Labcd/AI$e;->DW:Labcd/AI$e;

    invoke-direct {p0, v0}, Labcd/AI;->j6(Labcd/AI$e;)I

    move-result v0

    iget-object v1, p0, Labcd/AI;->v5:[B

    add-int/lit8 v2, v7, 0x1

    int-to-byte v4, v0

    aput-byte v4, v1, v7

    :goto_72
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_7e

    sget-object v0, Labcd/AI$e;->DW:Labcd/AI$e;

    iget-object v1, p0, Labcd/AI;->v5:[B

    invoke-virtual {p0, v0, v1, v3, v2}, Labcd/AI;->DW(Labcd/AI$e;[BII)V

    goto :goto_93

    :cond_7e
    sget-object v0, Labcd/AI$e;->DW:Labcd/AI$e;

    invoke-direct {p0, v0}, Labcd/AI;->j6(Labcd/AI$e;)I

    move-result v0

    iget-object v1, p0, Labcd/AI;->v5:[B

    int-to-byte v4, v0

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    :cond_8c
    sget-object v0, Labcd/AI$e;->DW:Labcd/AI$e;

    iget-object v1, p0, Labcd/AI;->v5:[B

    invoke-virtual {p0, v0, v1, v3, v7}, Labcd/AI;->DW(Labcd/AI$e;[BII)V

    :goto_93
    return-object p1

    :cond_94
    sget-object v0, Labcd/AI$e;->DW:Labcd/AI$e;

    invoke-direct {p0, v0}, Labcd/AI;->j6(Labcd/AI$e;)I

    move-result v0

    iget-object v9, p0, Labcd/AI;->v5:[B

    int-to-byte v10, v0

    aput-byte v10, v9, v7

    and-int/lit8 v9, v0, 0x7f

    shl-int/2addr v9, v8

    int-to-long v9, v9

    add-long/2addr v4, v9

    add-int/2addr v8, v2

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_19
.end method

.method protected abstract j6(Labcd/AI$f;Labcd/AI$d;)Labcd/AI$d;
.end method

.method protected abstract j6(Labcd/CI;Labcd/AI$d;)Labcd/AI$d;
.end method

.method protected j6(Labcd/YD;Labcd/AI$f;Labcd/yE;)Labcd/CI;
    .registers 4

    new-instance p3, Labcd/CI;

    invoke-direct {p3, p1}, Labcd/CI;-><init>(Labcd/YD;)V

    if-eqz p2, :cond_c

    iget p1, p2, Labcd/AI$f;->DW:I

    invoke-virtual {p3, p1}, Labcd/CI;->DW(I)V

    :cond_c
    return-object p3
.end method

.method public final j6(Labcd/LE;)Labcd/kH;
    .registers 2

    invoke-virtual {p0, p1, p1}, Labcd/AI;->j6(Labcd/LE;Labcd/LE;)Labcd/kH;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/LE;Labcd/LE;)Labcd/kH;
    .registers 12

    if-nez p1, :cond_4

    sget-object p1, Labcd/vE;->j6:Labcd/vE;

    :cond_4
    if-nez p2, :cond_8

    sget-object p2, Labcd/vE;->j6:Labcd/vE;

    :cond_8
    if-ne p1, p2, :cond_e

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Labcd/LE;->start(I)V

    :cond_e
    const/4 v0, 0x0

    :try_start_f
    invoke-direct {p0}, Labcd/AI;->XL()V

    iget-wide v1, p0, Labcd/AI;->aM:J

    long-to-int v2, v1

    new-array v1, v2, [Labcd/CI;

    iput-object v1, p0, Labcd/AI;->j3:[Labcd/CI;

    new-instance v1, Labcd/AE;

    invoke-direct {v1}, Labcd/AE;-><init>()V

    iput-object v1, p0, Labcd/AI;->lg:Labcd/AE;

    new-instance v1, Labcd/wI;

    invoke-direct {v1}, Labcd/wI;-><init>()V

    iput-object v1, p0, Labcd/AI;->er:Labcd/wI;

    new-instance v1, Labcd/lK;

    invoke-direct {v1}, Labcd/lK;-><init>()V

    iput-object v1, p0, Labcd/AI;->yS:Labcd/lK;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->receivingObjects:Ljava/lang/String;

    iget-wide v2, p0, Labcd/AI;->aM:J

    long-to-int v3, v2

    invoke-interface {p1, v1, v3}, Labcd/LE;->j6(Ljava/lang/String;I)V
    :try_end_3a
    .catchall {:try_start_f .. :try_end_3a} :catchall_113

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3c
    int-to-long v3, v2

    :try_start_3d
    iget-wide v5, p0, Labcd/AI;->aM:J

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    if-ltz v8, :cond_f2

    invoke-direct {p0}, Labcd/AI;->QX()V

    invoke-direct {p0}, Labcd/AI;->J0()V
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_10e

    :try_start_4a
    invoke-interface {p1}, Labcd/LE;->j6()V

    iget-object p1, p0, Labcd/AI;->yS:Labcd/lK;

    invoke-virtual {p1}, Ljava/util/AbstractList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_58

    invoke-direct {p0}, Labcd/AI;->we()V

    :cond_58
    iget p1, p0, Labcd/AI;->U2:I

    if-lez p1, :cond_d3

    instance-of p1, p2, Labcd/eE;

    if-eqz p1, :cond_6a

    move-object p1, p2

    check-cast p1, Labcd/eE;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, v3, v4, v2}, Labcd/eE;->j6(JLjava/util/concurrent/TimeUnit;)V

    :cond_6a
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->resolvingDeltas:Ljava/lang/String;

    iget v2, p0, Labcd/AI;->U2:I

    invoke-interface {p2, p1, v2}, Labcd/LE;->j6(Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Labcd/AI;->DW(Labcd/LE;)V

    iget p1, p0, Labcd/AI;->a8:I

    int-to-long v2, p1

    iget-wide v4, p0, Labcd/AI;->aM:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_d0

    invoke-virtual {p0}, Labcd/AI;->VH()Z

    move-result p1

    if-eqz p1, :cond_b2

    invoke-direct {p0, p2}, Labcd/AI;->FH(Labcd/LE;)V

    iget p1, p0, Labcd/AI;->a8:I

    int-to-long v2, p1

    iget-wide v4, p0, Labcd/AI;->aM:J

    cmp-long p1, v2, v4

    if-ltz p1, :cond_94

    goto :goto_d0

    :cond_94
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->packHasUnresolvedDeltas:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v3, p0, Labcd/AI;->aM:J

    iget v5, p0, Labcd/AI;->a8:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p2, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b2
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->packHasUnresolvedDeltas:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v3, p0, Labcd/AI;->aM:J

    iget v5, p0, Labcd/AI;->a8:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p2, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d0
    :goto_d0
    invoke-interface {p2}, Labcd/LE;->j6()V

    :cond_d3
    iput-object v0, p0, Labcd/AI;->gW:Ljava/security/MessageDigest;

    iput-object v0, p0, Labcd/AI;->lg:Labcd/AE;

    iput-object v0, p0, Labcd/AI;->er:Labcd/wI;
    :try_end_d9
    .catchall {:try_start_4a .. :try_end_d9} :catchall_113

    :try_start_d9
    iget-object p1, p0, Labcd/AI;->BT:Labcd/IE;

    if-eqz p1, :cond_e0

    invoke-virtual {p1}, Labcd/IE;->FH()V
    :try_end_e0
    .catchall {:try_start_d9 .. :try_end_e0} :catchall_ee

    :cond_e0
    iput-object v0, p0, Labcd/AI;->BT:Labcd/IE;

    :try_start_e2
    iget-object p1, p0, Labcd/AI;->FH:Labcd/AI$c;

    invoke-virtual {p1}, Labcd/AI$c;->j6()V
    :try_end_e7
    .catchall {:try_start_e2 .. :try_end_e7} :catchall_ea

    iput-object v0, p0, Labcd/AI;->FH:Labcd/AI$c;

    return-object v0

    :catchall_ea
    move-exception p1

    iput-object v0, p0, Labcd/AI;->FH:Labcd/AI$c;

    throw p1

    :catchall_ee
    move-exception p1

    iput-object v0, p0, Labcd/AI;->BT:Labcd/IE;

    throw p1

    :cond_f2
    :try_start_f2
    invoke-direct {p0}, Labcd/AI;->J8()V

    invoke-interface {p1, v7}, Labcd/LE;->update(I)V

    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_102

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3c

    :cond_102
    new-instance p2, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->downloadCancelled:Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_10e
    .catchall {:try_start_f2 .. :try_end_10e} :catchall_10e

    :catchall_10e
    move-exception p2

    :try_start_10f
    invoke-interface {p1}, Labcd/LE;->j6()V

    throw p2
    :try_end_113
    .catchall {:try_start_10f .. :try_end_113} :catchall_113

    :catchall_113
    move-exception p1

    :try_start_114
    iget-object p2, p0, Labcd/AI;->BT:Labcd/IE;

    if-eqz p2, :cond_11b

    invoke-virtual {p2}, Labcd/IE;->FH()V
    :try_end_11b
    .catchall {:try_start_114 .. :try_end_11b} :catchall_129

    :cond_11b
    iput-object v0, p0, Labcd/AI;->BT:Labcd/IE;

    :try_start_11d
    iget-object p2, p0, Labcd/AI;->FH:Labcd/AI$c;

    invoke-virtual {p2}, Labcd/AI$c;->j6()V
    :try_end_122
    .catchall {:try_start_11d .. :try_end_122} :catchall_125

    iput-object v0, p0, Labcd/AI;->FH:Labcd/AI$c;

    throw p1

    :catchall_125
    move-exception p1

    iput-object v0, p0, Labcd/AI;->FH:Labcd/AI$c;

    throw p1

    :catchall_129
    move-exception p1

    iput-object v0, p0, Labcd/AI;->BT:Labcd/IE;

    goto :goto_12e

    :goto_12d
    throw p1

    :goto_12e
    goto :goto_12d
.end method

.method public j6(Ljava/util/Comparator;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Labcd/CI;",
            ">;)",
            "Ljava/util/List<",
            "Labcd/CI;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/AI;->j3:[Labcd/CI;

    iget v1, p0, Labcd/AI;->a8:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    iget-object p1, p0, Labcd/AI;->j3:[Labcd/CI;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Labcd/AI;->a8:I

    iget-object v1, p0, Labcd/AI;->j3:[Labcd/CI;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    :cond_19
    return-object p1
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
            "LDE<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/AI;->Mr:Labcd/DE;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Labcd/DE;

    invoke-direct {v0}, Labcd/DE;-><init>()V

    return-object v0
.end method

.method public v5(Z)V
    .registers 2

    if-eqz p1, :cond_8

    new-instance p1, Labcd/wE;

    invoke-direct {p1}, Labcd/wE;-><init>()V

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    invoke-virtual {p0, p1}, Labcd/AI;->j6(Labcd/wE;)V

    return-void
.end method
