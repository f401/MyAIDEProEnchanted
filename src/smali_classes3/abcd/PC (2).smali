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
            "Ljava/util/Comparator<",
            "Labcd/PC$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final v5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/IC;-><init>(Labcd/KC;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Labcd/PC;->v5:Ljava/util/List;

    return-void
.end method

.method private v5()V
    .registers 10

    iget-object v0, p0, Labcd/PC;->v5:Ljava/util/List;

    sget-object v1, Labcd/PC;->Hw:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Labcd/IC;->j6:Labcd/KC;

    invoke-virtual {v0}, Labcd/KC;->v5()I

    move-result v0

    iget-object v1, p0, Labcd/PC;->v5:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_22

    sub-int/2addr v0, v3

    if-lez v0, :cond_21

    invoke-virtual {p0, v3, v0}, Labcd/IC;->j6(II)V

    :cond_21
    return-void

    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/PC$b;

    iget-object v5, p0, Labcd/IC;->j6:Labcd/KC;

    iget-object v6, v4, Labcd/PC$b;->j6:[B

    array-length v7, v6

    invoke-virtual {v5, v6, v7}, Labcd/KC;->j6([BI)I

    move-result v5

    const/4 v6, 0x1

    if-gez v5, :cond_36

    const/4 v7, 0x1

    goto :goto_37

    :cond_36
    const/4 v7, 0x0

    :goto_37
    if-gez v5, :cond_3c

    add-int/lit8 v5, v5, 0x1

    neg-int v5, v5

    :cond_3c
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int/2addr v8, v3

    if-lez v8, :cond_46

    invoke-virtual {p0, v3, v8}, Labcd/IC;->j6(II)V

    :cond_46
    if-eqz v7, :cond_4a

    move v3, v5

    goto :goto_50

    :cond_4a
    iget-object v3, p0, Labcd/IC;->j6:Labcd/KC;

    invoke-virtual {v3, v5}, Labcd/KC;->DW(I)I

    move-result v3

    :goto_50
    instance-of v8, v4, Labcd/PC$a;

    if-eqz v8, :cond_55

    goto :goto_15

    :cond_55
    if-eqz v7, :cond_80

    new-instance v5, Labcd/QC;

    iget-object v7, v4, Labcd/PC$b;->j6:[B

    invoke-direct {v5, v7}, Labcd/QC;-><init>([B)V

    invoke-virtual {v4, v5}, Labcd/PC$b;->j6(Labcd/QC;)V

    invoke-virtual {v5}, Labcd/QC;->Zo()I

    move-result v4

    if-eqz v4, :cond_68

    goto :goto_89

    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->fileModeNotSetForPath:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v5}, Labcd/QC;->v5()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_80
    iget-object v6, p0, Labcd/IC;->j6:Labcd/KC;

    invoke-virtual {v6, v5}, Labcd/KC;->j6(I)Labcd/QC;

    move-result-object v5

    invoke-virtual {v4, v5}, Labcd/PC$b;->j6(Labcd/QC;)V

    :goto_89
    invoke-virtual {p0, v5}, Labcd/IC;->j6(Labcd/QC;)V

    goto :goto_15
.end method


# virtual methods
.method public DW()V
    .registers 2

    iget-object v0, p0, Labcd/PC;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Labcd/PC;->v5()V

    invoke-virtual {p0}, Labcd/IC;->Hw()V

    :cond_e
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

    if-eqz v0, :cond_f

    iget-object v0, p0, Labcd/IC;->j6:Labcd/KC;

    invoke-virtual {v0}, Labcd/KC;->tp()V

    const/4 v0, 0x1

    return v0

    :cond_f
    invoke-super {p0}, Labcd/IC;->j6()Z

    move-result v0

    return v0
.end method
