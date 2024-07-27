.class public Labcd/PC;
.super Labcd/IC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/PC$a;,
        Labcd/PC$b;
    }
.end annotation


# static fields
.field private static final Hw:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Labcd/PC$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final v5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/PC$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/OC;

    invoke-direct {v0}, Labcd/OC;-><init>()V

    sput-object v0, Labcd/PC;->Hw:Ljava/util/Comparator;

    return-void
.end method

.method protected constructor <init>(Labcd/KC;I)V
    .registers 4

    invoke-direct {p0, p1, p2}, Labcd/IC;-><init>(Labcd/KC;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/PC;->v5:Ljava/util/List;

    return-void
.end method

.method private v5()V
    .registers 10

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Labcd/PC;->v5:Ljava/util/List;

    sget-object v1, Labcd/PC;->Hw:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Labcd/IC;->j6:Labcd/KC;

    invoke-virtual {v0}, Labcd/KC;->v5()I

    move-result v6

    iget-object v0, p0, Labcd/PC;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    sub-int v0, v6, v1

    if-lez v0, :cond_1

    invoke-virtual {p0, v1, v0}, Labcd/IC;->j6(II)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/PC$b;

    iget-object v3, p0, Labcd/IC;->j6:Labcd/KC;

    iget-object v4, v0, Labcd/PC$b;->j6:[B

    array-length v8, v4

    invoke-virtual {v3, v4, v8}, Labcd/KC;->j6([BI)I

    move-result v3

    if-gez v3, :cond_5

    move v4, v5

    :goto_1
    if-gez v3, :cond_3

    add-int/lit8 v3, v3, 0x1

    neg-int v3, v3

    :cond_3
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int/2addr v8, v1

    if-lez v8, :cond_4

    invoke-virtual {p0, v1, v8}, Labcd/IC;->j6(II)V

    :cond_4
    if-eqz v4, :cond_6

    move v1, v3

    :goto_2
    instance-of v8, v0, Labcd/PC$a;

    if-nez v8, :cond_0

    if-eqz v4, :cond_8

    new-instance v3, Labcd/QC;

    iget-object v4, v0, Labcd/PC$b;->j6:[B

    invoke-direct {v3, v4}, Labcd/QC;-><init>([B)V

    invoke-virtual {v0, v3}, Labcd/PC$b;->j6(Labcd/QC;)V

    invoke-virtual {v3}, Labcd/QC;->Zo()I

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v3

    :goto_3
    invoke-virtual {p0, v0}, Labcd/IC;->j6(Labcd/QC;)V

    goto :goto_0

    :cond_5
    move v4, v2

    goto :goto_1

    :cond_6
    iget-object v1, p0, Labcd/IC;->j6:Labcd/KC;

    invoke-virtual {v1, v3}, Labcd/KC;->DW(I)I

    move-result v1

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->fileModeNotSetForPath:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Labcd/QC;->v5()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v4, p0, Labcd/IC;->j6:Labcd/KC;

    invoke-virtual {v4, v3}, Labcd/KC;->j6(I)Labcd/QC;

    move-result-object v3

    invoke-virtual {v0, v3}, Labcd/PC$b;->j6(Labcd/QC;)V

    move-object v0, v3

    goto :goto_3
.end method


# virtual methods
.method public DW()V
    .registers 2

    iget-object v0, p0, Labcd/PC;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Labcd/PC;->v5()V

    invoke-virtual {p0}, Labcd/IC;->Hw()V

    :cond_0
    return-void
.end method

.method public j6(Labcd/PC$b;)V
    .registers 3

    iget-object v0, p0, Labcd/PC;->v5:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j6()Z
    .registers 2

    iget-object v0, p0, Labcd/PC;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/IC;->j6:Labcd/KC;

    invoke-virtual {v0}, Labcd/KC;->tp()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Labcd/IC;->j6()Z

    move-result v0

    goto :goto_0
.end method
