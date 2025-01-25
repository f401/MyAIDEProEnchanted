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
            "Ljava/util/concurrent/atomic/AtomicReference<",
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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/HD;

    invoke-direct {v0}, Labcd/HD;-><init>()V

    iput-object v0, p0, Labcd/gE;->FH:Labcd/HD;

    iput-object p1, p0, Labcd/gE;->v5:Labcd/gE;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Labcd/gE;->VH()Labcd/gE$c;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Labcd/gE;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private static DW(Labcd/gE$d;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {p0}, Labcd/gE$d;->j6()I

    move-result v1

    if-ltz v1, :cond_7b

    const/16 v2, 0x5d

    if-ne v2, v1, :cond_13

    :goto_f
    invoke-virtual {p0}, Labcd/gE$d;->DW()V

    goto :goto_51

    :cond_13
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x9

    const/16 v5, 0x20

    if-eq v5, v1, :cond_46

    if-ne v4, v1, :cond_1e

    goto :goto_46

    :cond_1e
    int-to-char v4, v1

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_42

    const/16 v5, 0x2e

    if-eq v5, v1, :cond_42

    const/16 v5, 0x2d

    if-ne v5, v1, :cond_2e

    goto :goto_42

    :cond_2e
    new-instance p0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->badSectionEntry:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    :goto_42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_46
    :goto_46
    invoke-virtual {p0}, Labcd/gE$d;->j6()I

    move-result v1

    if-ltz v1, :cond_6f

    const/16 v6, 0x22

    if-ne v6, v1, :cond_56

    goto :goto_f

    :goto_51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_56
    if-eq v5, v1, :cond_46

    if-ne v4, v1, :cond_5b

    goto :goto_46

    :cond_5b
    new-instance p0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->badSectionEntry:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6f
    new-instance p0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->unexpectedEndOfConfigFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7b
    new-instance p0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->unexpectedEndOfConfigFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Labcd/XC;-><init>(Ljava/lang/String;)V

    goto :goto_88

    :goto_87
    throw p0

    :goto_88
    goto :goto_87
.end method

.method private static DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x22

    if-lt v2, v5, :cond_1f

    if-eqz v3, :cond_1a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x20

    const/4 v8, 0x1

    if-eq v5, v7, :cond_63

    const/16 v7, 0x3b

    if-eq v5, v7, :cond_59

    const/16 v7, 0x5c

    if-eq v5, v7, :cond_53

    if-eq v5, v6, :cond_50

    const/16 v7, 0x23

    if-eq v5, v7, :cond_59

    packed-switch v5, :pswitch_data_80

    goto :goto_5f

    :pswitch_3a  #0xa
    if-eqz v3, :cond_40

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :cond_40
    const-string v4, "\\n\\\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    goto :goto_7d

    :pswitch_4a  #0x9
    const-string v5, "\\t"

    goto :goto_55

    :pswitch_4d  #0x8
    const-string v5, "\\b"

    goto :goto_55

    :cond_50
    const-string v5, "\\\""

    goto :goto_55

    :cond_53
    const-string v5, "\\\\"

    :goto_55
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    :cond_59
    if-nez v3, :cond_5f

    invoke-virtual {v0, v4, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    :cond_5f
    :goto_5f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7d

    :cond_63
    if-nez v3, :cond_7a

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_7a

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_7a

    invoke-virtual {v0, v4, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    :cond_7a
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :pswitch_data_80
    .packed-switch 0x8
        :pswitch_4d  #00000008
        :pswitch_4a  #00000009
        :pswitch_3a  #0000000a
    .end packed-switch
.end method

.method private Hw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Labcd/gE;->v5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_e
    iget-object v0, p0, Labcd/gE;->v5:Labcd/gE;

    if-eqz v0, :cond_17

    invoke-direct {v0, p1, p2, p3}, Labcd/gE;->Hw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_17
    const/4 p1, 0x0

    return-object p1
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

    move-result-object v1

    iget-object v2, v0, Labcd/gE$c;->FH:Labcd/gE$c;

    if-ne v2, v1, :cond_11

    return-object v0

    :cond_11
    new-instance v2, Labcd/gE$c;

    iget-object v3, v0, Labcd/gE$c;->j6:Ljava/util/List;

    invoke-direct {v2, v3, v1}, Labcd/gE$c;-><init>(Ljava/util/List;Labcd/gE$c;)V

    iget-object v1, p0, Labcd/gE;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v2}, Labcd/XG$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2
.end method

.method private static j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labcd/gE$a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_9

    const/4 p0, -0x1

    return p0

    :cond_9
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/gE$a;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Labcd/gE$a;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    :goto_16
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1f

    goto :goto_2e

    :cond_1f
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/gE$a;

    iget-object v2, v1, Labcd/gE$a;->Hw:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2}, Labcd/gE$a;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_16

    :cond_2e
    :goto_2e
    return v0

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private j6(Labcd/gE$c;Ljava/lang/String;Ljava/lang/String;)Labcd/gE$c;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Labcd/gE$c;->j6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p1, Labcd/gE$c;->j6:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-direct {p0, v0}, Labcd/gE;->j6(Ljava/util/List;)Labcd/gE$c;

    move-result-object p1

    return-object p1

    :cond_1d
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/gE$a;

    invoke-virtual {v2, p2, p3}, Labcd/gE$a;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v1, 0x1

    goto :goto_12

    :cond_2b
    if-eqz v1, :cond_36

    iget-object v3, v2, Labcd/gE$a;->DW:Ljava/lang/String;

    if-nez v3, :cond_36

    iget-object v3, v2, Labcd/gE$a;->FH:Ljava/lang/String;

    if-nez v3, :cond_36

    goto :goto_12

    :cond_36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12
.end method

.method private j6(Labcd/gE$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Labcd/gE$c;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/gE$c;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Labcd/gE$c;"
        }
    .end annotation

    invoke-static {p1, p5}, Labcd/gE;->j6(Labcd/gE$c;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_35

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_15

    goto :goto_35

    :cond_15
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/gE$a;

    invoke-virtual {v3, p2, p3, p4}, Labcd/gE$a;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Labcd/gE$a;->j6(Ljava/lang/String;)Labcd/gE$a;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_35
    :goto_35
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_5e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5e

    :goto_41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_48

    goto :goto_5e

    :cond_48
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/gE$a;

    invoke-virtual {v0, p2, p3, p4}, Labcd/gE$a;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    add-int/lit8 v0, v3, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_41

    :cond_5c
    move v0, v3

    goto :goto_41

    :cond_5e
    :goto_5e
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_a5

    if-gez v2, :cond_70

    invoke-static {p1, p2, p3}, Labcd/gE;->j6(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :cond_70
    const/4 v0, 0x0

    if-gez v2, :cond_83

    new-instance v2, Labcd/gE$a;

    invoke-direct {v2, v0}, Labcd/gE$a;-><init>(Labcd/gE$a;)V

    iput-object p2, v2, Labcd/gE$a;->DW:Ljava/lang/String;

    iput-object p3, v2, Labcd/gE$a;->FH:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :cond_83
    :goto_83
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_8a

    goto :goto_a5

    :cond_8a
    new-instance v3, Labcd/gE$a;

    invoke-direct {v3, v0}, Labcd/gE$a;-><init>(Labcd/gE$a;)V

    iput-object p2, v3, Labcd/gE$a;->DW:Ljava/lang/String;

    iput-object p3, v3, Labcd/gE$a;->FH:Ljava/lang/String;

    iput-object p4, v3, Labcd/gE$a;->Hw:Ljava/lang/String;

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Labcd/gE$a;->v5:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    :cond_a5
    :goto_a5
    invoke-direct {p0, p1}, Labcd/gE;->j6(Ljava/util/List;)Labcd/gE$c;

    move-result-object p1

    return-object p1
.end method

.method private j6(Ljava/util/List;)Labcd/gE$c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labcd/gE$a;",
            ">;)",
            "Labcd/gE$c;"
        }
    .end annotation

    new-instance v0, Labcd/gE$c;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Labcd/gE;->v5()Labcd/gE$c;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Labcd/gE$c;-><init>(Ljava/util/List;Labcd/gE$c;)V

    return-object v0
.end method

.method private static j6(Labcd/gE$d;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {p0}, Labcd/gE$d;->j6()I

    move-result v1

    if-ltz v1, :cond_83

    const/16 v2, 0x3d

    if-ne v2, v1, :cond_10

    goto :goto_72

    :cond_10
    const/16 v3, 0xa

    const/16 v4, 0x9

    const/16 v5, 0x20

    if-eq v5, v1, :cond_4a

    if-ne v4, v1, :cond_1b

    goto :goto_4a

    :cond_1b
    int-to-char v2, v1

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_46

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_27

    goto :goto_46

    :cond_27
    if-ne v3, v1, :cond_30

    invoke-virtual {p0}, Labcd/gE$d;->DW()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_72

    :cond_30
    new-instance p0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->badEntryName:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    :goto_46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Labcd/gE$d;->j6()I

    move-result v1

    if-ltz v1, :cond_77

    if-ne v2, v1, :cond_53

    goto :goto_72

    :cond_53
    const/16 v6, 0x3b

    if-eq v6, v1, :cond_6f

    const/16 v6, 0x23

    if-eq v6, v1, :cond_6f

    if-ne v3, v1, :cond_5e

    goto :goto_6f

    :cond_5e
    if-eq v5, v1, :cond_4a

    if-ne v4, v1, :cond_63

    goto :goto_4a

    :cond_63
    new-instance p0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->badEntryDelimiter:Ljava/lang/String;

    invoke-direct {p0, v0}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6f
    :goto_6f
    invoke-virtual {p0}, Labcd/gE$d;->DW()V

    :goto_72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_77
    new-instance p0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->unexpectedEndOfConfigFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    new-instance p0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->unexpectedEndOfConfigFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Labcd/XC;-><init>(Ljava/lang/String;)V

    goto :goto_90

    :goto_8f
    throw p0

    :goto_90
    goto :goto_8f
.end method

.method private static j6(Labcd/gE$d;ZI)Ljava/lang/String;
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_7
    :goto_7
    invoke-virtual {p0}, Labcd/gE$d;->j6()I

    move-result v3

    if-gez v3, :cond_20

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_4e

    :cond_14
    new-instance p0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->unexpectedEndOfConfigFile:Ljava/lang/String;

    invoke-direct {p0, p1}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    const/16 v4, 0xa

    if-ne v4, v3, :cond_36

    if-nez p1, :cond_2a

    :cond_26
    :goto_26
    invoke-virtual {p0}, Labcd/gE$d;->DW()V

    goto :goto_4e

    :cond_2a
    new-instance p0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->newlineInQuotesNotAllowed:Ljava/lang/String;

    invoke-direct {p0, p1}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    if-ne p2, v3, :cond_39

    goto :goto_4e

    :cond_39
    const/4 v5, 0x1

    if-nez p1, :cond_5b

    int-to-char v6, v3

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_45

    const/4 v2, 0x1

    goto :goto_7

    :cond_45
    const/16 v6, 0x3b

    if-eq v6, v3, :cond_26

    const/16 v6, 0x23

    if-ne v6, v3, :cond_5b

    goto :goto_26

    :goto_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_59

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5a

    :cond_59
    const/4 p0, 0x0

    :goto_5a
    return-object p0

    :cond_5b
    if-eqz v2, :cond_69

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_68

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_68
    const/4 v2, 0x0

    :cond_69
    const/16 v6, 0x22

    const/16 v7, 0x5c

    if-ne v7, v3, :cond_c2

    invoke-virtual {p0}, Labcd/gE$d;->j6()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_b6

    if-eq v3, v4, :cond_7

    if-eq v3, v6, :cond_b1

    if-eq v3, v7, :cond_ac

    const/16 v6, 0x62

    if-eq v3, v6, :cond_a9

    const/16 v6, 0x6e

    if-eq v3, v6, :cond_a4

    const/16 v4, 0x74

    if-ne v3, v4, :cond_8b

    const/16 v3, 0x9

    goto :goto_cd

    :cond_8b
    new-instance p0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->badEscape:Ljava/lang/String;

    new-array p2, v5, [Ljava/lang/Object;

    int-to-char v0, v3

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_a9
    const/16 v3, 0x8

    goto :goto_cd

    :cond_ac
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_b1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_b6
    new-instance p0, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->endOfFileInEscape:Ljava/lang/String;

    invoke-direct {p0, p1}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c2
    if-ne v6, v3, :cond_cc

    if-eqz p1, :cond_c9

    const/4 p1, 0x0

    goto/16 :goto_7

    :cond_c9
    const/4 p1, 0x1

    goto/16 :goto_7

    :cond_cc
    int-to-char v3, v3

    :goto_cd
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7
.end method

.method private static j6(Labcd/gE$c;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/gE$c;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Labcd/gE$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Labcd/gE$c;->j6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Labcd/gE$c;->j6:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static j6(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_7

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_22
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private static j6(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "values"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    return-object v1

    :catch_17
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->enumValuesNotAvailable:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private v5()Labcd/gE$c;
    .registers 2

    iget-object v0, p0, Labcd/gE;->v5:Labcd/gE;

    if-eqz v0, :cond_9

    invoke-direct {v0}, Labcd/gE;->Zo()Labcd/gE$c;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
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
            "Ljava/util/List<",
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

    move-result-object v0

    const/4 v1, 0x0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_16

    return-object v1

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/gE$a;

    invoke-virtual {v2, p1, p2, p3}, Labcd/gE$a;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v2, v2, Labcd/gE$a;->v5:Ljava/lang/String;

    invoke-static {v1, v2}, Labcd/gE;->j6(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_f
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
    .registers 13

    const-wide/16 v0, 0x0

    const-wide/32 v2, 0x40000000

    cmp-long v4, p4, v2

    if-ltz v4, :cond_27

    rem-long v4, p4, v2

    cmp-long v6, v4, v0

    if-nez v6, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    div-long/2addr p4, v2

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p4, " g"

    :goto_1f
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_66

    :cond_27
    const-wide/32 v2, 0x100000

    cmp-long v4, p4, v2

    if-ltz v4, :cond_45

    rem-long v4, p4, v2

    cmp-long v6, v4, v0

    if-nez v6, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    div-long/2addr p4, v2

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p4, " m"

    goto :goto_1f

    :cond_45
    const-wide/16 v2, 0x400

    cmp-long v4, p4, v2

    if-ltz v4, :cond_62

    rem-long v4, p4, v2

    cmp-long v6, v4, v0

    if-nez v6, :cond_62

    new-instance v0, Ljava/lang/StringBuilder;

    div-long/2addr p4, v2

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p4, " k"

    goto :goto_1f

    :cond_62
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    :goto_66
    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    if-eqz p4, :cond_5

    const-string p4, "true"

    goto :goto_7

    :cond_5
    const-string p4, "false"

    :goto_7
    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Labcd/gE;->v5:Labcd/gE;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2, p3}, Labcd/gE;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    sget-object v0, Labcd/gE;->j6:[Ljava/lang/String;

    :goto_b
    invoke-direct {p0, p1, p2, p3}, Labcd/gE;->v5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_34

    array-length p2, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    add-int/2addr p2, p3

    new-array p2, p2, [Ljava/lang/String;

    array-length p3, v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_29

    return-object p2

    :cond_29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_22

    :cond_34
    return-object v0
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
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Labcd/gE;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/gE$c;

    iget-object v1, v1, Labcd/gE$c;->j6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/gE$a;

    iget-object v3, v2, Labcd/gE$a;->j6:Ljava/lang/String;

    if-eqz v3, :cond_2b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    iget-object v3, v2, Labcd/gE$a;->DW:Ljava/lang/String;

    const/16 v4, 0x20

    if-eqz v3, :cond_72

    iget-object v3, v2, Labcd/gE$a;->Hw:Ljava/lang/String;

    if-nez v3, :cond_72

    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v2, Labcd/gE$a;->DW:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Labcd/gE$a;->FH:Ljava/lang/String;

    if-eqz v3, :cond_6c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v2, Labcd/gE$a;->FH:Ljava/lang/String;

    invoke-static {v3}, Labcd/gE;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    const/4 v4, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v4, 0x0

    :goto_5d
    const/16 v5, 0x22

    if-nez v4, :cond_64

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_6c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6c
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b2

    :cond_72
    iget-object v3, v2, Labcd/gE$a;->DW:Ljava/lang/String;

    if-eqz v3, :cond_b2

    iget-object v3, v2, Labcd/gE$a;->Hw:Ljava/lang/String;

    if-eqz v3, :cond_b2

    iget-object v3, v2, Labcd/gE$a;->j6:Ljava/lang/String;

    if-eqz v3, :cond_86

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    :cond_86
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8b
    iget-object v3, v2, Labcd/gE$a;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Labcd/gE;->DW:Ljava/lang/String;

    iget-object v5, v2, Labcd/gE$a;->v5:Ljava/lang/String;

    if-eq v3, v5, :cond_ab

    const-string v3, " ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Labcd/gE$a;->v5:Ljava/lang/String;

    if-eqz v3, :cond_ab

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v2, Labcd/gE$a;->v5:Ljava/lang/String;

    invoke-static {v3}, Labcd/gE;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ab
    iget-object v3, v2, Labcd/gE$a;->Zo:Ljava/lang/String;

    if-eqz v3, :cond_b2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b2
    :goto_b2
    iget-object v2, v2, Labcd/gE$a;->Zo:Ljava/lang/String;

    if-eqz v2, :cond_b9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b9
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_13
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
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

    cmp-long p2, v2, v0

    if-gtz p2, :cond_19

    const-wide/32 v2, 0x7fffffff

    cmp-long p2, v0, v2

    if-gtz p2, :cond_19

    long-to-int p1, v0

    return p1

    :cond_19
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p4

    iget-object p4, p4, Lorg/eclipse/jgit/JGitText;->integerValueOutOfRange:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    invoke-static {p4, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 14

    invoke-virtual {p0, p1, p2, p3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    return-wide p4

    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    return-wide p4

    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Labcd/NK;->j6(C)C

    move-result v1

    const/16 v3, 0x67

    const-wide/16 v4, 0x1

    if-eq v1, v3, :cond_37

    const/16 v3, 0x6b

    if-eq v1, v3, :cond_34

    const/16 v3, 0x6d

    if-eq v1, v3, :cond_30

    move-wide v6, v4

    goto :goto_3a

    :cond_30
    const-wide/32 v6, 0x100000

    goto :goto_3a

    :cond_34
    const-wide/16 v6, 0x400

    goto :goto_3a

    :cond_37
    const-wide/32 v6, 0x40000000

    :goto_3a
    const/4 v1, 0x0

    cmp-long v3, v6, v4

    if-lez v3, :cond_4c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_4c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_53

    return-wide p4

    :cond_53
    :try_start_53
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_53 .. :try_end_57} :catch_5a

    mul-long v6, v6, p1

    return-wide v6

    :catch_5a
    move-exception p4

    new-instance p4, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p5

    iget-object p5, p5, Lorg/eclipse/jgit/JGitText;->invalidIntegerValue:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p3, v0, v2

    const/4 p1, 0x2

    aput-object p2, v0, p1

    invoke-static {p5, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method public j6(Labcd/DD;)Labcd/GD;
    .registers 3

    iget-object v0, p0, Labcd/gE;->FH:Labcd/HD;

    invoke-virtual {v0, p1}, Labcd/HD;->j6(Labcd/DD;)Labcd/GD;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    invoke-static {p4}, Labcd/gE;->j6(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Ljava/lang/Enum;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Labcd/gE;->j6([Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method

.method public j6([Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>([TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p2, p3, p4}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p5

    :cond_7
    const/16 p5, 0x20

    const/16 v1, 0x5f

    invoke-virtual {v0, p5, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p5

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v5, 0x0

    :goto_14
    if-lt v5, v1, :cond_59

    if-eqz v2, :cond_24

    if-eqz v4, :cond_24

    :try_start_1a
    invoke-static {p5}, Labcd/NK;->DW(Ljava/lang/String;)Z

    move-result p1
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1e} :catch_23

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    move-object v2, v4

    :goto_22
    return-object v2

    :catch_23
    move-exception p1

    :cond_24
    const/4 p1, 0x2

    const/4 p5, 0x3

    const/4 v1, 0x1

    if-eqz p3, :cond_41

    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->enumValueNotSupported3:Ljava/lang/String;

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p2, p5, v3

    aput-object p4, p5, v1

    aput-object v0, p5, p1

    invoke-static {v2, p5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_41
    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->enumValueNotSupported2:Ljava/lang/String;

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p2, p5, v3

    aput-object p4, p5, v1

    aput-object v0, p5, p1

    invoke-static {v2, p5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_59
    aget-object v6, p1, v5

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p5}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_66

    return-object v6

    :cond_66
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TRUE"

    invoke-static {v7, v8}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_74

    move-object v2, v6

    goto :goto_81

    :cond_74
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FALSE"

    invoke-static {v7, v8}, Labcd/NK;->j6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_81

    move-object v4, v6

    :cond_81
    :goto_81
    add-int/lit8 v5, v5, 0x1

    goto :goto_14
.end method

.method public j6(Labcd/gE$b;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LgE$b<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0}, Labcd/gE;->Zo()Labcd/gE$c;

    move-result-object v0

    iget-object v1, v0, Labcd/gE$c;->DW:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    invoke-interface {p1, p0}, Labcd/gE$b;->j6(Labcd/gE;)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, v0, Labcd/gE$c;->DW:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Labcd/gE;->Hw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
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
    .registers 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Labcd/gE$d;

    invoke-direct {v1, p1}, Labcd/gE$d;-><init>(Ljava/lang/String;)V

    new-instance p1, Labcd/gE$a;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Labcd/gE$a;-><init>(Labcd/gE$a;)V

    move-object v3, v2

    :goto_11
    invoke-virtual {v1}, Labcd/gE$d;->j6()I

    move-result v4

    const/4 v5, -0x1

    if-ne v5, v4, :cond_22

    iget-object p1, p0, Labcd/gE;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v0}, Labcd/gE;->j6(Ljava/util/List;)Labcd/gE$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_22
    int-to-char v4, v4

    const/16 v6, 0xa

    if-ne v6, v4, :cond_35

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p1, Labcd/gE$a;->DW:Ljava/lang/String;

    if-eqz v4, :cond_2f

    move-object v3, p1

    :cond_2f
    new-instance p1, Labcd/gE$a;

    invoke-direct {p1, v2}, Labcd/gE$a;-><init>(Labcd/gE$a;)V

    goto :goto_11

    :cond_35
    iget-object v6, p1, Labcd/gE$a;->Zo:Ljava/lang/String;

    if-eqz v6, :cond_4c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_49
    iput-object v4, p1, Labcd/gE$a;->Zo:Ljava/lang/String;

    goto :goto_11

    :cond_4c
    const/16 v6, 0x3b

    if-eq v6, v4, :cond_f0

    const/16 v6, 0x23

    if-ne v6, v4, :cond_56

    goto/16 :goto_f0

    :cond_56
    iget-object v6, p1, Labcd/gE$a;->DW:Ljava/lang/String;

    const-string v7, ""

    if-nez v6, :cond_7d

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_7d

    iget-object v5, p1, Labcd/gE$a;->j6:Ljava/lang/String;

    if-nez v5, :cond_68

    iput-object v7, p1, Labcd/gE$a;->j6:Ljava/lang/String;

    :cond_68
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p1, Labcd/gE$a;->j6:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Labcd/gE$a;->j6:Ljava/lang/String;

    goto :goto_11

    :cond_7d
    const/16 v6, 0x5b

    const/4 v8, 0x1

    if-ne v6, v4, :cond_ae

    invoke-static {v1}, Labcd/gE;->DW(Labcd/gE$d;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Labcd/gE$a;->DW:Ljava/lang/String;

    invoke-virtual {v1}, Labcd/gE$d;->j6()I

    move-result v4

    const/16 v5, 0x22

    if-ne v5, v4, :cond_9a

    invoke-static {v1, v8, v5}, Labcd/gE;->j6(Labcd/gE$d;ZI)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Labcd/gE$a;->FH:Ljava/lang/String;

    invoke-virtual {v1}, Labcd/gE$d;->j6()I

    move-result v4

    :cond_9a
    const/16 v5, 0x5d

    if-ne v5, v4, :cond_a2

    iput-object v7, p1, Labcd/gE$a;->Zo:Ljava/lang/String;

    goto/16 :goto_11

    :cond_a2
    new-instance p1, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->badGroupHeader:Ljava/lang/String;

    invoke-direct {p1, v0}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ae
    if-eqz v3, :cond_e4

    iget-object v4, v3, Labcd/gE$a;->DW:Ljava/lang/String;

    iput-object v4, p1, Labcd/gE$a;->DW:Ljava/lang/String;

    iget-object v4, v3, Labcd/gE$a;->FH:Ljava/lang/String;

    iput-object v4, p1, Labcd/gE$a;->FH:Ljava/lang/String;

    invoke-virtual {v1}, Labcd/gE$d;->DW()V

    invoke-static {v1}, Labcd/gE;->j6(Labcd/gE$d;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Labcd/gE$a;->Hw:Ljava/lang/String;

    iget-object v4, p1, Labcd/gE$a;->Hw:Ljava/lang/String;

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_dc

    iget-object v4, p1, Labcd/gE$a;->Hw:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Labcd/gE$a;->Hw:Ljava/lang/String;

    sget-object v4, Labcd/gE;->DW:Ljava/lang/String;

    goto :goto_e0

    :cond_dc
    invoke-static {v1, v6, v5}, Labcd/gE;->j6(Labcd/gE$d;ZI)Ljava/lang/String;

    move-result-object v4

    :goto_e0
    iput-object v4, p1, Labcd/gE$a;->v5:Ljava/lang/String;

    goto/16 :goto_11

    :cond_e4
    new-instance p1, Labcd/XC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->invalidLineInConfigFile:Ljava/lang/String;

    invoke-direct {p1, v0}, Labcd/XC;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f0
    :goto_f0
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_49
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

    invoke-static {v2, v0, v1}, Labcd/XG$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Labcd/gE;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/gE$c;

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Labcd/gE;->j6(Labcd/gE$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Labcd/gE$c;

    move-result-object v1

    iget-object v2, p0, Labcd/gE;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v1}, Labcd/XG$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labcd/gE;->FH()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Labcd/gE;->DW()V

    :cond_23
    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Labcd/gE;->Hw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    return p4

    :cond_7
    sget-object p4, Labcd/gE;->DW:Ljava/lang/String;

    const/4 v0, 0x1

    if-ne p4, p2, :cond_d

    return v0

    :cond_d
    :try_start_d
    invoke-static {p2}, Labcd/NK;->DW(Ljava/lang/String;)Z

    move-result p1
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_11} :catch_12

    return p1

    :catch_12
    move-exception p4

    new-instance p4, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidBooleanValue:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p3, v2, v0

    const/4 p1, 0x2

    aput-object p2, v2, p1

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
