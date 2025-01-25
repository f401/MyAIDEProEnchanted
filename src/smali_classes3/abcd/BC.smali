.class public Labcd/BC;
.super Ljava/lang/Object;


# static fields
.field private static DW:[I

.field private static final j6:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
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
            "Ljava/util/List<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Labcd/BC;->gn:I

    const/4 v0, -0x1

    iput v0, p0, Labcd/BC;->u7:I

    iput-object p1, p0, Labcd/BC;->VH:Labcd/UE;

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object p1

    sget-object v0, Labcd/gC;->j6:Labcd/gE$b;

    invoke-virtual {p1, v0}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/gC;

    invoke-virtual {p1}, Labcd/gC;->j6()I

    move-result p1

    iput p1, p0, Labcd/BC;->tp:I

    invoke-virtual {p0}, Labcd/BC;->v5()V

    return-void
.end method

.method private static DW(Labcd/hC;Labcd/hC;)Labcd/hC;
    .registers 4

    sget-object v0, Labcd/hC$a;->Hw:Labcd/hC$a;

    const/16 v1, 0x64

    invoke-static {v0, p0, p1, v1}, Labcd/hC;->j6(Labcd/hC$a;Labcd/hC;Labcd/hC;I)Labcd/hC;

    move-result-object p0

    return-object p0
.end method

.method private static DW(Labcd/hC;)Labcd/rE;
    .registers 3

    iget-object v0, p0, Labcd/hC;->VH:Labcd/hC$a;

    sget-object v1, Labcd/hC$a;->FH:Labcd/hC$a;

    if-ne v0, v1, :cond_9

    iget-object p0, p0, Labcd/hC;->v5:Labcd/rE;

    goto :goto_b

    :cond_9
    iget-object p0, p0, Labcd/hC;->Zo:Labcd/rE;

    :goto_b
    return-object p0
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

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    invoke-interface {p1, v0, v1}, Labcd/LE;->j6(Ljava/lang/String;I)V

    iget-object v0, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Labcd/BC;->j6(Ljava/util/List;Labcd/LE;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Labcd/BC;->j6(Ljava/util/List;Labcd/LE;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1e7

    new-instance v4, Ljava/util/ArrayList;

    iget-object v1, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_65
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1aa

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_70
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_ca

    iput-object v4, p0, Labcd/BC;->v5:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8b
    :goto_8b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_95

    invoke-interface {p1}, Labcd/LE;->j6()V

    return-void

    :cond_95
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Labcd/hC;

    if-eqz v1, :cond_ab

    check-cast v0, Labcd/hC;

    iget-object v1, v0, Labcd/hC;->VH:Labcd/hC$a;

    sget-object v2, Labcd/hC$a;->FH:Labcd/hC$a;

    if-ne v1, v2, :cond_8b

    iget-object v1, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    :cond_ab
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b1
    :goto_b1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b8

    goto :goto_8b

    :cond_b8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    iget-object v1, v0, Labcd/hC;->VH:Labcd/hC$a;

    sget-object v2, Labcd/hC$a;->FH:Labcd/hC$a;

    if-ne v1, v2, :cond_b1

    iget-object v1, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    :cond_ca
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/hC;

    iget-object v6, v6, Labcd/hC;->tp:Labcd/WD;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Labcd/hC;

    if-eqz v7, :cond_122

    check-cast v6, Labcd/hC;

    invoke-static {v6, v3}, Labcd/BC;->j6(Labcd/hC;Ljava/util/List;)Labcd/hC;

    move-result-object v5

    if-eqz v5, :cond_1a5

    sget-object v7, Labcd/hC$a;->Hw:Labcd/hC$a;

    iput-object v7, v6, Labcd/hC;->VH:Labcd/hC$a;

    iget-object v7, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-static {v6, v5}, Labcd/BC;->DW(Labcd/hC;Labcd/hC;)Labcd/hC;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_fa
    :goto_fa
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_102

    goto/16 :goto_70

    :cond_102
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/hC;

    if-eq v3, v5, :cond_fa

    iget-object v8, v6, Labcd/hC;->v5:Labcd/rE;

    iget-object v9, v3, Labcd/hC;->Zo:Labcd/rE;

    invoke-static {v8, v9}, Labcd/BC;->j6(Labcd/rE;Labcd/rE;)Z

    move-result v8

    if-eqz v8, :cond_11e

    iget-object v8, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-static {v6, v3}, Labcd/BC;->j6(Labcd/hC;Labcd/hC;)Labcd/hC;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_fa

    :cond_11e
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fa

    :cond_122
    if-eqz v6, :cond_1a5

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    mul-int v7, v7, v8

    new-array v7, v7, [J

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_134
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lt v8, v10, :cond_17c

    invoke-static {v7}, Ljava/util/Arrays;->sort([J)V

    :goto_13d
    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_143

    goto/16 :goto_70

    :cond_143
    aget-wide v10, v7, v9

    invoke-static {v10, v11}, Labcd/FC;->DW(J)I

    move-result v5

    invoke-static {v10, v11}, Labcd/FC;->j6(J)I

    move-result v8

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/hC;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Labcd/hC;

    if-nez v10, :cond_15f

    :goto_15b
    invoke-interface {p1, v2}, Labcd/LE;->update(I)V

    goto :goto_13d

    :cond_15f
    iget-object v11, v5, Labcd/hC;->VH:Labcd/hC$a;

    sget-object v12, Labcd/hC$a;->FH:Labcd/hC$a;

    if-ne v11, v12, :cond_16a

    sget-object v11, Labcd/hC$a;->Hw:Labcd/hC$a;

    iput-object v11, v5, Labcd/hC;->VH:Labcd/hC$a;

    goto :goto_16c

    :cond_16a
    sget-object v11, Labcd/hC$a;->v5:Labcd/hC$a;

    :goto_16c
    iget-object v12, p0, Labcd/BC;->FH:Ljava/util/List;

    const/16 v13, 0x64

    invoke-static {v11, v5, v10, v13}, Labcd/hC;->j6(Labcd/hC$a;Labcd/hC;Labcd/hC;I)Labcd/hC;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    invoke-interface {v3, v8, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_15b

    :cond_17c
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Labcd/hC;

    iget-object v10, v10, Labcd/hC;->FH:Ljava/lang/String;

    const/4 v11, 0x0

    :goto_185
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-lt v11, v12, :cond_18e

    add-int/lit8 v8, v8, 0x1

    goto :goto_134

    :cond_18e
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Labcd/hC;

    iget-object v12, v12, Labcd/hC;->Hw:Ljava/lang/String;

    invoke-static {v12, v10}, Labcd/FC;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-static {v12, v8, v11}, Labcd/FC;->j6(III)J

    move-result-wide v12

    aput-wide v12, v7, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_185

    :cond_1a5
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_70

    :cond_1aa
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hC;

    iget-object v6, v1, Labcd/hC;->tp:Labcd/WD;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Labcd/hC;

    if-eqz v7, :cond_1d4

    check-cast v6, Labcd/hC;

    iget-object v7, v6, Labcd/hC;->v5:Labcd/rE;

    iget-object v8, v1, Labcd/hC;->Zo:Labcd/rE;

    invoke-static {v7, v8}, Labcd/BC;->j6(Labcd/rE;Labcd/rE;)Z

    move-result v7

    if-eqz v7, :cond_1df

    :goto_1c6
    sget-object v7, Labcd/hC$a;->Hw:Labcd/hC$a;

    iput-object v7, v6, Labcd/hC;->VH:Labcd/hC$a;

    iget-object v7, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-static {v6, v1}, Labcd/BC;->DW(Labcd/hC;Labcd/hC;)Labcd/hC;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e2

    :cond_1d4
    if-eqz v6, :cond_1df

    check-cast v6, Ljava/util/List;

    invoke-static {v1, v6}, Labcd/BC;->j6(Labcd/hC;Ljava/util/List;)Labcd/hC;

    move-result-object v6

    if-eqz v6, :cond_1df

    goto :goto_1c6

    :cond_1df
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1e2
    invoke-interface {p1, v2}, Labcd/LE;->update(I)V

    goto/16 :goto_65

    :cond_1e7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Labcd/hC;

    if-eqz v5, :cond_1f6

    check-cast v4, Labcd/hC;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_50

    :cond_1f6
    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_50
.end method

.method private DW(Labcd/cC$c;Labcd/LE;)V
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->renamesBreakingModifies:Ljava/lang/String;

    iget-object v2, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2, v1, v2}, Labcd/LE;->j6(Ljava/lang/String;I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1c
    iget-object v3, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_27

    iput-object v0, p0, Labcd/BC;->FH:Ljava/util/List;

    return-void

    :cond_27
    iget-object v3, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/hC;

    invoke-virtual {v3}, Labcd/hC;->DW()Labcd/hC$a;

    move-result-object v4

    sget-object v5, Labcd/hC$a;->DW:Labcd/hC$a;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_5d

    invoke-direct {p0, p1, v3}, Labcd/BC;->j6(Labcd/cC$c;Labcd/hC;)I

    move-result v4

    iget v5, p0, Labcd/BC;->u7:I

    if-ge v4, v5, :cond_5d

    invoke-static {v3}, Labcd/hC;->j6(Labcd/hC;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/hC;

    iput v4, v5, Labcd/hC;->gn:I

    iget-object v4, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/hC;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_5d
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_60
    invoke-interface {p2, v6}, Labcd/LE;->update(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c
.end method

.method private static FH(Labcd/hC;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Labcd/hC;->VH:Labcd/hC$a;

    sget-object v1, Labcd/hC$a;->FH:Labcd/hC$a;

    if-ne v0, v1, :cond_9

    iget-object p0, p0, Labcd/hC;->FH:Ljava/lang/String;

    goto :goto_b

    :cond_9
    iget-object p0, p0, Labcd/hC;->Hw:Ljava/lang/String;

    :goto_b
    return-object p0
.end method

.method private FH(Labcd/LE;)V
    .registers 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->renamesRejoiningModifies:Ljava/lang/String;

    iget-object v3, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {p1, v2, v3}, Labcd/LE;->j6(Ljava/lang/String;I)V

    iget-object v2, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_81

    iget-object v2, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4d

    iput-object v1, p0, Labcd/BC;->v5:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Labcd/BC;->Hw:Ljava/util/List;

    return-void

    :cond_4d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/hC;

    iget-object v5, v2, Labcd/hC;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/hC;

    if-eqz v5, :cond_7a

    iget-object v6, v5, Labcd/hC;->v5:Labcd/rE;

    iget-object v7, v2, Labcd/hC;->Zo:Labcd/rE;

    invoke-static {v6, v7}, Labcd/BC;->j6(Labcd/rE;Labcd/rE;)Z

    move-result v6

    if-eqz v6, :cond_75

    iget-object v6, p0, Labcd/BC;->FH:Ljava/util/List;

    sget-object v7, Labcd/hC$a;->DW:Labcd/hC$a;

    iget v8, v5, Labcd/hC;->gn:I

    invoke-static {v7, v5, v2, v8}, Labcd/hC;->j6(Labcd/hC$a;Labcd/hC;Labcd/hC;I)Labcd/hC;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_75
    iget-object v6, v5, Labcd/hC;->FH:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7a
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7d
    invoke-interface {p1, v4}, Labcd/LE;->update(I)V

    goto :goto_39

    :cond_81
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/hC;

    iget-object v5, v3, Labcd/hC;->FH:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v4}, Labcd/LE;->update(I)V

    goto :goto_2c
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

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Labcd/BC;->FH()I

    move-result v1

    if-gt v0, v1, :cond_1d

    goto :goto_21

    :cond_1d
    const/4 p1, 0x1

    iput-boolean p1, p0, Labcd/BC;->EQ:Z

    goto :goto_52

    :cond_21
    :goto_21
    new-instance v0, Labcd/FC;

    iget-object v1, p0, Labcd/BC;->Hw:Ljava/util/List;

    iget-object v2, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-direct {v0, p1, v1, v2}, Labcd/FC;-><init>(Labcd/cC$c;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0}, Labcd/BC;->Hw()I

    move-result p1

    invoke-virtual {v0, p1}, Labcd/FC;->j6(I)V

    invoke-virtual {v0, p2}, Labcd/FC;->j6(Labcd/LE;)V

    iget-boolean p1, p0, Labcd/BC;->EQ:Z

    invoke-virtual {v0}, Labcd/FC;->Hw()Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Labcd/BC;->EQ:Z

    invoke-virtual {v0}, Labcd/FC;->DW()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-virtual {v0}, Labcd/FC;->j6()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Labcd/BC;->v5:Ljava/util/List;

    iget-object p1, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-virtual {v0}, Labcd/FC;->FH()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_52
    return-void
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

    move-result-object p1

    invoke-virtual {v1, p1}, Labcd/EC;->j6(Labcd/FE;)V

    invoke-virtual {v1}, Labcd/EC;->j6()V

    const/16 p1, 0x64

    invoke-virtual {v0, v1, p1}, Labcd/EC;->j6(Labcd/EC;I)I

    move-result p1
    :try_end_28
    .catch Labcd/EC$a; {:try_start_0 .. :try_end_28} :catch_29

    return p1

    :catch_29
    move-exception p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Labcd/BC;->EQ:Z

    iget p2, p0, Labcd/BC;->u7:I

    add-int/2addr p2, p1

    return p2
.end method

.method private static j6(Labcd/hC;)Labcd/WD;
    .registers 3

    iget-object v0, p0, Labcd/hC;->VH:Labcd/hC$a;

    sget-object v1, Labcd/hC$a;->FH:Labcd/hC$a;

    if-ne v0, v1, :cond_9

    iget-object p0, p0, Labcd/hC;->u7:Labcd/WD;

    goto :goto_b

    :cond_9
    iget-object p0, p0, Labcd/hC;->tp:Labcd/WD;

    :goto_b
    return-object p0
.end method

.method private static j6(Labcd/hC;Labcd/hC;)Labcd/hC;
    .registers 4

    sget-object v0, Labcd/hC$a;->v5:Labcd/hC$a;

    const/16 v1, 0x64

    invoke-static {v0, p0, p1, v1}, Labcd/hC;->j6(Labcd/hC$a;Labcd/hC;Labcd/hC;I)Labcd/hC;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Labcd/hC;Ljava/util/List;)Labcd/hC;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/hC;",
            "Ljava/util/List<",
            "Labcd/hC;",
            ">;)",
            "Labcd/hC;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    return-object v0

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/hC;

    invoke-static {v2}, Labcd/BC;->DW(Labcd/hC;)Labcd/rE;

    move-result-object v3

    invoke-static {p0}, Labcd/BC;->DW(Labcd/hC;)Labcd/rE;

    move-result-object v4

    invoke-static {v3, v4}, Labcd/BC;->j6(Labcd/rE;Labcd/rE;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v2}, Labcd/BC;->FH(Labcd/hC;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Labcd/BC;->FH(Labcd/hC;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Labcd/FC;->j6(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-le v3, v1, :cond_6

    move-object v0, v2

    move v1, v3

    goto :goto_6
.end method

.method private j6(Ljava/util/List;Labcd/LE;)Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labcd/hC;",
            ">;",
            "Labcd/LE;",
            ")",
            "Ljava/util/HashMap<",
            "Labcd/WD;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_10

    return-object v0

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/hC;

    invoke-static {v1}, Labcd/BC;->j6(Labcd/hC;)Labcd/WD;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Labcd/hC;

    if-eqz v3, :cond_38

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Labcd/hC;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Labcd/BC;->j6(Labcd/hC;)Labcd/WD;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    :cond_38
    if-eqz v2, :cond_47

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Labcd/BC;->j6(Labcd/hC;)Labcd/WD;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    :goto_47
    const/4 v1, 0x1

    invoke-interface {p2, v1}, Labcd/LE;->update(I)V

    goto :goto_9
.end method

.method static j6(Labcd/rE;Labcd/rE;)Z
    .registers 3

    invoke-virtual {p0}, Labcd/rE;->DW()I

    move-result p0

    const v0, 0xf000

    and-int/2addr p0, v0

    invoke-virtual {p1}, Labcd/rE;->DW()I

    move-result p1

    and-int/2addr p1, v0

    if-ne p0, p1, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/BC;->DW:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/hC$a;->values()[Labcd/hC$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/hC$a;->j6:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/hC$a;->v5:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v1, Labcd/hC$a;->FH:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    move-exception v1

    :goto_2d
    :try_start_2d
    sget-object v1, Labcd/hC$a;->DW:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_38

    :catch_37
    move-exception v1

    :goto_38
    :try_start_38
    sget-object v1, Labcd/hC$a;->Hw:Labcd/hC$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_41} :catch_42

    goto :goto_43

    :catch_42
    move-exception v1

    :goto_43
    sput-object v0, Labcd/BC;->DW:[I

    return-object v0
.end method


# virtual methods
.method public DW()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/IE;",
            "Labcd/LE;",
            ")",
            "Ljava/util/List<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Labcd/cC;->j6(Labcd/IE;)Labcd/cC;

    move-result-object p1

    new-instance v0, Labcd/cC$c;

    invoke-direct {v0, p1, p1}, Labcd/cC$c;-><init>(Labcd/cC;Labcd/cC;)V

    invoke-virtual {p0, v0, p2}, Labcd/BC;->j6(Labcd/cC$c;Labcd/LE;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/LE;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            ")",
            "Ljava/util/List<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Labcd/BC;->Zo:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Labcd/BC;->VH:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v0

    :try_start_a
    invoke-virtual {p0, v0, p1}, Labcd/BC;->j6(Labcd/IE;Labcd/LE;)Ljava/util/List;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    invoke-virtual {v0}, Labcd/IE;->FH()V

    return-object p1

    :catchall_12
    move-exception p1

    invoke-virtual {v0}, Labcd/IE;->FH()V

    throw p1

    :cond_17
    iget-object p1, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/cC$c;Labcd/LE;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/cC$c;",
            "Labcd/LE;",
            ")",
            "Ljava/util/List<",
            "Labcd/hC;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Labcd/BC;->Zo:Z

    if-nez v0, :cond_69

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/BC;->Zo:Z

    if-nez p2, :cond_b

    sget-object p2, Labcd/vE;->j6:Labcd/vE;

    :cond_b
    iget v0, p0, Labcd/BC;->u7:I

    if-lez v0, :cond_12

    invoke-direct {p0, p1, p2}, Labcd/BC;->DW(Labcd/cC$c;Labcd/LE;)V

    :cond_12
    iget-object v0, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-direct {p0, p2}, Labcd/BC;->DW(Labcd/LE;)V

    :cond_25
    iget-object v0, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-direct {p0, p1, p2}, Labcd/BC;->FH(Labcd/cC$c;Labcd/LE;)V

    :cond_38
    iget p1, p0, Labcd/BC;->u7:I

    if-lez p1, :cond_4f

    iget-object p1, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4f

    iget-object p1, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4f

    invoke-direct {p0, p2}, Labcd/BC;->FH(Labcd/LE;)V

    :cond_4f
    iget-object p1, p0, Labcd/BC;->FH:Ljava/util/List;

    iget-object p2, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/BC;->v5:Ljava/util/List;

    iget-object p2, p0, Labcd/BC;->FH:Ljava/util/List;

    iget-object v0, p0, Labcd/BC;->Hw:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p1, p0, Labcd/BC;->Hw:Ljava/util/List;

    iget-object p1, p0, Labcd/BC;->FH:Ljava/util/List;

    sget-object p2, Labcd/BC;->j6:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_69
    iget-object p1, p0, Labcd/BC;->FH:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Labcd/hC;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Labcd/BC;->Zo:Z

    if-nez v0, :cond_60

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    invoke-static {}, Labcd/BC;->j6()[I

    move-result-object v1

    invoke-virtual {v0}, Labcd/hC;->DW()Labcd/hC$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_30

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2d

    goto :goto_3e

    :cond_2d
    iget-object v1, p0, Labcd/BC;->Hw:Ljava/util/List;

    goto :goto_5c

    :cond_30
    invoke-virtual {v0}, Labcd/hC;->VH()Labcd/rE;

    move-result-object v1

    invoke-virtual {v0}, Labcd/hC;->Hw()Labcd/rE;

    move-result-object v3

    invoke-static {v1, v3}, Labcd/BC;->j6(Labcd/rE;Labcd/rE;)Z

    move-result v1

    if-eqz v1, :cond_41

    :goto_3e
    iget-object v1, p0, Labcd/BC;->FH:Ljava/util/List;

    goto :goto_5c

    :cond_41
    invoke-static {v0}, Labcd/hC;->j6(Labcd/hC;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Labcd/BC;->Hw:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/hC;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Labcd/BC;->v5:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hC;

    goto :goto_5c

    :cond_5a
    iget-object v1, p0, Labcd/BC;->v5:Ljava/util/List;

    :goto_5c
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_60
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->renamesAlreadyFound:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6d

    :goto_6c
    throw p1

    :goto_6d
    goto :goto_6c
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
