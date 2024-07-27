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
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Labcd/nH$g;",
            ">;"
        }
    .end annotation
.end field

.field private final u7:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LKK",
            "<",
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
    .registers 5

    invoke-direct {p0}, Labcd/OE;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Labcd/nH;->tp:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Labcd/nH;->we:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v0

    iput-object p1, p0, Labcd/nH;->FH:Labcd/IG;

    invoke-virtual {p1}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Labcd/nH;->Hw:Ljava/io/File;

    iget-object v1, p0, Labcd/nH;->Hw:Ljava/io/File;

    const-string v2, "refs/"

    invoke-virtual {v0, v1, v2}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Labcd/nH;->v5:Ljava/io/File;

    iget-object v1, p0, Labcd/nH;->Hw:Ljava/io/File;

    const-string v2, "logs"

    invoke-virtual {v0, v1, v2}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Labcd/nH;->Zo:Ljava/io/File;

    iget-object v1, p0, Labcd/nH;->Hw:Ljava/io/File;

    const-string v2, "logs/refs/"

    invoke-virtual {v0, v1, v2}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Labcd/nH;->VH:Ljava/io/File;

    iget-object v1, p0, Labcd/nH;->Hw:Ljava/io/File;

    const-string v2, "packed-refs"

    invoke-virtual {v0, v1, v2}, Labcd/pK;->j6(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Labcd/nH;->gn:Ljava/io/File;

    iget-object v0, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Labcd/KK;->DW()Labcd/KK;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Labcd/nH;->tp:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Labcd/nH$g;->Hw:Labcd/nH$g;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private DW(Labcd/ME;)Labcd/BE;
    .registers 8

    new-instance v1, Labcd/qG;

    invoke-virtual {p0}, Labcd/nH;->FH()Labcd/UE;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/qG;-><init>(Labcd/UE;)V

    :try_start_0
    invoke-interface {p1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v2

    instance-of v0, v2, Labcd/lG;

    if-eqz v0, :cond_0

    new-instance v0, Labcd/BE$b;

    invoke-interface {p1}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object v3

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v5

    invoke-virtual {v1, v2}, Labcd/qG;->FH(Labcd/iG;)Labcd/iG;

    move-result-object v2

    invoke-virtual {v2}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v2

    invoke-direct {v0, v3, v4, v5, v2}, Labcd/BE$b;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;Labcd/yE;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Labcd/qG;->EQ()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Labcd/BE$a;

    invoke-interface {p1}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object v2

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Labcd/BE$a;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Labcd/qG;->EQ()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Labcd/qG;->EQ()V

    throw v0
.end method

.method static synthetic DW(Labcd/nH;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2

    iget-object v0, p0, Labcd/nH;->tp:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private Hw()V
    .registers 4

    iget-object v0, p0, Labcd/nH;->we:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Labcd/nH;->we:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/nH;->FH:Labcd/IG;

    new-instance v1, Labcd/ID;

    invoke-direct {v1}, Labcd/ID;-><init>()V

    invoke-virtual {v0, v1}, Labcd/UE;->j6(Labcd/KD;)V

    :cond_0
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

    if-nez v0, :cond_0

    const-string v0, "refs/heads/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "refs/remotes/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "refs/stash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Labcd/nH;->gn()Labcd/nH$g;

    move-result-object v1

    iget-object v2, p0, Labcd/nH;->tp:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private gn()Labcd/nH$g;
    .registers 5

    iget-object v0, p0, Labcd/nH;->gn:Ljava/io/File;

    invoke-static {v0}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v1

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Labcd/nH;->gn:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Labcd/hE;->Zo:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Labcd/nH$g;

    invoke-direct {p0, v2}, Labcd/nH;->j6(Ljava/io/BufferedReader;)Labcd/KK;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Labcd/nH$g;-><init>(Labcd/KK;Labcd/LG;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v0

    :catch_0
    move-exception v0

    sget-object v0, Labcd/nH$g;->Hw:Labcd/nH$g;

    goto :goto_0
.end method

.method private j6(Labcd/KK;)Labcd/KK;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LKK",
            "<+",
            "Labcd/ME;",
            ">;)",
            "LKK",
            "<",
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
            "LKK",
            "<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v2, 0x0

    new-instance v6, Labcd/KK$a;

    invoke-direct {v6}, Labcd/KK$a;-><init>()V

    const/4 v0, 0x0

    move v1, v2

    move v3, v2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v6}, Labcd/KK$a;->DW()V

    :cond_1
    invoke-virtual {v6}, Labcd/KK$a;->FH()Labcd/KK;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x23

    if-ne v7, v8, :cond_3

    const-string v7, "# pack-refs with:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v1, 0x11

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, " peeled"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5e

    if-ne v7, v8, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v7

    new-instance v4, Labcd/BE$b;

    sget-object v8, Labcd/ME$a;->FH:Labcd/ME$a;

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-direct {v4, v8, v9, v0, v7}, Labcd/BE$b;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;Labcd/yE;)V

    invoke-virtual {v6}, Labcd/KK$a;->j6()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0, v4}, Labcd/KK$a;->j6(ILabcd/ME;)V

    move-object v0, v4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->peeledLineBeforeRef:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v4, v7, v9}, Labcd/nH;->j6(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    if-eqz v1, :cond_7

    new-instance v4, Labcd/BE$a;

    sget-object v9, Labcd/ME$a;->FH:Labcd/ME$a;

    invoke-direct {v4, v9, v7, v8}, Labcd/BE$a;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    :goto_1
    if-eqz v0, :cond_6

    invoke-static {v0, v4}, Labcd/NE;->DW(Labcd/ME;Labcd/ME;)I

    move-result v0

    if-lez v0, :cond_6

    move v3, v5

    :cond_6
    invoke-virtual {v6, v4}, Labcd/KK$a;->j6(Labcd/ME;)V

    move-object v0, v4

    goto/16 :goto_0

    :cond_7
    new-instance v4, Labcd/BE$c;

    sget-object v9, Labcd/ME$a;->FH:Labcd/ME$a;

    invoke-direct {v4, v9, v7, v8}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    goto :goto_1
.end method

.method private j6(Labcd/ME;ILjava/lang/String;Labcd/KK;Labcd/KK;)Labcd/ME;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/ME;",
            "I",
            "Ljava/lang/String;",
            "LKK",
            "<",
            "Labcd/nH$c;",
            ">;",
            "LKK",
            "<",
            "Labcd/ME;",
            ">;)",
            "Labcd/ME;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-interface {p1}, Labcd/ME;->Zo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v0

    const/4 v1, 0x5

    if-gt v1, p2, :cond_1

    move-object p1, v6

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    if-eqz p4, :cond_4

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {p4, v1}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v1

    :cond_2
    :goto_1
    add-int/lit8 v2, p2, 0x1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Labcd/nH;->j6(Labcd/ME;ILjava/lang/String;Labcd/KK;Labcd/KK;)Labcd/ME;

    move-result-object v1

    if-nez v1, :cond_5

    move-object p1, v6

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p5, v0}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Labcd/nH;->j6(Ljava/lang/String;Labcd/KK;)Labcd/ME;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    new-instance v0, Labcd/kF;

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Labcd/kF;-><init>(Ljava/lang/String;Labcd/ME;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private static j6(Labcd/ME;Labcd/BE;)Labcd/ME;
    .registers 4

    invoke-interface {p0}, Labcd/ME;->Zo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v0

    invoke-static {v0, p1}, Labcd/nH;->j6(Labcd/ME;Labcd/BE;)Labcd/ME;

    move-result-object v0

    new-instance p1, Labcd/kF;

    invoke-interface {p0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Labcd/kF;-><init>(Ljava/lang/String;Labcd/ME;)V

    :cond_0
    return-object p1
.end method

.method private j6(Ljava/lang/String;Labcd/KK;)Labcd/ME;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "LKK",
            "<",
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

    move-result v3

    if-ltz v3, :cond_4

    invoke-virtual {v0, v3}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v1

    check-cast v1, Labcd/nH$c;

    invoke-direct {p0, v1, p1}, Labcd/nH;->j6(Labcd/nH$c;Ljava/lang/String;)Labcd/nH$c;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v1, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3}, Labcd/KK;->remove(I)Labcd/KK;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    invoke-virtual {p2, p1}, Labcd/KK;->FH(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    if-ne v1, v2, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3, v2}, Labcd/KK;->DW(ILabcd/ME;)Labcd/KK;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Labcd/nH;->j6(Labcd/nH$c;Ljava/lang/String;)Labcd/nH$c;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {p2, p1}, Labcd/KK;->FH(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_1
    sget-object v4, Labcd/nH;->DW:[Ljava/lang/String;

    array-length v5, v4

    if-lt v1, v5, :cond_7

    iget-object v1, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3, v2}, Labcd/KK;->j6(ILabcd/ME;)Labcd/KK;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_6
    move-object v0, v2

    goto :goto_0

    :cond_7
    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v0, v2

    goto :goto_0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private j6(Labcd/nH$c;Ljava/lang/String;)Labcd/nH$c;
    .registers 13

    const/16 v9, 0x1000

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, p2}, Labcd/nH;->Hw(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz p1, :cond_3

    invoke-interface {p1}, Labcd/nH$c;->VH()Labcd/LG;

    move-result-object v0

    invoke-virtual {v0, v2}, Labcd/LG;->j6(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, p1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-static {v2}, Labcd/LG;->DW(Ljava/io/File;)Labcd/LG;

    move-result-object v3

    const/16 v4, 0x1000

    :try_start_0
    invoke-static {v2, v4}, Labcd/BK;->DW(Ljava/io/File;I)[B
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    array-length v2, v4

    if-eqz v2, :cond_0

    invoke-static {v4, v2}, Labcd/nH;->j6([BI)Z

    move-result v5

    if-eqz v5, :cond_7

    if-eq v2, v9, :cond_0

    :goto_2
    if-lez v2, :cond_2

    add-int/lit8 v1, v2, -0x1

    aget-byte v1, v4, v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    const/4 v1, 0x6

    if-lt v2, v1, :cond_6

    const/4 v1, 0x5

    invoke-static {v4, v1, v2}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Labcd/ME;->Zo()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v2

    invoke-interface {v2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v3}, Labcd/LG;->DW(Labcd/LG;)V

    move-object v1, p1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_5
    invoke-static {v3, p2, v1}, Labcd/nH;->j6(Labcd/LG;Ljava/lang/String;Ljava/lang/String;)Labcd/nH$e;

    move-result-object v1

    goto :goto_0

    :cond_6
    invoke-static {v4, v6, v2}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->notARef:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p2, v3, v6

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    const/16 v5, 0x28

    if-lt v2, v5, :cond_0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v4, v1}, Labcd/yE;->v5([BI)Labcd/yE;

    move-result-object v5

    if-eqz p1, :cond_8

    invoke-interface {p1}, Labcd/ME;->Zo()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {p1}, Labcd/ME;->getTarget()Labcd/ME;

    move-result-object v1

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    invoke-virtual {v1, v5}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v3}, Labcd/LG;->DW(Labcd/LG;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, p1

    goto/16 :goto_0

    :cond_8
    new-instance v1, Labcd/nH$f;

    invoke-direct {v1, v3, p2, v5}, Labcd/nH$f;-><init>(Labcd/LG;Ljava/lang/String;Labcd/yE;)V

    goto/16 :goto_0

    :goto_3
    if-lez v0, :cond_9

    add-int/lit8 v1, v0, -0x1

    aget-byte v1, v4, v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_9

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_9
    invoke-static {v4, v6, v0}, Labcd/IK;->j6([BII)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->notARef:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p2, v3, v6

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic j6(Labcd/nH;Labcd/nH$c;Ljava/lang/String;)Labcd/nH$c;
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/nH;->j6(Labcd/nH$c;Ljava/lang/String;)Labcd/nH$c;

    move-result-object v0

    return-object v0
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
    .registers 2

    iget-object v0, p0, Labcd/nH;->v5:Ljava/io/File;

    return-object v0
.end method

.method private static j6(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j6(Labcd/WG;Labcd/KK;Labcd/nH$g;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/WG;",
            "LKK",
            "<",
            "Labcd/ME;",
            ">;",
            "Labcd/nH$g;",
            ")V"
        }
    .end annotation

    new-instance v0, Labcd/mH;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Labcd/mH;-><init>(Labcd/nH;Labcd/KK;Labcd/WG;Labcd/nH$g;Labcd/KK;)V

    invoke-virtual {v0}, Labcd/SE;->DW()V

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

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0}, Labcd/nH;->Hw()V

    return-void
.end method

.method static j6(Ljava/io/File;I)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    :goto_0
    if-lt v0, p1, :cond_3

    :cond_1
    return-void

    :cond_2
    new-instance v1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->fileCannotBeDeleted:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private j6(Ljava/lang/String;[B)V
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Labcd/nH;->Zo(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {p0}, Labcd/nH;->VH()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Labcd/nH;->VH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Labcd/nH;->FH()Labcd/UE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    sget-object v1, Labcd/yH;->j6:Labcd/gE$b;

    invoke-virtual {v0, v1}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yH;

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Labcd/yH;->FH()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-gtz v3, :cond_5

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotCreateDirectory:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v0

    :cond_6
    :try_start_3
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_7
    throw v1
.end method

.method private static j6([BI)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x6

    if-ge p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-byte v2, p0, v0

    const/16 v3, 0x72

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v1

    const/16 v3, 0x65

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static v5(Ljava/lang/String;)I
    .registers 4

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-gez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method private v5()Labcd/KK;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LKK",
            "<",
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

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Labcd/KK$a;->FH()Labcd/KK;

    move-result-object v1

    iget-object v2, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Labcd/nH;->Zo()Labcd/nH$g;

    move-result-object v5

    iget-object v0, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/KK;

    new-instance v3, Labcd/nH$d;

    invoke-direct {v3, p0, v0}, Labcd/nH$d;-><init>(Labcd/nH;Labcd/KK;)V

    invoke-virtual {v3, p1}, Labcd/nH$d;->j6(Ljava/lang/String;)V

    iget-object v1, v3, Labcd/nH$d;->Hw:Labcd/KK$a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Labcd/KK$a;->DW()V

    iget-object v1, v3, Labcd/nH$d;->Hw:Labcd/KK$a;

    invoke-virtual {v1}, Labcd/KK$a;->FH()Labcd/KK;

    move-result-object v1

    iget-object v4, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    move-object v0, v1

    :cond_1
    invoke-direct {p0}, Labcd/nH;->Hw()V

    iget-object v7, v3, Labcd/nH$d;->FH:Labcd/KK$a;

    move-object v4, v0

    move v6, v2

    :cond_2
    :goto_0
    invoke-virtual {v7}, Labcd/KK$a;->j6()I

    move-result v0

    if-lt v6, v0, :cond_3

    invoke-virtual {v7}, Labcd/KK$a;->DW()V

    invoke-direct {p0, v4}, Labcd/nH;->j6(Labcd/KK;)Labcd/KK;

    new-instance v0, Labcd/MK;

    invoke-virtual {v7}, Labcd/KK$a;->FH()Labcd/KK;

    move-result-object v1

    invoke-direct {v0, p1, v5, v4, v1}, Labcd/MK;-><init>(Ljava/lang/String;Labcd/KK;Labcd/KK;Labcd/KK;)V

    return-object v0

    :cond_3
    invoke-virtual {v7, v6}, Labcd/KK$a;->j6(I)Labcd/ME;

    move-result-object v1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Labcd/nH;->j6(Labcd/ME;ILjava/lang/String;Labcd/KK;Labcd/KK;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v7, v6, v0}, Labcd/KK$a;->j6(ILabcd/ME;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v7, v6}, Labcd/KK$a;->DW(I)V

    invoke-interface {v1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {v4, v0}, Labcd/KK;->remove(I)Labcd/KK;

    move-result-object v4

    goto :goto_0
.end method

.method public DW()V
    .registers 5

    const/4 v3, 0x5

    iget-object v0, p0, Labcd/nH;->v5:Ljava/io/File;

    invoke-static {v0}, Labcd/zK;->DW(Ljava/io/File;)V

    iget-object v0, p0, Labcd/nH;->Zo:Ljava/io/File;

    invoke-static {v0}, Labcd/zK;->DW(Ljava/io/File;)V

    iget-object v0, p0, Labcd/nH;->VH:Ljava/io/File;

    invoke-static {v0}, Labcd/zK;->DW(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/nH;->v5:Ljava/io/File;

    const-string v2, "refs/heads/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/zK;->DW(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/nH;->v5:Ljava/io/File;

    const-string v2, "refs/tags/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/zK;->DW(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/nH;->VH:Ljava/io/File;

    const-string v2, "refs/heads/"

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
    .registers 10

    const/4 v2, 0x0

    const/16 v7, 0x2f

    const/4 v1, 0x1

    invoke-direct {p0}, Labcd/nH;->Zo()Labcd/nH$g;

    move-result-object v3

    invoke-direct {p0}, Labcd/nH;->v5()Labcd/KK;

    move-result-object v4

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    :goto_0
    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    invoke-virtual {v3}, Labcd/KK;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    invoke-virtual {v3, v0}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v4, v5}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    invoke-virtual {v4}, Labcd/KK;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v4, v0}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v0

    check-cast v0, Labcd/nH$c;

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Labcd/KK;->j6(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v5}, Labcd/KK;->j6(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method Hw(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const-string v0, "refs/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Labcd/nH;->v5:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/nH;->Hw:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method Zo(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const-string v0, "refs/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Labcd/nH;->VH:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Labcd/nH;->Zo:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public j6(Labcd/ME;)Labcd/ME;
    .registers 7

    invoke-interface {p1}, Labcd/ME;->v5()Labcd/ME;

    move-result-object v1

    invoke-interface {v1}, Labcd/ME;->Hw()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-direct {p0, v1}, Labcd/nH;->DW(Labcd/ME;)Labcd/BE;

    move-result-object v2

    invoke-interface {v1}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ME$a;->Hw()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/KK;

    invoke-interface {v1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {v0, v3}, Labcd/KK;->get(I)Labcd/ME;

    move-result-object v4

    if-ne v4, v1, :cond_2

    check-cast v1, Labcd/nH$c;

    invoke-interface {v1, v2}, Labcd/nH$c;->j6(Labcd/BE;)Labcd/nH$c;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Labcd/KK;->DW(ILabcd/ME;)Labcd/KK;

    move-result-object v1

    iget-object v3, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_2
    invoke-static {p1, v2}, Labcd/nH;->j6(Labcd/ME;Labcd/BE;)Labcd/ME;

    move-result-object p1

    goto :goto_0
.end method

.method public j6(Ljava/lang/String;)Labcd/ME;
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Labcd/nH;->Zo()Labcd/nH$g;

    move-result-object v5

    sget-object v6, Labcd/OE;->j6:[Ljava/lang/String;

    array-length v7, v6

    move-object v0, v3

    move v4, v2

    :goto_0
    if-lt v4, v7, :cond_0

    :goto_1
    invoke-direct {p0}, Labcd/nH;->Hw()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    aget-object v1, v6, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Labcd/nH;->j6(Ljava/lang/String;Labcd/KK;)Labcd/ME;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Labcd/nH;->j6(Labcd/ME;ILjava/lang/String;Labcd/KK;Labcd/KK;)Labcd/ME;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic j6(Ljava/lang/String;Z)Labcd/RE;
    .registers 4

    invoke-virtual {p0, p1, p2}, Labcd/nH;->j6(Ljava/lang/String;Z)Labcd/oH;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;Z)Labcd/oH;
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Labcd/nH;->Zo()Labcd/nH$g;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Labcd/nH;->j6(Ljava/lang/String;Labcd/KK;)Labcd/ME;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Labcd/nH;->j6(Labcd/ME;ILjava/lang/String;Labcd/KK;Labcd/KK;)Labcd/ME;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_2

    new-instance v0, Labcd/BE$c;

    sget-object v1, Labcd/ME$a;->j6:Labcd/ME$a;

    invoke-direct {v0, v1, p1, v3}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    :goto_0
    new-instance v1, Labcd/oH;

    invoke-direct {v1, p0, v0}, Labcd/oH;-><init>(Labcd/nH;Labcd/ME;)V

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Labcd/RE;->Ws()V

    :cond_1
    return-object v1

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v1}, Labcd/ME;->Zo()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    new-instance v0, Labcd/BE$c;

    sget-object v3, Labcd/ME$a;->DW:Labcd/ME$a;

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    invoke-direct {v0, v3, p1, v1}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public j6()V
    .registers 1

    return-void
.end method

.method j6(Labcd/RE;Ljava/lang/String;Z)V
    .registers 10

    const/16 v5, 0x20

    invoke-virtual {p1}, Labcd/RE;->Zo()Labcd/yE;

    move-result-object v1

    invoke-virtual {p1}, Labcd/RE;->v5()Labcd/yE;

    move-result-object v2

    invoke-virtual {p1}, Labcd/RE;->VH()Labcd/ME;

    move-result-object v3

    invoke-virtual {p1}, Labcd/RE;->u7()Labcd/KE;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v0, Labcd/KE;

    iget-object v4, p0, Labcd/nH;->FH:Labcd/IG;

    invoke-direct {v0, v4}, Labcd/KE;-><init>(Labcd/UE;)V

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Labcd/yE;->j6(Labcd/yE;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/yE;->j6(Labcd/yE;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/KE;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz p3, :cond_1

    invoke-interface {v3}, Labcd/ME;->Zo()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Labcd/nH;->j6(Ljava/lang/String;[B)V

    invoke-interface {v3}, Labcd/ME;->v5()Labcd/ME;

    move-result-object v1

    invoke-interface {v1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Labcd/nH;->j6(Ljava/lang/String;[B)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Labcd/KE;

    invoke-direct {v0, v4}, Labcd/KE;-><init>(Labcd/KE;)V

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Labcd/nH;->j6(Ljava/lang/String;[B)V

    goto :goto_1
.end method

.method j6(Labcd/oH;)V
    .registers 8

    invoke-virtual {p1}, Labcd/RE;->VH()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->v5()Labcd/ME;

    move-result-object v1

    invoke-interface {v1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Labcd/nH;->Zo()Labcd/nH$g;

    move-result-object v0

    invoke-virtual {v0, v2}, Labcd/KK;->j6(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Labcd/WG;

    iget-object v4, p0, Labcd/nH;->gn:Ljava/io/File;

    invoke-virtual {p1}, Labcd/oH;->EQ()Labcd/UE;

    move-result-object v5

    invoke-virtual {v5}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Labcd/WG;-><init>(Ljava/io/File;Labcd/pK;)V

    invoke-virtual {v3}, Labcd/WG;->Hw()Z

    move-result v4

    if-eqz v4, :cond_3

    :try_start_0
    invoke-direct {p0}, Labcd/nH;->gn()Labcd/nH$g;

    move-result-object v4

    invoke-virtual {v4, v2}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    invoke-virtual {v4, v5}, Labcd/KK;->remove(I)Labcd/KK;

    move-result-object v4

    invoke-direct {p0, v3, v4, v0}, Labcd/nH;->j6(Labcd/WG;Labcd/KK;Labcd/nH$g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v3}, Labcd/WG;->v5()V

    :cond_1
    iget-object v0, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/KK;

    invoke-virtual {v0, v2}, Labcd/KK;->DW(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_4

    :goto_0
    invoke-static {v2}, Labcd/nH;->v5(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v2}, Labcd/nH;->Zo(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v0}, Labcd/nH;->j6(Ljava/io/File;I)V

    invoke-interface {v1}, Labcd/ME;->j6()Labcd/ME$a;

    move-result-object v1

    invoke-virtual {v1}, Labcd/ME$a;->Hw()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Labcd/oH;->QX()V

    invoke-virtual {p0, v2}, Labcd/nH;->Hw(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Labcd/nH;->j6(Ljava/io/File;I)V

    :cond_2
    iget-object v0, p0, Labcd/nH;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0}, Labcd/nH;->Hw()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Labcd/WG;->v5()V

    throw v0

    :cond_3
    new-instance v0, Labcd/dD;

    iget-object v1, p0, Labcd/nH;->gn:Ljava/io/File;

    invoke-direct {v0, v1}, Labcd/dD;-><init>(Ljava/io/File;)V

    throw v0

    :cond_4
    invoke-virtual {v0, v3}, Labcd/KK;->remove(I)Labcd/KK;

    move-result-object v3

    iget-object v4, p0, Labcd/nH;->u7:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method j6(Labcd/oH;Labcd/LG;)V
    .registers 6

    invoke-virtual {p1}, Labcd/RE;->v5()Labcd/yE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v0

    new-instance v1, Labcd/nH$f;

    invoke-virtual {p1}, Labcd/RE;->VH()Labcd/ME;

    move-result-object v2

    invoke-interface {v2}, Labcd/ME;->v5()Labcd/ME;

    move-result-object v2

    invoke-interface {v2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2, v0}, Labcd/nH$f;-><init>(Labcd/LG;Ljava/lang/String;Labcd/yE;)V

    invoke-direct {p0, v1}, Labcd/nH;->j6(Labcd/nH$c;)V

    return-void
.end method

.method j6(Labcd/oH;Labcd/LG;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p1}, Labcd/RE;->VH()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p3}, Labcd/nH;->j6(Labcd/LG;Ljava/lang/String;Ljava/lang/String;)Labcd/nH$e;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/nH;->j6(Labcd/nH$c;)V

    invoke-direct {p0}, Labcd/nH;->Hw()V

    return-void
.end method
