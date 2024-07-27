.class public Labcd/gE;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/lang/String;

.field private static final j6:[Ljava/lang/String;


# instance fields
.field private final FH:Labcd/HD;

.field private final Hw:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Labcd/gE$c;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Labcd/gE;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Labcd/gE;->j6:[Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Labcd/gE;->DW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Labcd/gE;-><init>(Labcd/gE;)V

    return-void
.end method

.method public constructor <init>(Labcd/gE;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/HD;

    invoke-direct {v0}, Labcd/HD;-><init>()V

    iput-object v0, p0, Labcd/gE;->FH:Labcd/HD;

    iput-object p1, p0, Labcd/gE;->v5:Labcd/gE;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Labcd/gE;->VH()Labcd/gE$c;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Labcd/gE;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private static DW(Labcd/gE$d;)Ljava/lang/String;
    .registers 9

    const/16 v7, 0x20

    const/16 v6, 0x9

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0}, Labcd/gE$d;->j6()I

    move-result v1

    if-ltz v1, :cond_7

    const/16 v2, 0x5d

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Labcd/gE$d;->DW()V

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-eq v7, v1, :cond_1

    if-ne v6, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Labcd/gE$d;->j6()I

    move-result v1

    if-ltz v1, :cond_6

    const/16 v2, 0x22

    if-ne v2, v1, :cond_5

    invoke-virtual {p0}, Labcd/gE$d;->DW()V

    goto :goto_1

    :cond_2
    int-to-char v2, v1

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x2e

    if-eq v3, v1, :cond_3

    const/16 v3, 0x2d

    if-ne v3, v1, :cond_4

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    new-instance v1, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->badSectionEntry:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-eq v7, v1, :cond_1

    if-eq v6, v1, :cond_1

    new-instance v1, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->badSectionEntry:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unexpectedEndOfConfigFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unexpectedEndOfConfigFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v4, 0x1

    const/16 v9, 0x20

    const/4 v1, 0x0

    const/16 v8, 0x22

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v2, v6, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_7

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_5

    const/16 v7, 0x5c

    if-eq v6, v7, :cond_4

    if-eq v6, v8, :cond_3

    const/16 v7, 0x23

    if-eq v6, v7, :cond_5

    packed-switch v6, :pswitch_data_0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    if-eqz v3, :cond_2

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v1

    :cond_2
    const-string v0, "\\n\\\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    goto :goto_1

    :pswitch_1
    const-string v6, "\\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v6, "\\b"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v6, "\\\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v6, "\\\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    invoke-virtual {v5, v0, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move v3, v4

    :cond_6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    if-nez v3, :cond_8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_8

    invoke-virtual {v5, v0, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move v3, v4

    :cond_8
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private Hw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Labcd/gE;->v5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/gE;->v5:Labcd/gE;

    if-eqz v0, :cond_1

    invoke-direct {v0, p1, p2, p3}, Labcd/gE;->Hw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private VH()Labcd/gE$c;
    .registers 4

    new-instance v0, Labcd/gE$c;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0}, Labcd/gE;->v5()Labcd/gE$c;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/gE$c;-><init>(Ljava/util/List;Labcd/gE$c;)V

    return-object v0
.end method

.method private Zo()Labcd/gE$c;
    .registers 5

    :cond_0
    iget-object v0, p0, Labcd/gE;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/gE$c;

    invoke-direct {p0}, Labcd/gE;->v5()Labcd/gE$c;

    move-result-object v2

    iget-object v1, v0, Labcd/gE$c;->FH:Labcd/gE$c;

    if-ne v1, v2, :cond_1

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Labcd/gE$c;

    iget-object v3, v0, Labcd/gE$c;->j6:Ljava/util/List;

    invoke-direct {v1, v3, v2}, Labcd/gE$c;-><init>(Ljava/util/List;Labcd/gE$c;)V

    iget-object v2, p0, Labcd/gE;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method private static j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/gE$a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    const/4 v1, -0x1

    :cond_0
    return v1

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/gE$a;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2}, Labcd/gE$a;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/gE$a;

    iget-object v2, v0, Labcd/gE$a;->Hw:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v2}, Labcd/gE$a;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private j6(Labcd/gE$c;Ljava/lang/String;Ljava/lang/String;)Labcd/gE$c;
    .registers 9

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p1, Labcd/gE$c;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p1, Labcd/gE$c;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v2}, Labcd/gE;->j6(Ljava/util/List;)Labcd/gE$c;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/gE$a;

    invoke-virtual {v0, p2, p3}, Labcd/gE$a;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object v4, v0, Labcd/gE$a;->DW:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v4, v0, Labcd/gE$a;->FH:Ljava/lang/String;

    if-eqz v4, :cond_0

    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private j6(Labcd/gE$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Labcd/gE$c;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/gE$c;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Labcd/gE$c;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static {p1, p5}, Labcd/gE;->j6(Labcd/gE$c;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    const/4 v0, -0x1

    move v1, v0

    move v2, v3

    move v4, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    :cond_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ne v2, v0, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v4, v0, :cond_4

    :cond_1
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ne v4, v0, :cond_2

    if-gez v1, :cond_8

    invoke-static {v5, p2, p3}, Labcd/gE;->j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_2
    if-gez v0, :cond_7

    new-instance v0, Labcd/gE$a;

    invoke-direct {v0, v6}, Labcd/gE$a;-><init>(Labcd/gE$a;)V

    iput-object p2, v0, Labcd/gE$a;->DW:Ljava/lang/String;

    iput-object p3, v0, Labcd/gE$a;->FH:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_3
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_6

    :cond_2
    invoke-direct {p0, v5}, Labcd/gE;->j6(Ljava/util/List;)Labcd/gE$c;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/gE$a;

    invoke-virtual {v0, p2, p3, p4}, Labcd/gE$a;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Labcd/gE$a;->j6(Ljava/lang/String;)Labcd/gE$a;

    move-result-object v0

    invoke-interface {v5, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    :goto_4
    add-int/lit8 v3, v4, 0x1

    move v1, v0

    move v4, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v4, 0x1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/gE$a;

    invoke-virtual {v0, p2, p3, p4}, Labcd/gE$a;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v4, v3, -0x1

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    move v4, v3

    goto :goto_1

    :cond_6
    new-instance v3, Labcd/gE$a;

    invoke-direct {v3, v6}, Labcd/gE$a;-><init>(Labcd/gE$a;)V

    iput-object p2, v3, Labcd/gE$a;->DW:Ljava/lang/String;

    iput-object p3, v3, Labcd/gE$a;->FH:Ljava/lang/String;

    iput-object p4, v3, Labcd/gE$a;->Hw:Ljava/lang/String;

    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v3, Labcd/gE$a;->v5:Ljava/lang/String;

    invoke-interface {v5, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_3

    :cond_7
    move v1, v0

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_4
.end method

.method private j6(Ljava/util/List;)Labcd/gE$c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/gE$a;",
            ">;)",
            "Labcd/gE$c;"
        }
    .end annotation

    new-instance v0, Labcd/gE$c;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0}, Labcd/gE;->v5()Labcd/gE$c;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Labcd/gE$c;-><init>(Ljava/util/List;Labcd/gE$c;)V

    return-object v0
.end method

.method private static j6(Labcd/gE$d;)Ljava/lang/String;
    .registers 9

    const/16 v7, 0x3d

    const/16 v6, 0x20

    const/16 v5, 0xa

    const/16 v4, 0x9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0}, Labcd/gE$d;->j6()I

    move-result v1

    if-ltz v1, :cond_a

    if-ne v7, v1, :cond_1

    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eq v6, v1, :cond_2

    if-ne v4, v1, :cond_4

    :cond_2
    invoke-virtual {p0}, Labcd/gE$d;->j6()I

    move-result v1

    if-ltz v1, :cond_9

    if-eq v7, v1, :cond_0

    const/16 v2, 0x3b

    if-eq v2, v1, :cond_3

    const/16 v2, 0x23

    if-eq v2, v1, :cond_3

    if-ne v5, v1, :cond_8

    :cond_3
    invoke-virtual {p0}, Labcd/gE$d;->DW()V

    goto :goto_1

    :cond_4
    int-to-char v2, v1

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_6

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    if-ne v5, v1, :cond_7

    invoke-virtual {p0}, Labcd/gE$d;->DW()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    new-instance v1, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->badEntryName:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    if-eq v6, v1, :cond_2

    if-eq v4, v1, :cond_2

    new-instance v0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->badEntryDelimiter:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unexpectedEndOfConfigFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unexpectedEndOfConfigFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static j6(Labcd/gE$d;ZI)Ljava/lang/String;
    .registers 12

    const/16 v8, 0x5c

    const/16 v7, 0x22

    const/16 v6, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Labcd/gE$d;->j6()I

    move-result v4

    if-gez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->unexpectedEndOfConfigFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ne v6, v4, :cond_5

    if-nez p1, :cond_4

    invoke-virtual {p0}, Labcd/gE$d;->DW()V

    goto :goto_1

    :cond_4
    new-instance v0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->newlineInQuotesNotAllowed:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eq p2, v4, :cond_1

    if-nez p1, :cond_9

    int-to-char v5, v4

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    const/16 v5, 0x3b

    if-eq v5, v4, :cond_7

    const/16 v5, 0x23

    if-ne v5, v4, :cond_9

    :cond_7
    invoke-virtual {p0}, Labcd/gE$d;->DW()V

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    if-eqz v0, :cond_b

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a

    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    move v0, v1

    :cond_b
    if-ne v8, v4, :cond_12

    invoke-virtual {p0}, Labcd/gE$d;->j6()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_11

    if-eq v4, v6, :cond_0

    if-eq v4, v7, :cond_10

    if-eq v4, v8, :cond_f

    const/16 v5, 0x62

    if-eq v4, v5, :cond_e

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_d

    const/16 v5, 0x74

    if-ne v4, v5, :cond_c

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_c
    new-instance v0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->badEscape:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_e
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_11
    new-instance v0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->endOfFileInEscape:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    if-ne v7, v4, :cond_14

    if-eqz p1, :cond_13

    move p1, v1

    goto/16 :goto_0

    :cond_13
    move p1, v2

    goto/16 :goto_0

    :cond_14
    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private static j6(Labcd/gE$c;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/gE$c;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Labcd/gE$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Labcd/gE$c;->j6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Labcd/gE$c;->j6:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static j6(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p0, v1

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static j6(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)[TT;"
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "values"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->enumValuesNotAvailable:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private v5()Labcd/gE$c;
    .registers 2

    iget-object v0, p0, Labcd/gE;->v5:Labcd/gE;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Labcd/gE;->Zo()Labcd/gE$c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/gE;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/gE$c;

    iget-object v0, v0, Labcd/gE$c;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/gE$a;

    invoke-virtual {v0, p1, p2, p3}, Labcd/gE$a;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Labcd/gE$a;->v5:Ljava/lang/String;

    invoke-static {v1, v0}, Labcd/gE;->j6(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected DW()V
    .registers 3

    iget-object v0, p0, Labcd/gE;->FH:Labcd/HD;

    new-instance v1, Labcd/CD;

    invoke-direct {v1}, Labcd/CD;-><init>()V

    invoke-virtual {v0, v1}, Labcd/HD;->j6(Labcd/KD;)V

    return-void
.end method

.method public DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    int-to-long v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 16

    const-wide/32 v8, 0x40000000

    const-wide/32 v6, 0x100000

    const-wide/16 v4, 0x400

    const-wide/16 v2, 0x0

    cmp-long v0, p4, v8

    if-ltz v0, :cond_0

    rem-long v0, p4, v8

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    div-long v2, p4, v8

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " g"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    cmp-long v0, p4, v6

    if-ltz v0, :cond_1

    rem-long v0, p4, v6

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    div-long v2, p4, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    cmp-long v0, p4, v4

    if-ltz v0, :cond_2

    rem-long v0, p4, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    div-long v2, p4, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " k"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    if-eqz p4, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    const/4 v4, 0x0

    iget-object v0, p0, Labcd/gE;->v5:Labcd/gE;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Labcd/gE;->v5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v1, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    new-array v2, v1, [Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v2

    :cond_0
    return-object v0

    :cond_1
    sget-object v0, Labcd/gE;->j6:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method protected FH()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public Hw()Ljava/lang/String;
    .registers 8

    const/16 v6, 0x22

    const/16 v5, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Labcd/gE;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/gE$c;

    iget-object v0, v0, Labcd/gE$c;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/gE$a;

    iget-object v1, v0, Labcd/gE$a;->j6:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, v0, Labcd/gE$a;->DW:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, v0, Labcd/gE$a;->Hw:Ljava/lang/String;

    if-nez v1, :cond_7

    const/16 v1, 0x5b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v0, Labcd/gE$a;->DW:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Labcd/gE$a;->FH:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v0, Labcd/gE$a;->FH:Ljava/lang/String;

    invoke-static {v1}, Labcd/gE;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "\""

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "\""

    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v1, 0x5d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    iget-object v0, v0, Labcd/gE$a;->Zo:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    iget-object v1, v0, Labcd/gE$a;->DW:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v0, Labcd/gE$a;->Hw:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v0, Labcd/gE$a;->j6:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    const/16 v1, 0x9

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, v0, Labcd/gE$a;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Labcd/gE;->DW:Ljava/lang/String;

    iget-object v4, v0, Labcd/gE$a;->v5:Ljava/lang/String;

    if-eq v1, v4, :cond_a

    const-string v1, " ="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Labcd/gE$a;->v5:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v0, Labcd/gE$a;->v5:Ljava/lang/String;

    invoke-static {v1}, Labcd/gE;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, v0, Labcd/gE$a;->Zo:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 11

    int-to-long v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    long-to-int v0, v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->integerValueOutOfRange:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 12

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 14

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, p1, p2, p3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-wide p4

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Labcd/NK;->j6(C)C

    move-result v2

    const/16 v3, 0x67

    if-eq v2, v3, :cond_5

    const/16 v3, 0x6b

    if-eq v2, v3, :cond_4

    const/16 v3, 0x6d

    if-eq v2, v3, :cond_3

    move-wide v2, v4

    :goto_1
    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    mul-long p4, v2, v0

    goto :goto_0

    :cond_3
    const-wide/32 v2, 0x100000

    goto :goto_1

    :cond_4
    const-wide/16 v2, 0x400

    goto :goto_1

    :cond_5
    const-wide/32 v2, 0x40000000

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->invalidIntegerValue:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    const/4 v4, 0x1

    aput-object p3, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Labcd/DD;)Labcd/GD;
    .registers 3

    iget-object v0, p0, Labcd/gE;->FH:Labcd/HD;

    invoke-virtual {v0, p1}, Labcd/HD;->j6(Labcd/DD;)Labcd/GD;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    invoke-static {p4}, Labcd/gE;->j6(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Labcd/gE;->j6([Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method public j6([Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<*>;>([TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p2, p3, p4}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-object p5

    :cond_0
    const/16 v0, 0x20

    const/16 v1, 0x5f

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    array-length v6, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-lt v3, v6, :cond_4

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {v5}, Labcd/NK;->DW(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :goto_2
    move-object p5, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_2
    if-eqz p3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->enumValueNotSupported3:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->enumValueNotSupported2:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object p5, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TRUE"

    invoke-static {v7, v8}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v0, v2

    :cond_6
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FALSE"

    invoke-static {v7, v8}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v1, v2

    goto :goto_3
.end method

.method public j6(Labcd/gE$b;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LgE$b",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0}, Labcd/gE;->Zo()Labcd/gE$c;

    move-result-object v1

    iget-object v0, v1, Labcd/gE$c;->DW:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1, p0}, Labcd/gE$b;->j6(Labcd/gE;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v1, Labcd/gE$c;->DW:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Labcd/gE;->Hw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected j6()V
    .registers 3

    iget-object v0, p0, Labcd/gE;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Labcd/gE;->VH()Labcd/gE$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 13

    const/16 v10, 0x22

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Labcd/gE$d;

    invoke-direct {v5, p1}, Labcd/gE$d;-><init>(Ljava/lang/String;)V

    new-instance v1, Labcd/gE$a;

    invoke-direct {v1, v2}, Labcd/gE$a;-><init>(Labcd/gE$a;)V

    move-object v0, v2

    :goto_0
    invoke-virtual {v5}, Labcd/gE$d;->j6()I

    move-result v3

    if-ne v8, v3, :cond_0

    iget-object v0, p0, Labcd/gE;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v4}, Labcd/gE;->j6(Ljava/util/List;)Labcd/gE$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_0
    int-to-char v3, v3

    const/16 v6, 0xa

    if-ne v6, v3, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Labcd/gE$a;->DW:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v0, v1

    :cond_1
    new-instance v1, Labcd/gE$a;

    invoke-direct {v1, v2}, Labcd/gE$a;-><init>(Labcd/gE$a;)V

    goto :goto_0

    :cond_2
    iget-object v6, v1, Labcd/gE$a;->Zo:Ljava/lang/String;

    if-eqz v6, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Labcd/gE$a;->Zo:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 v6, 0x3b

    if-eq v6, v3, :cond_4

    const/16 v6, 0x23

    if-ne v6, v3, :cond_5

    :cond_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Labcd/gE$a;->Zo:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v6, v1, Labcd/gE$a;->DW:Ljava/lang/String;

    if-nez v6, :cond_7

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v1, Labcd/gE$a;->j6:Ljava/lang/String;

    if-nez v6, :cond_6

    const-string v6, ""

    iput-object v6, v1, Labcd/gE$a;->j6:Ljava/lang/String;

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v1, Labcd/gE$a;->j6:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Labcd/gE$a;->j6:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const/16 v6, 0x5b

    if-ne v6, v3, :cond_a

    invoke-static {v5}, Labcd/gE;->DW(Labcd/gE$d;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Labcd/gE$a;->DW:Ljava/lang/String;

    invoke-virtual {v5}, Labcd/gE$d;->j6()I

    move-result v3

    if-ne v10, v3, :cond_8

    const/4 v3, 0x1

    invoke-static {v5, v3, v10}, Labcd/gE;->j6(Labcd/gE$d;ZI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Labcd/gE$a;->FH:Ljava/lang/String;

    invoke-virtual {v5}, Labcd/gE$d;->j6()I

    move-result v3

    :cond_8
    const/16 v6, 0x5d

    if-ne v6, v3, :cond_9

    const-string v3, ""

    iput-object v3, v1, Labcd/gE$a;->Zo:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    new-instance v0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->badGroupHeader:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-eqz v0, :cond_c

    iget-object v3, v0, Labcd/gE$a;->DW:Ljava/lang/String;

    iput-object v3, v1, Labcd/gE$a;->DW:Ljava/lang/String;

    iget-object v3, v0, Labcd/gE$a;->FH:Ljava/lang/String;

    iput-object v3, v1, Labcd/gE$a;->FH:Ljava/lang/String;

    invoke-virtual {v5}, Labcd/gE$d;->DW()V

    invoke-static {v5}, Labcd/gE;->j6(Labcd/gE$d;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Labcd/gE$a;->Hw:Ljava/lang/String;

    iget-object v3, v1, Labcd/gE$a;->Hw:Ljava/lang/String;

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v1, Labcd/gE$a;->Hw:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Labcd/gE$a;->Hw:Ljava/lang/String;

    sget-object v3, Labcd/gE;->DW:Ljava/lang/String;

    iput-object v3, v1, Labcd/gE$a;->v5:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    invoke-static {v5, v9, v8}, Labcd/gE;->j6(Labcd/gE$d;ZI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Labcd/gE$a;->v5:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    new-instance v0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidLineInConfigFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    :cond_0
    iget-object v0, p0, Labcd/gE;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/gE$c;

    invoke-direct {p0, v0, p1, p2}, Labcd/gE;->j6(Labcd/gE$c;Ljava/lang/String;Ljava/lang/String;)Labcd/gE$c;

    move-result-object v1

    iget-object v2, p0, Labcd/gE;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Labcd/gE;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/gE$c;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Labcd/gE;->j6(Labcd/gE$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Labcd/gE$c;

    move-result-object v0

    iget-object v2, p0, Labcd/gE;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labcd/gE;->FH()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Labcd/gE;->DW()V

    :cond_1
    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 11

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3}, Labcd/gE;->Hw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return p4

    :cond_0
    sget-object v2, Labcd/gE;->DW:Ljava/lang/String;

    if-ne v2, v1, :cond_1

    move p4, v0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v1}, Labcd/NK;->DW(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p4

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->invalidBooleanValue:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object p3, v4, v0

    const/4 v0, 0x2

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
