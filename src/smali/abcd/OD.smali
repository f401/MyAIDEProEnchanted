.class public Labcd/OD;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/util/regex/Pattern;

.field static final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/QD;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/QD;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/QD;",
            ">;"
        }
    .end annotation
.end field

.field private v5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
    .registers 4

    invoke-static {p1, p2}, Labcd/OD;->j6(Ljava/lang/String;Ljava/lang/Character;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/OD;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/QD;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p1}, Labcd/OD;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/QD;",
            ">;",
            "Ljava/util/List",
            "<",
            "Labcd/QD;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/OD;->FH:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/OD;->Hw:Ljava/util/List;

    iget-object v0, p0, Labcd/OD;->Hw:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/OD;->v5:Ljava/util/List;

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
            "Ljava/util/List",
            "<",
            "Labcd/MD;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3f

    if-eq v3, v4, :cond_1

    new-instance v4, Labcd/ND;

    invoke-direct {v4, v3}, Labcd/ND;-><init>(C)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Labcd/OD;->j6(Ljava/lang/Character;Z)Labcd/MD;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    invoke-static {p1, v3}, Labcd/OD;->j6(Ljava/lang/Character;Z)Labcd/MD;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static FH(Ljava/lang/String;Ljava/lang/Character;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ")",
            "Ljava/util/List",
            "<",
            "Labcd/MD;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    const/16 v2, 0x5b

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Labcd/OD;->DW(Ljava/lang/String;Ljava/lang/Character;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Labcd/OD;->DW(Ljava/lang/String;Ljava/lang/Character;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v2, p0}, Labcd/OD;->j6(ILjava/lang/String;)I

    move-result v0

    new-instance v3, Labcd/PD;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, p0}, Labcd/PD;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static j6(ILjava/lang/String;)I
    .registers 9

    const/4 v4, -0x1

    add-int/lit8 v0, p0, 0x1

    add-int/lit8 v1, p0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    :cond_0
    sget-object v2, Labcd/OD;->DW:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    move v2, v1

    move v3, v4

    :goto_0
    if-eq v3, v4, :cond_1

    return v3

    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v4, :cond_4

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    if-ge v6, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    add-int/lit8 v6, v2, 0x2

    invoke-virtual {p1, v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v4, :cond_2

    add-int/lit8 v1, v6, 0x2

    move v0, v1

    move v2, v1

    goto :goto_0

    :cond_2
    new-instance v3, Labcd/gD;

    invoke-direct {v3, v2, v0, v1, p1}, Labcd/gD;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_3
    move v3, v1

    goto :goto_0

    :cond_4
    new-instance v0, Labcd/gD;

    const-string v1, "["

    const-string v2, "]"

    invoke-direct {v0, p0, v1, v2, p1}, Labcd/gD;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Labcd/gD;

    const-string v1, "["

    const-string v2, "]"

    invoke-direct {v0, p0, v1, v2, p1}, Labcd/gD;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private static j6(Ljava/lang/Character;Z)Labcd/MD;
    .registers 4

    if-eqz p0, :cond_0

    new-instance v0, Labcd/SD;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {v0, v1, p1}, Labcd/SD;-><init>(CZ)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/TD;

    invoke-direct {v0, p1}, Labcd/TD;-><init>(Z)V

    goto :goto_0
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/Character;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ")",
            "Ljava/util/List",
            "<",
            "Labcd/QD;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x2

    invoke-static {p0, p1}, Labcd/OD;->FH(Ljava/lang/String;Ljava/lang/Character;)Ljava/util/List;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v0, Labcd/RD;->j6:Labcd/QD;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/MD;

    invoke-virtual {v0}, Labcd/MD;->j6()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Labcd/MD;->j6(Ljava/util/List;)V

    move-object v0, v1

    :goto_1
    add-int/lit8 v2, v2, -0x1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Labcd/MD;->j6(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_1
.end method

.method private j6(C)V
    .registers 6

    iget-object v3, p0, Labcd/OD;->v5:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Labcd/OD;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    iget-object v0, p0, Labcd/OD;->Hw:Ljava/util/List;

    iput-object v0, p0, Labcd/OD;->v5:Ljava/util/List;

    iput-object v3, p0, Labcd/OD;->Hw:Ljava/util/List;

    return-void

    :cond_0
    iget-object v0, p0, Labcd/OD;->Hw:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/QD;

    invoke-interface {v0, p1}, Labcd/QD;->j6(C)Ljava/util/List;

    move-result-object v0

    if-eq v0, v1, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
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

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Labcd/OD;->j6(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public j6()Z
    .registers 4

    iget-object v0, p0, Labcd/OD;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/QD;

    sget-object v2, Labcd/RD;->j6:Labcd/QD;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
