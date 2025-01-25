.class public Labcd/nH;
.super Labcd/OE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/nH$a;,
        Labcd/nH$b;,
        Labcd/nH$c;,
        Labcd/nH$d;,
        Labcd/nH$e;,
        Labcd/nH$f;,
        Labcd/nH$g;
    }
.end annotation


# static fields
.field private static final DW:[Ljava/lang/String;


# instance fields
.field private final EQ:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final FH:Labcd/IG;

.field private final Hw:Ljava/io/File;

.field private final VH:Ljava/io/File;

.field private final Zo:Ljava/io/File;

.field private final gn:Ljava/io/File;

.field private final tp:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Labcd/nH$g;",
            ">;"
        }
    .end annotation
.end field

.field private final u7:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "LKK<",
            "Labcd/nH$c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final v5:Ljava/io/File;

.field private final we:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MERGE_HEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "FETCH_HEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ORIG_HEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CHERRY_PICK_HEAD"

    aput-object v2, v0, v1

    sput-object v0, Labcd/nH;->DW:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Labcd/IG;)V
    .registers 6

    invoke-direct {p0}, Labcd/OE;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Labcd/nH;->tp:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v2, p0, Labcd/nH;->we:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v2

    iput-object p1, p0, Labcd/nH;->FH:Labcd/IG;

    invoke-virtual {p1}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Labcd/nH;->Hw:Ljava/io/File;

    const-string v3, "refs/"

    invoke-virtual {v2, p1, v3}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Labcd/nH;->v5:Ljava/io/File;

    const-string v3, "logs"

    invoke-virtual {v2, p1, v3}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Labcd/nH;->Zo:Ljava/io/File;

    const-string v3, "logs/refs/"

    invoke-virtual {v2, p1, v3}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Labcd/nH;->VH:Ljava/io/File;

    const-string v3, "packed-refs"

    invoke-virtual {v2, p1, v3}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Labcd/nH;->gn:Ljava/io/File;

    invoke-static {}, Labcd/KK;->DW()Labcd/KK;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object p1, Labcd/nH$g;->Hw:Labcd/nH$g;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private DW(Labcd/ME;)Labcd/BE;
    .registers 7

    new-instance v0, Labcd/qG;

    invoke-virtual {p0}, Labcd/nH;->FH()Labcd/UE;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/qG;-><init>(Labcd/UE;)V

    :try_start_9
    invoke-interface {p1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v1

    instance-of v2, v1, Labcd/lG;

    if-eqz v2, :cond_32

    new-instance v2, Labcd/BE$b;

    invoke-interface {p1}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object v3

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object p1

    invoke-virtual {v0, v1}, Labcd/qG;->FH(Labcd/iG;)Labcd/iG;

    move-result-object v1

    invoke-virtual {v1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v1

    invoke-direct {v2, v3, v4, p1, v1}, Labcd/BE$b;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;Labcd/yE;)V
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_47

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    return-object v2

    :cond_32
    :try_start_32
    new-instance v1, Labcd/BE$a;

    invoke-interface {p1}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object v2

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Labcd/BE$a;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_47

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    return-object v1

    :catchall_47
    move-exception p1

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    throw p1
.end method

.method static synthetic DW(Labcd/nH;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    iget-object p0, p0, Labcd/nH;->tp:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private Hw()V
    .registers 4

    iget-object v0, p0, Labcd/nH;->we:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_22

    iget-object v2, p0, Labcd/nH;->we:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_22

    if-eqz v0, :cond_22

    iget-object v0, p0, Labcd/nH;->FH:Labcd/IG;

    new-instance v1, Labcd/ID;

    invoke-direct {v1}, Labcd/ID;-><init>()V

    invoke-virtual {v0, v1}, Labcd/UE;->j6(Labcd/KD;)V

    :cond_22
    return-void
.end method

.method private VH()Z
    .registers 3

    iget-object v0, p0, Labcd/nH;->FH:Labcd/IG;

    invoke-virtual {v0}, Labcd/IG;->Zo()Labcd/FG;

    move-result-object v0

    sget-object v1, Labcd/jE;->j6:Labcd/gE$b;

    invoke-virtual {v0, v1}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/jE;

    invoke-virtual {v0}, Labcd/jE;->Hw()Z

    move-result v0

    return v0
.end method

.method private VH(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "HEAD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "refs/heads/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "refs/remotes/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "refs/stash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    const/4 p1, 0x0

    return p1

    :cond_22
    const/4 p1, 0x1

    return p1
.end method

.method private Zo()Labcd/nH$g;
    .registers 4

    iget-object v0, p0, Labcd/nH;->tp:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/nH$g;

    iget-object v1, v0, Labcd/nH$g;->v5:Labcd/LG;

    iget-object v2, p0, Labcd/nH;->gn:Ljava/io/File;

    invoke-virtual {v1, v2}, Labcd/LG;->j6(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_13

    return-object v0

    :cond_13
    invoke-direct {p0}, Labcd/nH;->gn()Labcd/nH$g;

    move-result-object v1

    iget-object v2, p0, Labcd/nH;->tp:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Labcd/XG$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_24
    return-object v1
.end method

.method private gn()Labcd/nH$g;
    .registers 5

    iget-object v0, p0, Labcd/nH;->gn:Ljava/io/File;

    invoke-static {v0}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v0

    :try_start_6
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Labcd/nH;->gn:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_19} :catch_2b

    :try_start_19
    new-instance v1, Labcd/nH$g;

    invoke-direct {p0, v2}, Labcd/nH;->j6(Ljava/io/BufferedReader;)Labcd/KK;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Labcd/nH$g;-><init>(Labcd/KK;Labcd/LG;)V
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_26

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_26
    move-exception v0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v0

    :catch_2b
    move-exception v0

    sget-object v0, Labcd/nH$g;->Hw:Labcd/nH$g;

    return-object v0
.end method

.method private j6(Labcd/KK;)Labcd/KK;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LKK<",
            "+",
            "Labcd/ME;",
            ">;)",
            "LKK<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method private j6(Ljava/io/BufferedReader;)Labcd/KK;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "LKK<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    new-instance v0, Labcd/KK$a;

    invoke-direct {v0}, Labcd/KK$a;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_9
    :goto_9
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_19

    if-eqz v3, :cond_14

    invoke-virtual {v0}, Labcd/KK$a;->DW()V

    :cond_14
    invoke-virtual {v0}, Labcd/KK$a;->FH()Labcd/KK;

    move-result-object p1

    return-object p1

    :cond_19
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_36

    const-string v6, "# pack-refs with:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v4, 0x11

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, " peeled"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_9

    :cond_36
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5e

    const/4 v8, 0x1

    if-ne v6, v7, :cond_6e

    if-eqz v1, :cond_62

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v5

    new-instance v6, Labcd/BE$b;

    sget-object v7, Labcd/ME$a;->FH:Labcd/ME$a;

    invoke-interface {v1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    invoke-direct {v6, v7, v9, v1, v5}, Labcd/BE$b;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;Labcd/yE;)V

    invoke-virtual {v0}, Labcd/KK$a;->j6()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {v0, v1, v6}, Labcd/KK$a;->j6(ILabcd/ME;)V

    :goto_60
    move-object v1, v6

    goto :goto_9

    :cond_62
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->peeledLineBeforeRef:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6e
    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v7

    add-int/2addr v6, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v5, v6, v9}, Labcd/nH;->j6(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_8f

    new-instance v6, Labcd/BE$a;

    sget-object v9, Labcd/ME$a;->FH:Labcd/ME$a;

    invoke-direct {v6, v9, v5, v7}, Labcd/BE$a;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    goto :goto_96

    :cond_8f
    new-instance v6, Labcd/BE$c;

    sget-object v9, Labcd/ME$a;->FH:Labcd/ME$a;

    invoke-direct {v6, v9, v5, v7}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    :goto_96
    if-eqz v1, :cond_9f

    invoke-static {v1, v6}, Labcd/NE;->DW(Labcd/ME;Labcd/ME;)I

    move-result v1

    if-lez v1, :cond_9f

    const/4 v3, 0x1

    :cond_9f
    invoke-virtual {v0, v6}, Labcd/KK$a;->j6(Labcd/ME;)V

    goto :goto_60
.end method

.method private j6(Labcd/ME;ILjava/lang/String;Labcd/KK;Labcd/KK;)Labcd/ME;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/ME;",
            "I",
            "Ljava/lang/String;",
            "LKK<",
            "Labcd/nH$c;",
            ">;",
            "LKK<",
            "Labcd/ME;",
            ">;)",
            "Labcd/ME;"
        }
    .end annotation

    invoke-interface {p1}, Labcd/ME;->Zo()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p1}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-gt v1, p2, :cond_f

    return-object v2

    :cond_f
    if-eqz p4, :cond_3a

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2a

    invoke-virtual {p4, v1}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v0

    goto :goto_45

    :cond_2a
    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_39

    invoke-virtual {p5, v0}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v0

    goto :goto_45

    :cond_39
    return-object p1

    :cond_3a
    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Labcd/nH;->j6(Ljava/lang/String;Labcd/KK;)Labcd/ME;

    move-result-object v0

    if-nez v0, :cond_45

    return-object p1

    :cond_45
    :goto_45
    move-object v4, v0

    add-int/lit8 v5, p2, 0x1

    move-object v3, p0

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Labcd/nH;->j6(Labcd/ME;ILjava/lang/String;Labcd/KK;Labcd/KK;)Labcd/ME;

    move-result-object p2

    if-nez p2, :cond_53

    return-object v2

    :cond_53
    new-instance p3, Labcd/kF;

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Labcd/kF;-><init>(Ljava/lang/String;Labcd/ME;)V

    return-object p3

    :cond_5d
    return-object p1
.end method

.method private static j6(Labcd/ME;Labcd/BE;)Labcd/ME;
    .registers 3

    invoke-interface {p0}, Labcd/ME;->Zo()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v0

    invoke-static {v0, p1}, Labcd/nH;->j6(Labcd/ME;Labcd/BE;)Labcd/ME;

    move-result-object p1

    new-instance v0, Labcd/kF;

    invoke-interface {p0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Labcd/kF;-><init>(Ljava/lang/String;Labcd/ME;)V

    return-object v0

    :cond_18
    return-object p1
.end method

.method private j6(Ljava/lang/String;Labcd/KK;)Labcd/ME;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LKK<",
            "Labcd/ME;",
            ">;)",
            "Labcd/ME;"
        }
    .end annotation

    iget-object v0, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/KK;

    invoke-virtual {v0, p1}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_45

    invoke-virtual {v0, v1}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v2

    check-cast v2, Labcd/nH$c;

    invoke-direct {p0, v2, p1}, Labcd/nH;->j6(Labcd/nH$c;Ljava/lang/String;)Labcd/nH$c;

    move-result-object v3

    if-nez v3, :cond_30

    iget-object v2, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Labcd/KK;->remove(I)Labcd/KK;

    move-result-object v1

    invoke-static {v2, v0, v1}, Labcd/XG$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_2b
    invoke-virtual {p2, p1}, Labcd/KK;->FH(Ljava/lang/String;)Labcd/ME;

    move-result-object p1

    return-object p1

    :cond_30
    if-ne v2, v3, :cond_33

    return-object v3

    :cond_33
    iget-object p1, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1, v3}, Labcd/KK;->DW(ILabcd/ME;)Labcd/KK;

    move-result-object p2

    invoke-static {p1, v0, p2}, Labcd/XG$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    iget-object p1, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_44
    return-object v3

    :cond_45
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Labcd/nH;->j6(Labcd/nH$c;Ljava/lang/String;)Labcd/nH$c;

    move-result-object v2

    if-nez v2, :cond_51

    invoke-virtual {p2, p1}, Labcd/KK;->FH(Ljava/lang/String;)Labcd/ME;

    move-result-object p1

    return-object p1

    :cond_51
    const/4 p2, 0x0

    :goto_52
    sget-object v3, Labcd/nH;->DW:[Ljava/lang/String;

    array-length v4, v3

    if-lt p2, v4, :cond_69

    iget-object p1, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1, v2}, Labcd/KK;->j6(ILabcd/ME;)Labcd/KK;

    move-result-object p2

    invoke-static {p1, v0, p2}, Labcd/XG$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_68

    iget-object p1, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_68
    return-object v2

    :cond_69
    aget-object v3, v3, p2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    return-object v2

    :cond_72
    add-int/lit8 p2, p2, 0x1

    goto :goto_52
.end method

.method private j6(Labcd/nH$c;Ljava/lang/String;)Labcd/nH$c;
    .registers 14

    invoke-virtual {p0, p2}, Labcd/nH;->Hw(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1a

    invoke-interface {p1}, Labcd/nH$c;->VH()Labcd/LG;

    move-result-object p2

    invoke-virtual {p2, v0}, Labcd/LG;->j6(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_12

    return-object p1

    :cond_12
    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    move-object v2, p2

    move-object p2, v10

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    :goto_1b
    invoke-static {v0}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v3

    const/16 v4, 0x1000

    :try_start_21
    invoke-static {v0, v4}, Labcd/BK;->DW(Ljava/io/File;I)[B

    move-result-object v0
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_25} :catch_d9

    array-length v5, v0

    if-nez v5, :cond_29

    return-object v1

    :cond_29
    invoke-static {v0, v5}, Labcd/nH;->j6([BI)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_86

    if-ne v5, v4, :cond_35

    return-object v1

    :cond_35
    :goto_35
    if-lez v5, :cond_45

    add-int/lit8 v1, v5, -0x1

    aget-byte v1, v0, v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_42

    goto :goto_45

    :cond_42
    add-int/lit8 v5, v5, -0x1

    goto :goto_35

    :cond_45
    :goto_45
    const/4 v1, 0x6

    if-lt v5, v1, :cond_6c

    const/4 v1, 0x5

    invoke-static {v0, v1, v5}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_67

    invoke-interface {p1}, Labcd/ME;->Zo()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {p1}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v1

    invoke-interface {v1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-virtual {v2, v3}, Labcd/LG;->DW(Labcd/LG;)V

    return-object p1

    :cond_67
    invoke-static {v3, p2, v0}, Labcd/nH;->j6(Labcd/LG;Ljava/lang/String;Ljava/lang/String;)Labcd/nH$e;

    move-result-object p1

    return-object p1

    :cond_6c
    invoke-static {v0, v9, v5}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->notARef:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v9

    aput-object p1, v2, v8

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_86
    const/16 v4, 0x28

    if-ge v5, v4, :cond_8b

    return-object v1

    :cond_8b
    :try_start_8b
    invoke-static {v0, v9}, Labcd/yE;->v5([BI)Labcd/yE;

    move-result-object v1

    if-eqz p1, :cond_a9

    invoke-interface {p1}, Labcd/ME;->Zo()Z

    move-result v4

    if-nez v4, :cond_a9

    invoke-interface {p1}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v4

    invoke-interface {v4}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    invoke-virtual {v4, v1}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v4

    if-eqz v4, :cond_a9

    invoke-virtual {v2, v3}, Labcd/LG;->DW(Labcd/LG;)V
    :try_end_a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8b .. :try_end_a8} :catch_af

    return-object p1

    :cond_a9
    new-instance p1, Labcd/nH$f;

    invoke-direct {p1, v3, p2, v1}, Labcd/nH$f;-><init>(Labcd/LG;Ljava/lang/String;Labcd/yE;)V

    return-object p1

    :catch_af
    move-exception p1

    :goto_b0
    if-lez v5, :cond_bf

    add-int/lit8 p1, v5, -0x1

    aget-byte p1, v0, p1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result p1

    if-eqz p1, :cond_bf

    add-int/lit8 v5, v5, -0x1

    goto :goto_b0

    :cond_bf
    invoke-static {v0, v9, v5}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->notARef:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v9

    aput-object p1, v2, v8

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_d9
    move-exception p1

    return-object v1
.end method

.method static synthetic j6(Labcd/nH;Labcd/nH$c;Ljava/lang/String;)Labcd/nH$c;
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/nH;->j6(Labcd/nH$c;Ljava/lang/String;)Labcd/nH$c;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Labcd/LG;Ljava/lang/String;Ljava/lang/String;)Labcd/nH$e;
    .registers 7

    new-instance v0, Labcd/nH$e;

    new-instance v1, Labcd/BE$c;

    sget-object v2, Labcd/ME$a;->j6:Labcd/ME$a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, v3}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    invoke-direct {v0, p0, p1, v1}, Labcd/nH$e;-><init>(Labcd/LG;Ljava/lang/String;Labcd/ME;)V

    return-object v0
.end method

.method static synthetic j6(Labcd/nH;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Labcd/nH;->v5:Ljava/io/File;

    return-object p0
.end method

.method private static j6(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private j6(Labcd/WG;Labcd/KK;Labcd/nH$g;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/WG;",
            "LKK<",
            "Labcd/ME;",
            ">;",
            "Labcd/nH$g;",
            ")V"
        }
    .end annotation

    new-instance v6, Labcd/mH;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Labcd/mH;-><init>(Labcd/nH;Labcd/KK;Labcd/WG;Labcd/nH$g;Labcd/KK;)V

    invoke-virtual {v6}, Labcd/SE;->DW()V

    return-void
.end method

.method private j6(Labcd/nH$c;)V
    .registers 5

    :cond_0
    iget-object v0, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/KK;

    invoke-virtual {v0, p1}, Labcd/KK;->j6(Labcd/ME;)Labcd/KK;

    move-result-object v1

    iget-object v2, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Labcd/XG$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0}, Labcd/nH;->Hw()V

    return-void
.end method

.method static j6(Ljava/io/File;I)V
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_23

    :cond_e
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->fileCannotBeDeleted:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    :goto_23
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    :goto_27
    if-lt v1, p1, :cond_2a

    goto :goto_30

    :cond_2a
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_31

    :goto_30
    return-void

    :cond_31
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_27
.end method

.method private j6(Ljava/lang/String;[B)V
    .registers 9

    invoke-virtual {p0, p1}, Labcd/nH;->Zo(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0}, Labcd/nH;->VH()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_13

    invoke-direct {p0, p1}, Labcd/nH;->VH(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_19

    :cond_13
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1b

    :goto_19
    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    if-eqz p1, :cond_8e

    invoke-virtual {p0}, Labcd/nH;->FH()Labcd/UE;

    move-result-object p1

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object p1

    sget-object v1, Labcd/yH;->j6:Labcd/gE$b;

    invoke-virtual {p1, v1}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/yH;

    :try_start_2e
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_33} :catch_34

    goto :goto_65

    :catch_34
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_8d

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_60

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4c

    goto :goto_60

    :cond_4c
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->cannotCreateDirectory:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v4, v0, v2

    invoke-static {p2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_60
    :goto_60
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :goto_65
    :try_start_65
    invoke-virtual {p1}, Labcd/yH;->FH()Z

    move-result p1

    if-eqz p1, :cond_81

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    :goto_73
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_7d

    invoke-virtual {p1, v3}, Ljava/nio/channels/FileChannel;->force(Z)V

    goto :goto_84

    :cond_7d
    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_73

    :cond_81
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_84
    .catchall {:try_start_65 .. :try_end_84} :catchall_88

    :goto_84
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_8e

    :catchall_88
    move-exception p1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw p1

    :cond_8d
    throw v1

    :cond_8e
    :goto_8e
    return-void
.end method

.method private static j6([BI)Z
    .registers 5

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-ge p1, v0, :cond_5

    return v1

    :cond_5
    aget-byte p1, p0, v1

    const/16 v0, 0x72

    if-ne p1, v0, :cond_28

    const/4 p1, 0x1

    aget-byte v0, p0, p1

    const/16 v2, 0x65

    if-ne v0, v2, :cond_28

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    const/16 v2, 0x66

    if-ne v0, v2, :cond_28

    const/4 v0, 0x3

    aget-byte v0, p0, v0

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_28

    const/4 v0, 0x4

    aget-byte p0, p0, v0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_28

    return p1

    :cond_28
    return v1
.end method

.method static v5(Ljava/lang/String;)I
    .registers 4

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_7
    if-gez v1, :cond_a

    return v2

    :cond_a
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_7
.end method

.method private v5()Labcd/KK;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LKK<",
            "Labcd/nH$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/KK;

    new-instance v1, Labcd/nH$d;

    invoke-direct {v1, p0, v0}, Labcd/nH$d;-><init>(Labcd/nH;Labcd/KK;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Labcd/nH$d;->j6(Ljava/lang/String;)V

    iget-object v1, v1, Labcd/nH$d;->Hw:Labcd/KK$a;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Labcd/KK$a;->FH()Labcd/KK;

    move-result-object v1

    iget-object v2, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Labcd/XG$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_27
    move-object v0, v1

    :cond_28
    return-object v0
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Labcd/nH;->Zo()Labcd/nH$g;

    move-result-object v6

    iget-object v0, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/KK;

    new-instance v1, Labcd/nH$d;

    invoke-direct {v1, p0, v0}, Labcd/nH$d;-><init>(Labcd/nH;Labcd/KK;)V

    invoke-virtual {v1, p1}, Labcd/nH$d;->j6(Ljava/lang/String;)V

    iget-object v2, v1, Labcd/nH$d;->Hw:Labcd/KK$a;

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Labcd/KK$a;->DW()V

    iget-object v2, v1, Labcd/nH$d;->Hw:Labcd/KK$a;

    invoke-virtual {v2}, Labcd/KK$a;->FH()Labcd/KK;

    move-result-object v2

    iget-object v3, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v0, v2}, Labcd/XG$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_2e
    move-object v0, v2

    :cond_2f
    invoke-direct {p0}, Labcd/nH;->Hw()V

    iget-object v7, v1, Labcd/nH$d;->FH:Labcd/KK$a;

    const/4 v1, 0x0

    move-object v8, v0

    const/4 v9, 0x0

    :cond_37
    :goto_37
    invoke-virtual {v7}, Labcd/KK$a;->j6()I

    move-result v0

    if-lt v9, v0, :cond_4d

    invoke-virtual {v7}, Labcd/KK$a;->DW()V

    invoke-direct {p0, v8}, Labcd/nH;->j6(Labcd/KK;)Labcd/KK;

    new-instance v0, Labcd/MK;

    invoke-virtual {v7}, Labcd/KK$a;->FH()Labcd/KK;

    move-result-object v1

    invoke-direct {v0, p1, v6, v8, v1}, Labcd/MK;-><init>(Ljava/lang/String;Labcd/KK;Labcd/KK;Labcd/KK;)V

    return-object v0

    :cond_4d
    invoke-virtual {v7, v9}, Labcd/KK$a;->j6(I)Labcd/ME;

    move-result-object v10

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v10

    move-object v3, p1

    move-object v4, v8

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Labcd/nH;->j6(Labcd/ME;ILjava/lang/String;Labcd/KK;Labcd/KK;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    if-eqz v1, :cond_69

    invoke-virtual {v7, v9, v0}, Labcd/KK$a;->j6(ILabcd/ME;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_37

    :cond_69
    invoke-virtual {v7, v9}, Labcd/KK$a;->DW(I)V

    invoke-interface {v10}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_37

    invoke-virtual {v8, v0}, Labcd/KK;->remove(I)Labcd/KK;

    move-result-object v8

    goto :goto_37
.end method

.method public DW()V
    .registers 6

    iget-object v0, p0, Labcd/nH;->v5:Ljava/io/File;

    invoke-static {v0}, Labcd/zK;->DW(Ljava/io/File;)V

    iget-object v0, p0, Labcd/nH;->Zo:Ljava/io/File;

    invoke-static {v0}, Labcd/zK;->DW(Ljava/io/File;)V

    iget-object v0, p0, Labcd/nH;->VH:Ljava/io/File;

    invoke-static {v0}, Labcd/zK;->DW(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/nH;->v5:Ljava/io/File;

    const-string v2, "refs/heads/"

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/zK;->DW(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/nH;->v5:Ljava/io/File;

    const-string v4, "refs/tags/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/zK;->DW(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/nH;->VH:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/zK;->DW(Ljava/io/File;)V

    return-void
.end method

.method FH()Labcd/UE;
    .registers 2

    iget-object v0, p0, Labcd/nH;->FH:Labcd/IG;

    return-object v0
.end method

.method public FH(Ljava/lang/String;)Z
    .registers 9

    invoke-direct {p0}, Labcd/nH;->Zo()Labcd/nH$g;

    move-result-object v0

    invoke-direct {p0}, Labcd/nH;->v5()Labcd/KK;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    :goto_e
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gtz v3, :cond_5b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v5

    neg-int v2, v2

    invoke-virtual {v0}, Labcd/KK;->size()I

    move-result v3

    if-ge v2, v3, :cond_3d

    invoke-virtual {v0, v2}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    return v5

    :cond_3d
    invoke-virtual {v1, p1}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v5

    neg-int v0, v0

    invoke-virtual {v1}, Labcd/KK;->size()I

    move-result v2

    if-ge v0, v2, :cond_5a

    invoke-virtual {v1, v0}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v0

    check-cast v0, Labcd/nH$c;

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5a

    return v5

    :cond_5a
    return v4

    :cond_5b
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Labcd/KK;->j6(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_73

    invoke-virtual {v0, v4}, Labcd/KK;->j6(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6c

    goto :goto_73

    :cond_6c
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    goto :goto_e

    :cond_73
    :goto_73
    return v5
.end method

.method Hw(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    const-string v0, "refs/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/nH;->v5:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_15
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/nH;->Hw:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method Zo(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    const-string v0, "refs/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/nH;->VH:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_15
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/nH;->Zo:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public j6(Labcd/ME;)Labcd/ME;
    .registers 7

    invoke-interface {p1}, Labcd/ME;->v5()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->Hw()Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_4a

    :cond_11
    invoke-direct {p0, v0}, Labcd/nH;->DW(Labcd/ME;)Labcd/BE;

    move-result-object v1

    invoke-interface {v0}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ME$a;->Hw()Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v2, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/KK;

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_46

    invoke-virtual {v2, v3}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v4

    if-ne v4, v0, :cond_46

    check-cast v0, Labcd/nH$c;

    invoke-interface {v0, v1}, Labcd/nH$c;->j6(Labcd/BE;)Labcd/nH$c;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Labcd/KK;->DW(ILabcd/ME;)Labcd/KK;

    move-result-object v0

    iget-object v3, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v2, v0}, Labcd/XG$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_46
    invoke-static {p1, v1}, Labcd/nH;->j6(Labcd/ME;Labcd/BE;)Labcd/ME;

    move-result-object p1

    :cond_4a
    :goto_4a
    return-object p1
.end method

.method public j6(Ljava/lang/String;)Labcd/ME;
    .registers 8

    invoke-direct {p0}, Labcd/nH;->Zo()Labcd/nH$g;

    move-result-object v5

    sget-object v0, Labcd/OE;->j6:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    if-lt v3, v1, :cond_c

    goto :goto_2e

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Labcd/nH;->j6(Ljava/lang/String;Labcd/KK;)Labcd/ME;

    move-result-object v2

    if-eqz v2, :cond_32

    const/4 p1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v2

    move v2, p1

    invoke-direct/range {v0 .. v5}, Labcd/nH;->j6(Labcd/ME;ILjava/lang/String;Labcd/KK;Labcd/KK;)Labcd/ME;

    move-result-object v2

    :goto_2e
    invoke-direct {p0}, Labcd/nH;->Hw()V

    return-object v2

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method public bridge synthetic j6(Ljava/lang/String;Z)Labcd/RE;
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/nH;->j6(Ljava/lang/String;Z)Labcd/oH;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;Z)Labcd/oH;
    .registers 9

    invoke-direct {p0}, Labcd/nH;->Zo()Labcd/nH$g;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Labcd/nH;->j6(Ljava/lang/String;Labcd/KK;)Labcd/ME;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Labcd/nH;->j6(Labcd/ME;ILjava/lang/String;Labcd/KK;Labcd/KK;)Labcd/ME;

    move-result-object v1

    :cond_12
    const/4 v0, 0x0

    if-nez v1, :cond_1e

    new-instance v1, Labcd/BE$c;

    sget-object p2, Labcd/ME$a;->j6:Labcd/ME$a;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v2}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    goto :goto_36

    :cond_1e
    if-eqz p2, :cond_28

    invoke-interface {v1}, Labcd/ME;->Zo()Z

    move-result p2

    if-eqz p2, :cond_28

    const/4 p2, 0x1

    const/4 v0, 0x1

    :cond_28
    if-eqz v0, :cond_36

    new-instance p2, Labcd/BE$c;

    sget-object v2, Labcd/ME$a;->DW:Labcd/ME$a;

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    invoke-direct {p2, v2, p1, v1}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    move-object v1, p2

    :cond_36
    :goto_36
    new-instance p1, Labcd/oH;

    invoke-direct {p1, p0, v1}, Labcd/oH;-><init>(Labcd/nH;Labcd/ME;)V

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Labcd/RE;->Ws()V

    :cond_40
    return-object p1
.end method

.method public j6()V
    .registers 1

    return-void
.end method

.method j6(Labcd/RE;Ljava/lang/String;Z)V
    .registers 8

    invoke-virtual {p1}, Labcd/RE;->Zo()Labcd/yE;

    move-result-object v0

    invoke-virtual {p1}, Labcd/RE;->v5()Labcd/yE;

    move-result-object v1

    invoke-virtual {p1}, Labcd/RE;->VH()Labcd/ME;

    move-result-object v2

    invoke-virtual {p1}, Labcd/RE;->u7()Labcd/KE;

    move-result-object p1

    if-nez p1, :cond_1a

    new-instance p1, Labcd/KE;

    iget-object v3, p0, Labcd/nH;->FH:Labcd/IG;

    invoke-direct {p1, v3}, Labcd/KE;-><init>(Labcd/UE;)V

    goto :goto_20

    :cond_1a
    new-instance v3, Labcd/KE;

    invoke-direct {v3, p1}, Labcd/KE;-><init>(Labcd/KE;)V

    move-object p1, v3

    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Labcd/yE;->j6(Labcd/yE;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/yE;->j6(Labcd/yE;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Labcd/KE;->Hw()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x9

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p3, :cond_6f

    invoke-interface {v2}, Labcd/ME;->Zo()Z

    move-result p2

    if-eqz p2, :cond_6f

    invoke-interface {v2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Labcd/nH;->j6(Ljava/lang/String;[B)V

    invoke-interface {v2}, Labcd/ME;->v5()Labcd/ME;

    move-result-object p2

    invoke-interface {p2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_73

    :cond_6f
    invoke-interface {v2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_73
    invoke-direct {p0, p2, p1}, Labcd/nH;->j6(Ljava/lang/String;[B)V

    return-void
.end method

.method j6(Labcd/oH;)V
    .registers 8

    invoke-virtual {p1}, Labcd/RE;->VH()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->v5()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Labcd/nH;->Zo()Labcd/nH$g;

    move-result-object v2

    invoke-virtual {v2, v1}, Labcd/KK;->j6(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    new-instance v3, Labcd/WG;

    iget-object v4, p0, Labcd/nH;->gn:Ljava/io/File;

    invoke-virtual {p1}, Labcd/oH;->EQ()Labcd/UE;

    move-result-object v5

    invoke-virtual {v5}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Labcd/WG;-><init>(Ljava/io/File;Labcd/pK;)V

    invoke-virtual {v3}, Labcd/WG;->Hw()Z

    move-result v4

    if-eqz v4, :cond_45

    :try_start_2b
    invoke-direct {p0}, Labcd/nH;->gn()Labcd/nH$g;

    move-result-object v4

    invoke-virtual {v4, v1}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_3c

    invoke-virtual {v4, v5}, Labcd/KK;->remove(I)Labcd/KK;

    move-result-object v4

    invoke-direct {p0, v3, v4, v2}, Labcd/nH;->j6(Labcd/WG;Labcd/KK;Labcd/nH$g;)V
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_40

    :cond_3c
    invoke-virtual {v3}, Labcd/WG;->v5()V

    goto :goto_4d

    :catchall_40
    move-exception p1

    invoke-virtual {v3}, Labcd/WG;->v5()V

    throw p1

    :cond_45
    new-instance p1, Labcd/dD;

    iget-object v0, p0, Labcd/nH;->gn:Ljava/io/File;

    invoke-direct {p1, v0}, Labcd/dD;-><init>(Ljava/io/File;)V

    throw p1

    :cond_4d
    :goto_4d
    iget-object v2, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/KK;

    invoke-virtual {v2, v1}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_5c

    goto :goto_68

    :cond_5c
    invoke-virtual {v2, v3}, Labcd/KK;->remove(I)Labcd/KK;

    move-result-object v3

    iget-object v4, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v4, v2, v3}, Labcd/XG$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    :goto_68
    invoke-static {v1}, Labcd/nH;->v5(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v1}, Labcd/nH;->Zo(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v2}, Labcd/nH;->j6(Ljava/io/File;I)V

    invoke-interface {v0}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ME$a;->Hw()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-virtual {p1}, Labcd/oH;->QX()V

    invoke-virtual {p0, v1}, Labcd/nH;->Hw(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1, v2}, Labcd/nH;->j6(Ljava/io/File;I)V

    :cond_89
    iget-object p1, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0}, Labcd/nH;->Hw()V

    return-void
.end method

.method j6(Labcd/oH;Labcd/LG;)V
    .registers 5

    invoke-virtual {p1}, Labcd/RE;->v5()Labcd/yE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v0

    new-instance v1, Labcd/nH$f;

    invoke-virtual {p1}, Labcd/RE;->VH()Labcd/ME;

    move-result-object p1

    invoke-interface {p1}, Labcd/ME;->v5()Labcd/ME;

    move-result-object p1

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p2, p1, v0}, Labcd/nH$f;-><init>(Labcd/LG;Ljava/lang/String;Labcd/yE;)V

    invoke-direct {p0, v1}, Labcd/nH;->j6(Labcd/nH$c;)V

    return-void
.end method

.method j6(Labcd/oH;Labcd/LG;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Labcd/RE;->VH()Labcd/ME;

    move-result-object p1

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p3}, Labcd/nH;->j6(Labcd/LG;Ljava/lang/String;Ljava/lang/String;)Labcd/nH$e;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/nH;->j6(Labcd/nH$c;)V

    invoke-direct {p0}, Labcd/nH;->Hw()V

    return-void
.end method
