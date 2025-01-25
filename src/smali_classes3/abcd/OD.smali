.class public Labcd/OD;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/util/regex/Pattern;

.field static final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/QD;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/QD;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/QD;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/QD;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Labcd/OD;->j6:Ljava/util/List;

    const-string v0, "\\[[.:=]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Labcd/OD;->DW:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Character;)V
    .registers 3

    invoke-static {p1, p2}, Labcd/OD;->j6(Ljava/lang/String;Ljava/lang/Character;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/OD;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labcd/QD;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p1}, Labcd/OD;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labcd/QD;",
            ">;",
            "Ljava/util/List<",
            "Labcd/QD;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/OD;->FH:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Labcd/OD;->Hw:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Labcd/OD;->v5:Ljava/util/List;

    return-void
.end method

.method private static DW(Ljava/lang/String;Ljava/lang/Character;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ")",
            "Ljava/util/List<",
            "Labcd/MD;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_12

    return-object v0

    :cond_12
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_2c

    const/16 v4, 0x3f

    if-eq v3, v4, :cond_27

    new-instance v4, Labcd/ND;

    invoke-direct {v4, v3}, Labcd/ND;-><init>(C)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_27
    invoke-static {p1, v1}, Labcd/OD;->j6(Ljava/lang/Character;Z)Labcd/MD;

    move-result-object v3

    goto :goto_31

    :cond_2c
    const/4 v3, 0x1

    invoke-static {p1, v3}, Labcd/OD;->j6(Ljava/lang/Character;Z)Labcd/MD;

    move-result-object v3

    :goto_31
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_b
.end method

.method private static FH(Ljava/lang/String;Ljava/lang/Character;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ")",
            "Ljava/util/List<",
            "Labcd/MD;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_d

    return-object v0

    :cond_d
    const/16 v2, 0x5b

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Labcd/OD;->DW(Ljava/lang/String;Ljava/lang/Character;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_6

    :cond_26
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Labcd/OD;->DW(Ljava/lang/String;Ljava/lang/Character;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v2, p0}, Labcd/OD;->j6(ILjava/lang/String;)I

    move-result v1

    new-instance v3, Labcd/PD;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, p0}, Labcd/PD;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private static j6(ILjava/lang/String;)I
    .registers 11

    add-int/lit8 v0, p0, 0x1

    add-int/lit8 v1, p0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "["

    const-string v4, "]"

    if-ge v0, v2, :cond_71

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x21

    if-ne v2, v5, :cond_1a

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    :cond_1a
    sget-object v2, Labcd/OD;->DW:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v5, -0x1

    const/4 v6, -0x1

    :goto_22
    if-eq v6, v5, :cond_25

    return v6

    :cond_25
    const/16 v7, 0x5d

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-eq v7, v5, :cond_6b

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v8

    if-eqz v8, :cond_69

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    if-ge v8, v7, :cond_69

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    add-int/lit8 v8, v7, 0x2

    invoke-virtual {p1, v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v5, :cond_63

    add-int/lit8 v1, v8, 0x2

    move v0, v1

    goto :goto_22

    :cond_63
    new-instance p0, Labcd/gD;

    invoke-direct {p0, v7, v0, v1, p1}, Labcd/gD;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_69
    move v6, v7

    goto :goto_22

    :cond_6b
    new-instance v0, Labcd/gD;

    invoke-direct {v0, p0, v3, v4, p1}, Labcd/gD;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_71
    new-instance v0, Labcd/gD;

    invoke-direct {v0, p0, v3, v4, p1}, Labcd/gD;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_78

    :goto_77
    throw v0

    :goto_78
    goto :goto_77
.end method

.method private static j6(Ljava/lang/Character;Z)Labcd/MD;
    .registers 3

    if-eqz p0, :cond_c

    new-instance v0, Labcd/SD;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-direct {v0, p0, p1}, Labcd/SD;-><init>(CZ)V

    return-object v0

    :cond_c
    new-instance p0, Labcd/TD;

    invoke-direct {p0, p1}, Labcd/TD;-><init>(Z)V

    return-object p0
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/Character;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ")",
            "Ljava/util/List<",
            "Labcd/QD;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Labcd/OD;->FH(Ljava/lang/String;Ljava/lang/Character;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v1, Labcd/RD;->j6:Labcd/QD;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_15
    if-gez v1, :cond_18

    return-object p1

    :cond_18
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/MD;

    invoke-virtual {v2}, Labcd/MD;->j6()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p1}, Labcd/MD;->j6(Ljava/util/List;)V

    goto :goto_36

    :cond_2b
    invoke-virtual {v2, p1}, Labcd/MD;->j6(Ljava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_36
    add-int/lit8 v1, v1, -0x1

    goto :goto_15
.end method

.method private j6(C)V
    .registers 6

    iget-object v0, p0, Labcd/OD;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Labcd/OD;->Hw:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_16

    iget-object p1, p0, Labcd/OD;->Hw:Ljava/util/List;

    iput-object p1, p0, Labcd/OD;->v5:Ljava/util/List;

    iput-object v0, p0, Labcd/OD;->Hw:Ljava/util/List;

    return-void

    :cond_16
    iget-object v3, p0, Labcd/OD;->Hw:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/QD;

    invoke-interface {v3, p1}, Labcd/QD;->j6(C)Ljava/util/List;

    move-result-object v3

    if-eq v3, v1, :cond_28

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v1, v3

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method


# virtual methods
.method public DW()V
    .registers 3

    iget-object v0, p0, Labcd/OD;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Labcd/OD;->Hw:Ljava/util/List;

    iget-object v1, p0, Labcd/OD;->FH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Labcd/OD;->j6(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public j6()Z
    .registers 4

    iget-object v0, p0, Labcd/OD;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v0, 0x0

    return v0

    :cond_12
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/QD;

    sget-object v2, Labcd/RD;->j6:Labcd/QD;

    if-ne v1, v2, :cond_a

    const/4 v0, 0x1

    return v0
.end method
