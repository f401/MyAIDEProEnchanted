.class public Labcd/BC;
.super Ljava/lang/Object;


# static fields
.field private static DW:[I

.field private static final j6:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private EQ:Z

.field private FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation
.end field

.field private final VH:Labcd/UE;

.field private Zo:Z

.field private gn:I

.field private tp:I

.field private u7:I

.field private v5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/AC;

    invoke-direct {v0}, Labcd/AC;-><init>()V

    sput-object v0, Labcd/BC;->j6:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Labcd/UE;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Labcd/BC;->gn:I

    const/4 v0, -0x1

    iput v0, p0, Labcd/BC;->u7:I

    iput-object p1, p0, Labcd/BC;->VH:Labcd/UE;

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    sget-object v1, Labcd/gC;->j6:Labcd/gE$b;

    invoke-virtual {v0, v1}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/gC;

    invoke-virtual {v0}, Labcd/gC;->j6()I

    move-result v0

    iput v0, p0, Labcd/BC;->tp:I

    invoke-virtual {p0}, Labcd/BC;->v5()V

    return-void
.end method

.method private static DW(Labcd/hC;Labcd/hC;)Labcd/hC;
    .registers 4

    sget-object v0, Labcd/hC$a;->Hw:Labcd/hC$a;

    const/16 v1, 0x64

    invoke-static {v0, p0, p1, v1}, Labcd/hC;->j6(Labcd/hC$a;Labcd/hC;Labcd/hC;I)Labcd/hC;

    move-result-object v0

    return-object v0
.end method

.method private static DW(Labcd/hC;)Labcd/rE;
    .registers 3

    iget-object v0, p0, Labcd/hC;->VH:Labcd/hC$a;

    sget-object v1, Labcd/hC$a;->FH:Labcd/hC$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Labcd/hC;->v5:Labcd/rE;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/hC;->Zo:Labcd/rE;

    goto :goto_0
.end method

.method private DW(Labcd/LE;)V
    .registers 16

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->renamesFindingExact:Ljava/lang/String;

    iget-object v1, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Labcd/LE;->j6(Ljava/lang/String;I)V

    iget-object v0, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Labcd/BC;->j6(Ljava/util/List;Labcd/LE;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v0, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Labcd/BC;->j6(Ljava/util/List;Labcd/LE;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    iput-object v7, p0, Labcd/BC;->v5:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Labcd/LE;->j6()V

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Labcd/hC;

    if-eqz v2, :cond_3

    check-cast v0, Labcd/hC;

    iget-object v2, v0, Labcd/hC;->VH:Labcd/hC$a;

    sget-object v3, Labcd/hC$a;->FH:Labcd/hC$a;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    iget-object v3, v0, Labcd/hC;->VH:Labcd/hC$a;

    sget-object v4, Labcd/hC$a;->FH:Labcd/hC$a;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    iget-object v0, v0, Labcd/hC;->tp:Labcd/WD;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Labcd/hC;

    if-eqz v2, :cond_9

    check-cast v0, Labcd/hC;

    invoke-static {v0, v1}, Labcd/BC;->j6(Labcd/hC;Ljava/util/List;)Labcd/hC;

    move-result-object v2

    if-eqz v2, :cond_8

    sget-object v3, Labcd/hC$a;->Hw:Labcd/hC$a;

    iput-object v3, v0, Labcd/hC;->VH:Labcd/hC$a;

    iget-object v3, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-static {v0, v2}, Labcd/BC;->DW(Labcd/hC;Labcd/hC;)Labcd/hC;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hC;

    if-eq v1, v2, :cond_6

    iget-object v4, v0, Labcd/hC;->v5:Labcd/rE;

    iget-object v5, v1, Labcd/hC;->Zo:Labcd/rE;

    invoke-static {v4, v5}, Labcd/BC;->j6(Labcd/rE;Labcd/rE;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-static {v0, v1}, Labcd/BC;->j6(Labcd/hC;Labcd/hC;)Labcd/hC;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_9
    if-eqz v0, :cond_e

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v9, v2, [J

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, v2

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v3, v2, :cond_c

    invoke-static {v9}, Ljava/util/Arrays;->sort([J)V

    :goto_7
    add-int/lit8 v5, v4, -0x1

    if-ltz v5, :cond_0

    aget-wide v2, v9, v5

    invoke-static {v2, v3}, Labcd/FC;->DW(J)I

    move-result v4

    invoke-static {v2, v3}, Labcd/FC;->j6(J)I

    move-result v10

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/hC;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/hC;

    if-nez v3, :cond_a

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Labcd/LE;->update(I)V

    move v4, v5

    goto :goto_7

    :cond_a
    iget-object v4, v2, Labcd/hC;->VH:Labcd/hC$a;

    sget-object v11, Labcd/hC$a;->FH:Labcd/hC$a;

    if-ne v4, v11, :cond_b

    sget-object v4, Labcd/hC$a;->Hw:Labcd/hC$a;

    iput-object v4, v2, Labcd/hC;->VH:Labcd/hC$a;

    :goto_8
    iget-object v11, p0, Labcd/BC;->FH:Ljava/util/List;

    const/16 v12, 0x64

    invoke-static {v4, v2, v3, v12}, Labcd/hC;->j6(Labcd/hC$a;Labcd/hC;Labcd/hC;I)Labcd/hC;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-interface {v1, v10, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Labcd/LE;->update(I)V

    move v4, v5

    goto :goto_7

    :cond_b
    sget-object v4, Labcd/hC$a;->v5:Labcd/hC$a;

    goto :goto_8

    :cond_c
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/hC;

    iget-object v10, v2, Labcd/hC;->FH:Ljava/lang/String;

    const/4 v2, 0x0

    move v5, v2

    :goto_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v5, v2, :cond_d

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_d
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/hC;

    iget-object v2, v2, Labcd/hC;->Hw:Ljava/lang/String;

    invoke-static {v2, v10}, Labcd/FC;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v3, v5}, Labcd/FC;->j6(III)J

    move-result-wide v12

    aput-wide v12, v9, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_9

    :cond_e
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    iget-object v1, v0, Labcd/hC;->tp:Labcd/WD;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Labcd/hC;

    if-eqz v4, :cond_11

    check-cast v1, Labcd/hC;

    iget-object v4, v1, Labcd/hC;->v5:Labcd/rE;

    iget-object v5, v0, Labcd/hC;->Zo:Labcd/rE;

    invoke-static {v4, v5}, Labcd/BC;->j6(Labcd/rE;Labcd/rE;)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Labcd/hC$a;->Hw:Labcd/hC$a;

    iput-object v4, v1, Labcd/hC;->VH:Labcd/hC$a;

    iget-object v4, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-static {v1, v0}, Labcd/BC;->DW(Labcd/hC;Labcd/hC;)Labcd/hC;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Labcd/LE;->update(I)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    if-eqz v1, :cond_13

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Labcd/BC;->j6(Labcd/hC;Ljava/util/List;)Labcd/hC;

    move-result-object v1

    if-eqz v1, :cond_12

    sget-object v4, Labcd/hC$a;->Hw:Labcd/hC$a;

    iput-object v4, v1, Labcd/hC;->VH:Labcd/hC$a;

    iget-object v4, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-static {v1, v0}, Labcd/BC;->DW(Labcd/hC;Labcd/hC;)Labcd/hC;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Labcd/hC;

    if-eqz v4, :cond_15

    check-cast v0, Labcd/hC;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_15
    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private DW(Labcd/cC$c;Labcd/LE;)V
    .registers 10

    const/4 v6, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->renamesBreakingModifies:Ljava/lang/String;

    iget-object v1, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2, v0, v1}, Labcd/LE;->j6(Ljava/lang/String;I)V

    move v1, v2

    :goto_0
    iget-object v0, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iput-object v3, p0, Labcd/BC;->FH:Ljava/util/List;

    return-void

    :cond_0
    iget-object v0, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    invoke-virtual {v0}, Labcd/hC;->DW()Labcd/hC$a;

    move-result-object v4

    sget-object v5, Labcd/hC$a;->DW:Labcd/hC$a;

    if-ne v4, v5, :cond_2

    invoke-direct {p0, p1, v0}, Labcd/BC;->j6(Labcd/cC$c;Labcd/hC;)I

    move-result v4

    iget v5, p0, Labcd/BC;->u7:I

    if-ge v4, v5, :cond_1

    invoke-static {v0}, Labcd/hC;->j6(Labcd/hC;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    iput v4, v0, Labcd/hC;->gn:I

    iget-object v4, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {p2, v6}, Labcd/LE;->update(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static FH(Labcd/hC;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Labcd/hC;->VH:Labcd/hC$a;

    sget-object v1, Labcd/hC$a;->FH:Labcd/hC$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Labcd/hC;->FH:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/hC;->Hw:Ljava/lang/String;

    goto :goto_0
.end method

.method private FH(Labcd/LE;)V
    .registers 11

    const/4 v8, 0x1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->renamesRejoiningModifies:Ljava/lang/String;

    iget-object v1, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v4, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    invoke-interface {p1, v0, v1}, Labcd/LE;->j6(Ljava/lang/String;I)V

    iget-object v0, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v3, p0, Labcd/BC;->v5:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Labcd/BC;->Hw:Ljava/util/List;

    return-void

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    iget-object v1, v0, Labcd/hC;->Hw:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hC;

    if-eqz v1, :cond_2

    iget-object v5, v1, Labcd/hC;->v5:Labcd/rE;

    iget-object v6, v0, Labcd/hC;->Zo:Labcd/rE;

    invoke-static {v5, v6}, Labcd/BC;->j6(Labcd/rE;Labcd/rE;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Labcd/BC;->FH:Ljava/util/List;

    sget-object v6, Labcd/hC$a;->DW:Labcd/hC$a;

    iget v7, v1, Labcd/hC;->gn:I

    invoke-static {v6, v1, v0, v7}, Labcd/hC;->j6(Labcd/hC$a;Labcd/hC;Labcd/hC;I)Labcd/hC;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {p1, v8}, Labcd/LE;->update(I)V

    goto :goto_1

    :cond_1
    iget-object v5, v1, Labcd/hC;->FH:Ljava/lang/String;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    iget-object v4, v0, Labcd/hC;->FH:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v8}, Labcd/LE;->update(I)V

    goto :goto_0
.end method

.method private FH(Labcd/cC$c;Labcd/LE;)V
    .registers 6

    iget-object v0, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Labcd/BC;->FH()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Labcd/BC;->FH()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    new-instance v0, Labcd/FC;

    iget-object v1, p0, Labcd/BC;->Hw:Ljava/util/List;

    iget-object v2, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-direct {v0, p1, v1, v2}, Labcd/FC;-><init>(Labcd/cC$c;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0}, Labcd/BC;->Hw()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/FC;->j6(I)V

    invoke-virtual {v0, p2}, Labcd/FC;->j6(Labcd/LE;)V

    iget-boolean v1, p0, Labcd/BC;->EQ:Z

    invoke-virtual {v0}, Labcd/FC;->Hw()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, p0, Labcd/BC;->EQ:Z

    invoke-virtual {v0}, Labcd/FC;->DW()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-virtual {v0}, Labcd/FC;->j6()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Labcd/BC;->v5:Ljava/util/List;

    iget-object v1, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-virtual {v0}, Labcd/FC;->FH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/BC;->EQ:Z

    goto :goto_0
.end method

.method private j6(Labcd/cC$c;Labcd/hC;)I
    .registers 6

    :try_start_0
    new-instance v0, Labcd/EC;

    invoke-direct {v0}, Labcd/EC;-><init>()V

    sget-object v1, Labcd/hC$b;->j6:Labcd/hC$b;

    invoke-virtual {p1, v1, p2}, Labcd/cC$c;->j6(Labcd/hC$b;Labcd/hC;)Labcd/FE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/EC;->j6(Labcd/FE;)V

    invoke-virtual {v0}, Labcd/EC;->j6()V

    new-instance v1, Labcd/EC;

    invoke-direct {v1}, Labcd/EC;-><init>()V

    sget-object v2, Labcd/hC$b;->DW:Labcd/hC$b;

    invoke-virtual {p1, v2, p2}, Labcd/cC$c;->j6(Labcd/hC$b;Labcd/hC;)Labcd/FE;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/EC;->j6(Labcd/FE;)V

    invoke-virtual {v1}, Labcd/EC;->j6()V

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Labcd/EC;->j6(Labcd/EC;I)I
    :try_end_0
    .catch Labcd/EC$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/BC;->EQ:Z

    iget v0, p0, Labcd/BC;->u7:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static j6(Labcd/hC;)Labcd/WD;
    .registers 3

    iget-object v0, p0, Labcd/hC;->VH:Labcd/hC$a;

    sget-object v1, Labcd/hC$a;->FH:Labcd/hC$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Labcd/hC;->u7:Labcd/WD;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/hC;->tp:Labcd/WD;

    goto :goto_0
.end method

.method private static j6(Labcd/hC;Labcd/hC;)Labcd/hC;
    .registers 4

    sget-object v0, Labcd/hC$a;->v5:Labcd/hC$a;

    const/16 v1, 0x64

    invoke-static {v0, p0, p1, v1}, Labcd/hC;->j6(Labcd/hC$a;Labcd/hC;Labcd/hC;I)Labcd/hC;

    move-result-object v0

    return-object v0
.end method

.method private static j6(Labcd/hC;Ljava/util/List;)Labcd/hC;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/hC;",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;)",
            "Labcd/hC;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v0, -0x1

    move v1, v0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    invoke-static {v0}, Labcd/BC;->DW(Labcd/hC;)Labcd/rE;

    move-result-object v2

    invoke-static {p0}, Labcd/BC;->DW(Labcd/hC;)Labcd/rE;

    move-result-object v5

    invoke-static {v2, v5}, Labcd/BC;->j6(Labcd/rE;Labcd/rE;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Labcd/BC;->FH(Labcd/hC;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Labcd/BC;->FH(Labcd/hC;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Labcd/FC;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    move-object v3, v0

    goto :goto_0
.end method

.method private j6(Ljava/util/List;Labcd/LE;)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;",
            "Labcd/LE;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Labcd/WD;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Labcd/hC;

    invoke-static {v2}, Labcd/BC;->j6(Labcd/hC;)Labcd/WD;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Labcd/hC;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Labcd/hC;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Labcd/BC;->j6(Labcd/hC;)Labcd/WD;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Labcd/LE;->update(I)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Labcd/BC;->j6(Labcd/hC;)Labcd/WD;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static j6(Labcd/rE;Labcd/rE;)Z
    .registers 5

    const v2, 0xf000

    invoke-virtual {p0}, Labcd/rE;->DW()I

    move-result v0

    and-int/2addr v0, v2

    invoke-virtual {p1}, Labcd/rE;->DW()I

    move-result v1

    and-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/BC;->DW:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/hC$a;->values()[Labcd/hC$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/hC$a;->j6:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Labcd/hC$a;->v5:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Labcd/hC$a;->FH:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Labcd/hC$a;->DW:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Labcd/hC$a;->Hw:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Labcd/BC;->DW:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public DW()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    sget-object v0, Labcd/vE;->j6:Labcd/vE;

    invoke-virtual {p0, v0}, Labcd/BC;->j6(Labcd/LE;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/BC;->tp:I

    return v0
.end method

.method public Hw()I
    .registers 2

    iget v0, p0, Labcd/BC;->gn:I

    return v0
.end method

.method public j6(Labcd/IE;Labcd/LE;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/IE;",
            "Labcd/LE;",
            ")",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Labcd/cC;->j6(Labcd/IE;)Labcd/cC;

    move-result-object v0

    new-instance v1, Labcd/cC$c;

    invoke-direct {v1, v0, v0}, Labcd/cC$c;-><init>(Labcd/cC;Labcd/cC;)V

    invoke-virtual {p0, v1, p2}, Labcd/BC;->j6(Labcd/cC$c;Labcd/LE;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/LE;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            ")",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Labcd/BC;->Zo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/BC;->VH:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, v1, p1}, Labcd/BC;->j6(Labcd/IE;Labcd/LE;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {v1}, Labcd/IE;->FH()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Labcd/IE;->FH()V

    throw v0

    :cond_0
    iget-object v0, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public j6(Labcd/cC$c;Labcd/LE;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/cC$c;",
            "Labcd/LE;",
            ")",
            "Ljava/util/List",
            "<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Labcd/BC;->Zo:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/BC;->Zo:Z

    if-nez p2, :cond_0

    sget-object p2, Labcd/vE;->j6:Labcd/vE;

    :cond_0
    iget v0, p0, Labcd/BC;->u7:I

    if-lez v0, :cond_1

    invoke-direct {p0, p1, p2}, Labcd/BC;->DW(Labcd/cC$c;Labcd/LE;)V

    :cond_1
    iget-object v0, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Labcd/BC;->DW(Labcd/LE;)V

    :cond_2
    iget-object v0, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2}, Labcd/BC;->FH(Labcd/cC$c;Labcd/LE;)V

    :cond_3
    iget v0, p0, Labcd/BC;->u7:I

    if-lez v0, :cond_4

    iget-object v0, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p2}, Labcd/BC;->FH(Labcd/LE;)V

    :cond_4
    iget-object v0, p0, Labcd/BC;->FH:Ljava/util/List;

    iget-object v1, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v2, p0, Labcd/BC;->v5:Ljava/util/List;

    iget-object v0, p0, Labcd/BC;->FH:Ljava/util/List;

    iget-object v1, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v2, p0, Labcd/BC;->Hw:Ljava/util/List;

    iget-object v0, p0, Labcd/BC;->FH:Ljava/util/List;

    sget-object v1, Labcd/BC;->j6:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    iget-object v0, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Labcd/hC;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    iget-boolean v0, p0, Labcd/BC;->Zo:Z

    if-nez v0, :cond_5

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    invoke-static {}, Labcd/BC;->j6()[I

    move-result-object v2

    invoke-virtual {v0}, Labcd/hC;->DW()Labcd/hC$a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v4, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Labcd/hC;->VH()Labcd/rE;

    move-result-object v2

    invoke-virtual {v0}, Labcd/hC;->Hw()Labcd/rE;

    move-result-object v3

    invoke-static {v2, v3}, Labcd/BC;->j6(Labcd/rE;Labcd/rE;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v0}, Labcd/hC;->j6(Labcd/hC;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Labcd/BC;->Hw:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->renamesAlreadyFound:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public v5()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/BC;->FH:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/BC;->Hw:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/BC;->v5:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/BC;->Zo:Z

    return-void
.end method
