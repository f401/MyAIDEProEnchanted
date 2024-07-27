.class public Labcd/IJ;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/IJ$a;
    }
.end annotation


# static fields
.field private static DW:[I

.field private static j6:[I


# instance fields
.field private final BT:Labcd/fG;

.field private EQ:Labcd/DI;

.field private final FH:Labcd/UE;

.field private final Hw:Labcd/qG;

.field private J0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field

.field private J8:Labcd/VI;

.field private KD:Z

.field private final Mr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field

.field private final P8:Labcd/fG;

.field private final QX:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private SI:Labcd/eI$c;

.field private final U2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field

.field private VH:Z

.field private Ws:Labcd/KI;

.field private final XL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:I

.field private a8:I

.field private final aM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Labcd/iG;",
            ">;"
        }
    .end annotation
.end field

.field private cn:Labcd/LJ;

.field private final ei:Labcd/hG;

.field private er:Z

.field private final gW:Labcd/fG;

.field private gn:Labcd/VK;

.field private final j3:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Labcd/iG;",
            ">;"
        }
    .end annotation
.end field

.field private lg:I

.field private nw:Labcd/IJ$a;

.field private rN:Ljava/lang/Boolean;

.field private ro:Labcd/TH$c;

.field private tp:Ljava/io/OutputStream;

.field private u7:Ljava/io/InputStream;

.field private v5:Labcd/NH;

.field private final vy:Labcd/fG;

.field private we:Labcd/EI;

.field private yS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/UE;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/IJ;->VH:Z

    sget-object v0, Labcd/KI;->j6:Labcd/KI;

    iput-object v0, p0, Labcd/IJ;->Ws:Labcd/KI;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/IJ;->QX:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/IJ;->XL:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/IJ;->aM:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/IJ;->j3:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/IJ;->Mr:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/IJ;->U2:Ljava/util/List;

    sget-object v0, Labcd/IJ$a;->j6:Labcd/IJ$a;

    iput-object v0, p0, Labcd/IJ;->nw:Labcd/IJ$a;

    sget-object v0, Labcd/eI$c;->j6:Labcd/eI$c;

    iput-object v0, p0, Labcd/IJ;->SI:Labcd/eI$c;

    sget-object v0, Labcd/LJ;->j6:Labcd/LJ;

    iput-object v0, p0, Labcd/IJ;->cn:Labcd/LJ;

    iput-object p1, p0, Labcd/IJ;->FH:Labcd/UE;

    new-instance v0, Labcd/qG;

    iget-object v1, p0, Labcd/IJ;->FH:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/qG;-><init>(Labcd/UE;)V

    iput-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    iget-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Z)V

    iget-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    const-string v1, "WANT"

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v0

    iput-object v0, p0, Labcd/IJ;->gW:Labcd/fG;

    iget-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    const-string v1, "PEER_HAS"

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v0

    iput-object v0, p0, Labcd/IJ;->BT:Labcd/fG;

    iget-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    const-string v1, "COMMON"

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v0

    iput-object v0, p0, Labcd/IJ;->vy:Labcd/fG;

    iget-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    const-string v1, "SATISFIED"

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v0

    iput-object v0, p0, Labcd/IJ;->P8:Labcd/fG;

    iget-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    iget-object v1, p0, Labcd/IJ;->BT:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Labcd/fG;)V

    new-instance v0, Labcd/hG;

    invoke-direct {v0}, Labcd/hG;-><init>()V

    iput-object v0, p0, Labcd/IJ;->ei:Labcd/hG;

    iget-object v0, p0, Labcd/IJ;->ei:Labcd/hG;

    iget-object v1, p0, Labcd/IJ;->gW:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/hG;->j6(Labcd/fG;)Z

    iget-object v0, p0, Labcd/IJ;->ei:Labcd/hG;

    iget-object v1, p0, Labcd/IJ;->BT:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/hG;->j6(Labcd/fG;)Z

    iget-object v0, p0, Labcd/IJ;->ei:Labcd/hG;

    iget-object v1, p0, Labcd/IJ;->vy:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/hG;->j6(Labcd/fG;)Z

    iget-object v0, p0, Labcd/IJ;->ei:Labcd/hG;

    iget-object v1, p0, Labcd/IJ;->P8:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/hG;->j6(Labcd/fG;)Z

    sget-object v0, Labcd/VI;->j6:Labcd/VI;

    iput-object v0, p0, Labcd/IJ;->J8:Labcd/VI;

    return-void
.end method

.method private DW(Labcd/iG;)Z
    .registers 10

    const/4 v1, 0x1

    iget-object v0, p0, Labcd/IJ;->P8:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    iget-object v2, p0, Labcd/IJ;->ei:Labcd/hG;

    invoke-virtual {v0, v2}, Labcd/qG;->j6(Labcd/hG;)V

    iget-object v2, p0, Labcd/IJ;->Hw:Labcd/qG;

    move-object v0, p1

    check-cast v0, Labcd/dG;

    invoke-virtual {v2, v0}, Labcd/qG;->DW(Labcd/dG;)V

    iget v0, p0, Labcd/IJ;->lg:I

    if-eqz v0, :cond_1

    iget-object v2, p0, Labcd/IJ;->Hw:Labcd/qG;

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Labcd/wG;->j6(J)Labcd/yG;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/qG;->j6(Labcd/yG;)V

    :cond_1
    iget-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->tp()Labcd/dG;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Labcd/IJ;->BT:Labcd/fG;

    invoke-virtual {v0, v2}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Labcd/IJ;->j6(Labcd/iG;)V

    iget-object v0, p0, Labcd/IJ;->P8:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic DW()[I
    .registers 3

    sget-object v0, Labcd/IJ;->DW:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/IJ$a;->values()[Labcd/IJ$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/IJ$a;->j6:Labcd/IJ$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Labcd/IJ$a;->FH:Labcd/IJ$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Labcd/IJ$a;->DW:Labcd/IJ$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Labcd/IJ;->DW:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private EQ()V
    .registers 7

    iget-boolean v0, p0, Labcd/IJ;->VH:Z

    if-eqz v0, :cond_2

    new-instance v0, Labcd/TI$a;

    iget-object v1, p0, Labcd/IJ;->we:Labcd/EI;

    invoke-direct {v0, v1}, Labcd/TI$a;-><init>(Labcd/EI;)V

    invoke-virtual {p0, v0}, Labcd/IJ;->j6(Labcd/TI;)V

    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Labcd/IJ;->gn()V

    iget-object v0, p0, Labcd/IJ;->XL:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Labcd/IJ;->Ws:Labcd/KI;

    iget-object v1, p0, Labcd/IJ;->XL:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Labcd/KI;->j6(Labcd/IJ;Ljava/util/Collection;I)V

    iget-object v0, p0, Labcd/IJ;->Ws:Labcd/KI;

    iget-object v2, p0, Labcd/IJ;->XL:Ljava/util/Set;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Labcd/KI;->j6(Labcd/IJ;Ljava/util/Collection;IIZ)V
    :try_end_0
    .catch Labcd/nD; {:try_start_0 .. :try_end_0} :catch_0
    .catch Labcd/MJ; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Labcd/IJ;->nw:Labcd/IJ$a;

    sget-object v1, Labcd/IJ$a;->FH:Labcd/IJ$a;

    if-ne v0, v1, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Labcd/IJ;->yS:Ljava/util/Set;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/IJ;->yS:Ljava/util/Set;

    invoke-virtual {p0}, Labcd/IJ;->FH()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Labcd/IJ;->yS:Ljava/util/Set;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :try_start_1
    iget-object v0, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v1, "multi_ack_detailed"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Labcd/eI$c;->FH:Labcd/eI$c;

    iput-object v0, p0, Labcd/IJ;->SI:Labcd/eI$c;

    iget-object v0, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v1, "no-done"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Labcd/IJ;->KD:Z

    :goto_3
    iget v0, p0, Labcd/IJ;->a8:I

    if-eqz v0, :cond_6

    invoke-direct {p0}, Labcd/IJ;->VH()V

    :cond_6
    invoke-direct {p0}, Labcd/IJ;->Hw()Z
    :try_end_1
    .catch Labcd/nD; {:try_start_1 .. :try_end_1} :catch_0
    .catch Labcd/MJ; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Labcd/IJ;->tp()V

    goto :goto_1

    :cond_7
    :try_start_2
    iget-object v0, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v1, "multi_ack"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Labcd/eI$c;->DW:Labcd/eI$c;

    iput-object v0, p0, Labcd/IJ;->SI:Labcd/eI$c;
    :try_end_2
    .catch Labcd/nD; {:try_start_2 .. :try_end_2} :catch_0
    .catch Labcd/MJ; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/IJ;->j6(Ljava/lang/String;)V

    throw v0

    :cond_8
    :try_start_3
    sget-object v0, Labcd/eI$c;->j6:Labcd/eI$c;

    iput-object v0, p0, Labcd/IJ;->SI:Labcd/eI$c;
    :try_end_3
    .catch Labcd/nD; {:try_start_3 .. :try_end_3} :catch_0
    .catch Labcd/MJ; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Labcd/MJ;->j6()Z

    const/4 v0, 0x0

    throw v0

    :catch_2
    move-exception v0

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->internalServerError:Ljava/lang/String;

    invoke-direct {p0, v1}, Labcd/IJ;->j6(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->internalServerError:Ljava/lang/String;

    invoke-direct {p0, v1}, Labcd/IJ;->j6(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v0

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->internalServerError:Ljava/lang/String;

    invoke-direct {p0, v1}, Labcd/IJ;->j6(Ljava/lang/String;)V

    throw v0
.end method

.method private Hw()Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Labcd/IJ;->rN:Ljava/lang/Boolean;

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    :try_start_0
    iget-object v4, p0, Labcd/IJ;->EQ:Labcd/DI;

    invoke-virtual {v4}, Labcd/DI;->DW()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    sget-object v5, Labcd/DI;->j6:Ljava/lang/String;

    if-ne v4, v5, :cond_5

    invoke-direct {p0, v3, v2}, Labcd/IJ;->j6(Ljava/util/List;Labcd/yE;)Labcd/yE;

    move-result-object v2

    iget-object v4, p0, Labcd/IJ;->j3:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Labcd/IJ;->SI:Labcd/eI$c;

    sget-object v5, Labcd/eI$c;->j6:Labcd/eI$c;

    if-eq v4, v5, :cond_1

    :cond_0
    iget-object v4, p0, Labcd/IJ;->we:Labcd/EI;

    const-string v5, "NAK\n"

    invoke-virtual {v4, v5}, Labcd/EI;->j6(Ljava/lang/String;)V

    :cond_1
    iget-boolean v4, p0, Labcd/IJ;->KD:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Labcd/IJ;->er:Z

    if-eqz v4, :cond_3

    iget-object v1, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ACK "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/EI;->j6(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return v0

    :cond_3
    iget-boolean v4, p0, Labcd/IJ;->VH:Z

    if-nez v4, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Labcd/IJ;->we:Labcd/EI;

    invoke-virtual {v4}, Labcd/EI;->DW()V

    goto :goto_0

    :cond_5
    const-string v5, "have "

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_6

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-string v5, "done"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-direct {p0, v3, v2}, Labcd/IJ;->j6(Ljava/util/List;Labcd/yE;)Labcd/yE;

    move-result-object v1

    iget-object v2, p0, Labcd/IJ;->j3:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, p0, Labcd/IJ;->we:Labcd/EI;

    const-string v2, "NAK\n"

    invoke-virtual {v1, v2}, Labcd/EI;->j6(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v2, p0, Labcd/IJ;->SI:Labcd/eI$c;

    sget-object v3, Labcd/eI$c;->j6:Labcd/eI$c;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ACK "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Labcd/EI;->j6(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    new-instance v2, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->expectedGot:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "have"

    aput-object v6, v5, v1

    aput-object v4, v5, v0

    invoke-static {v3, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    iget-boolean v2, p0, Labcd/IJ;->VH:Z

    if-nez v2, :cond_9

    iget v2, p0, Labcd/IJ;->a8:I

    if-lez v2, :cond_9

    move v0, v1

    goto/16 :goto_1

    :cond_9
    throw v0
.end method

.method private VH()V
    .registers 7

    new-instance v2, Labcd/TF$c;

    iget-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->Zo()Labcd/IE;

    move-result-object v0

    iget v1, p0, Labcd/IJ;->a8:I

    invoke-direct {v2, v0, v1}, Labcd/TF$c;-><init>(Labcd/IE;I)V

    iget-object v0, p0, Labcd/IJ;->XL:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    :goto_1
    invoke-virtual {v2}, Labcd/qG;->tp()Labcd/dG;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Labcd/IJ;->we:Labcd/EI;

    invoke-virtual {v0}, Labcd/EI;->j6()V

    return-void

    :cond_1
    move-object v0, v1

    check-cast v0, Labcd/TF$a;

    invoke-virtual {v0}, Labcd/TF$a;->BT()I

    move-result v3

    iget v4, p0, Labcd/IJ;->a8:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Labcd/IJ;->Mr:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "shallow "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Labcd/EI;->j6(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Labcd/TF$a;->BT()I

    move-result v1

    iget v3, p0, Labcd/IJ;->a8:I

    if-ge v1, v3, :cond_0

    iget-object v1, p0, Labcd/IJ;->Mr:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Labcd/IJ;->U2:Ljava/util/List;

    invoke-virtual {v0}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unshallow "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/EI;->j6(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    :try_start_0
    invoke-virtual {v2, v0}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/TF$c;->Hw(Labcd/dG;)V
    :try_end_0
    .catch Labcd/ZC; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private Zo()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/IJ;->j3:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Labcd/IJ;->aM:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iG;

    invoke-direct {p0, v0}, Labcd/IJ;->DW(Labcd/iG;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->internalRevisionError:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/nD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private gn()V
    .registers 10

    const/4 v4, 0x1

    const/16 v8, 0x2d

    const/4 v2, 0x0

    move v3, v4

    :goto_0
    :try_start_0
    iget-object v0, p0, Labcd/IJ;->EQ:Labcd/DI;

    invoke-virtual {v0}, Labcd/DI;->DW()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    sget-object v0, Labcd/DI;->j6:Ljava/lang/String;

    if-ne v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "deepen "

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Labcd/IJ;->a8:I

    goto :goto_0

    :cond_2
    const-string v0, "shallow "

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/IJ;->Mr:Ljava/util/Set;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v0, "want "

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v8, :cond_6

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_7

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    move v0, v2

    :goto_1
    if-lt v0, v5, :cond_5

    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Labcd/IJ;->XL:Ljava/util/Set;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v3, v2

    goto :goto_0

    :cond_5
    aget-object v6, v3, v0

    iget-object v7, p0, Labcd/IJ;->QX:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    new-instance v0, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->expectedGot:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "want"

    aput-object v6, v5, v2

    aput-object v1, v5, v4

    invoke-static {v3, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    if-nez v3, :cond_0

    throw v0

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method private j6(Ljava/util/List;Labcd/yE;)Labcd/yE;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/yE;",
            ">;",
            "Labcd/yE;",
            ")",
            "Labcd/yE;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v1, p0, Labcd/IJ;->Ws:Labcd/KI;

    iget-object v3, p0, Labcd/IJ;->XL:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1, p0, v3, v4}, Labcd/KI;->j6(Labcd/IJ;Ljava/util/Collection;I)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object p2

    :cond_0
    iput-boolean v7, p0, Labcd/IJ;->er:Z

    iget-object v1, p0, Labcd/IJ;->aM:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Labcd/IJ;->XL:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v3, p0, Labcd/IJ;->XL:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v5

    add-int/2addr v3, v5

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, p0, Labcd/IJ;->XL:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v3, v1

    move v5, v6

    :goto_1
    iget-object v1, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v1, v4, v5}, Labcd/qG;->j6(Ljava/lang/Iterable;Z)Labcd/MF;

    move-result-object v8

    move v4, v7

    move-object v1, v2

    :cond_1
    :goto_2
    :try_start_0
    invoke-interface {v8}, Labcd/MF;->next()Labcd/iG;
    :try_end_0
    .catch Labcd/fD; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_d

    invoke-interface {v8}, Labcd/aE;->j6()V

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Labcd/IJ;->DW()[I

    move-result-object v2

    iget-object v3, p0, Labcd/IJ;->nw:Labcd/IJ$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v11, :cond_7

    if-ne v2, v12, :cond_6

    :cond_2
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v5, v1, v4

    if-lez v5, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_4
    if-gez v2, :cond_8

    :cond_3
    :goto_5
    iget-object v1, p0, Labcd/IJ;->SI:Labcd/eI$c;

    sget-object v2, Labcd/eI$c;->FH:Labcd/eI$c;

    if-ne v1, v2, :cond_4

    if-nez v7, :cond_4

    invoke-direct {p0}, Labcd/IJ;->v5()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/yE;

    iput-boolean v6, p0, Labcd/IJ;->er:Z

    iget-object v2, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "ACK "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ready\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Labcd/EI;->j6(Ljava/lang/String;)V

    iput-boolean v6, p0, Labcd/IJ;->er:Z

    :cond_4
    iget-object v1, p0, Labcd/IJ;->Ws:Labcd/KI;

    iget-object v3, p0, Labcd/IJ;->aM:Ljava/util/Set;

    iget-boolean v6, p0, Labcd/IJ;->er:Z

    move-object v2, p0

    invoke-interface/range {v1 .. v6}, Labcd/KI;->j6(Labcd/IJ;Ljava/util/Collection;IIZ)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    :cond_5
    move-object v3, v2

    move-object v4, p1

    move v5, v7

    goto/16 :goto_1

    :cond_6
    new-instance v2, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->wantNotValid:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/iG;

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-direct {p0, v1}, Labcd/IJ;->j6(Ljava/util/Set;)V

    goto/16 :goto_3

    :cond_8
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/yE;

    iget-object v3, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v3, v1}, Labcd/qG;->Hw(Labcd/YD;)Labcd/iG;

    move-result-object v3

    if-nez v3, :cond_c

    invoke-direct {p0}, Labcd/IJ;->v5()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Labcd/IJ;->j6()[I

    move-result-object v2

    iget-object v3, p0, Labcd/IJ;->SI:Labcd/eI$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v6, :cond_9

    if-eq v2, v11, :cond_b

    if-eq v2, v12, :cond_a

    :cond_9
    :goto_6
    move v7, v6

    goto/16 :goto_5

    :cond_a
    iget-object v2, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "ACK "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ready\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Labcd/EI;->j6(Ljava/lang/String;)V

    iput-boolean v6, p0, Labcd/IJ;->er:Z

    goto :goto_6

    :cond_b
    iget-object v2, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "ACK "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " continue\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Labcd/EI;->j6(Ljava/lang/String;)V

    goto :goto_6

    :cond_c
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto/16 :goto_4

    :cond_d
    :try_start_1
    iget-object v5, p0, Labcd/IJ;->XL:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Labcd/IJ;->yS:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Labcd/IJ;->nw:Labcd/IJ$a;

    sget-object v9, Labcd/IJ$a;->FH:Labcd/IJ$a;

    if-eq v5, v9, :cond_f

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :cond_e
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v5, p0, Labcd/IJ;->gW:Labcd/fG;

    invoke-virtual {v2, v5}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, p0, Labcd/IJ;->gW:Labcd/fG;

    invoke-virtual {v2, v5}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object v5, p0, Labcd/IJ;->aM:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_10
    instance-of v5, v2, Labcd/dG;

    if-nez v5, :cond_11

    iget-object v5, p0, Labcd/IJ;->P8:Labcd/fG;

    invoke-virtual {v2, v5}, Labcd/iG;->j6(Labcd/fG;)V

    :cond_11
    instance-of v5, v2, Labcd/lG;

    if-eqz v5, :cond_12

    iget-object v5, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v5, v2}, Labcd/qG;->FH(Labcd/iG;)Labcd/iG;

    move-result-object v5

    instance-of v9, v5, Labcd/dG;

    if-eqz v9, :cond_12

    iget-object v9, p0, Labcd/IJ;->gW:Labcd/fG;

    invoke-virtual {v5, v9}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v9

    if-nez v9, :cond_12

    iget-object v9, p0, Labcd/IJ;->gW:Labcd/fG;

    invoke-virtual {v5, v9}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object v9, p0, Labcd/IJ;->aM:Ljava/util/Set;

    invoke-interface {v9, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_13
    move-object v5, v1

    add-int/lit8 v4, v4, 0x1

    instance-of v1, v2, Labcd/dG;

    if-eqz v1, :cond_15

    move-object v0, v2

    check-cast v0, Labcd/dG;

    move-object v1, v0

    iget v9, p0, Labcd/IJ;->lg:I

    if-eqz v9, :cond_14

    invoke-virtual {v1}, Labcd/dG;->U2()I

    move-result v9

    iget v10, p0, Labcd/IJ;->lg:I

    if-ge v9, v10, :cond_15

    :cond_14
    invoke-virtual {v1}, Labcd/dG;->U2()I

    move-result v1

    iput v1, p0, Labcd/IJ;->lg:I

    :cond_15
    iget-object v1, p0, Labcd/IJ;->BT:Labcd/fG;

    invoke-virtual {v2, v1}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    :goto_7
    move-object p2, v2

    move-object v1, v5

    goto/16 :goto_2

    :cond_17
    iget-object v1, p0, Labcd/IJ;->BT:Labcd/fG;

    invoke-virtual {v2, v1}, Labcd/iG;->j6(Labcd/fG;)V

    instance-of v1, v2, Labcd/dG;

    if-eqz v1, :cond_18

    move-object v0, v2

    check-cast v0, Labcd/dG;

    move-object v1, v0

    iget-object v9, p0, Labcd/IJ;->BT:Labcd/fG;

    invoke-virtual {v1, v9}, Labcd/dG;->FH(Labcd/fG;)V

    :cond_18
    invoke-direct {p0, v2}, Labcd/IJ;->j6(Labcd/iG;)V

    invoke-static {}, Labcd/IJ;->j6()[I

    move-result-object v1

    iget-object v9, p0, Labcd/IJ;->SI:Labcd/eI$c;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v1, v1, v9

    if-eq v1, v6, :cond_1a

    if-eq v1, v11, :cond_19

    if-ne v1, v12, :cond_16

    iget-object v1, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ACK "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " common\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Labcd/EI;->j6(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Labcd/aE;->j6()V

    throw v1

    :cond_19
    :try_start_2
    iget-object v1, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ACK "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " continue\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Labcd/EI;->j6(Ljava/lang/String;)V

    goto :goto_7

    :cond_1a
    iget-object v1, p0, Labcd/IJ;->j3:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v6, :cond_16

    iget-object v1, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ACK "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Labcd/EI;->j6(Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Labcd/fD;->j6()Labcd/yE;

    move-result-object v5

    iget-object v9, p0, Labcd/IJ;->XL:Ljava/util/Set;

    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->wantNotValid:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v5}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Labcd/nD;

    invoke-direct {v3, v1, v2}, Labcd/nD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private j6(Labcd/iG;)V
    .registers 3

    iget-object v0, p0, Labcd/IJ;->vy:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/IJ;->vy:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object v0, p0, Labcd/IJ;->j3:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/IJ;->rN:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method private j6(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERR "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/EI;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private j6(Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Labcd/iG;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/IJ;->yS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->tp()Labcd/dG;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->we()V

    return-void

    :cond_0
    new-instance v1, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->wantNotValid:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    :try_start_0
    iget-object v2, p0, Labcd/IJ;->Hw:Labcd/qG;

    iget-object v3, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v3, v0}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/qG;->FH(Labcd/dG;)V
    :try_end_0
    .catch Labcd/ZC; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iG;

    instance-of v2, v0, Labcd/dG;

    if-eqz v2, :cond_3

    iget-object v2, p0, Labcd/IJ;->Hw:Labcd/qG;

    check-cast v0, Labcd/dG;

    invoke-virtual {v2, v0}, Labcd/qG;->DW(Labcd/dG;)V

    goto :goto_0

    :cond_3
    new-instance v1, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v2, v0, Lorg/eclipse/jgit/JGitText;->wantNotValid:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iG;

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private j6(Z)V
    .registers 11

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-object v2, Labcd/vE;->j6:Labcd/vE;

    iget-object v0, p0, Labcd/IJ;->tp:Ljava/io/OutputStream;

    if-eqz p1, :cond_b

    const/16 v0, 0x3e8

    iget-object v1, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v3, "side-band-64k"

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0xfff0

    :cond_0
    new-instance v1, Labcd/aJ;

    iget-object v3, p0, Labcd/IJ;->tp:Ljava/io/OutputStream;

    invoke-direct {v1, v4, v0, v3}, Labcd/aJ;-><init>(IILjava/io/OutputStream;)V

    iget-object v3, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v4, "no-progress"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v4, Labcd/aJ;

    const/4 v2, 0x2

    iget-object v3, p0, Labcd/IJ;->tp:Ljava/io/OutputStream;

    invoke-direct {v4, v2, v0, v3}, Labcd/aJ;-><init>(IILjava/io/OutputStream;)V

    new-instance v0, Labcd/bJ;

    invoke-direct {v0, v4}, Labcd/bJ;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v0

    move-object v3, v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Labcd/IJ;->aM:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Labcd/IJ;->Ws:Labcd/KI;

    iget-object v1, p0, Labcd/IJ;->XL:Ljava/util/Set;

    iget-object v6, p0, Labcd/IJ;->j3:Ljava/util/Set;

    invoke-interface {v0, p0, v1, v6}, Labcd/KI;->j6(Labcd/IJ;Ljava/util/Collection;Ljava/util/Collection;)V
    :try_end_0
    .catch Labcd/MJ; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Labcd/IJ;->v5:Labcd/NH;

    if-nez v0, :cond_1

    new-instance v0, Labcd/NH;

    iget-object v1, p0, Labcd/IJ;->FH:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/NH;-><init>(Labcd/UE;)V

    :cond_1
    new-instance v5, Labcd/TH;

    iget-object v1, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v1}, Labcd/qG;->Zo()Labcd/IE;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Labcd/TH;-><init>(Labcd/NH;Labcd/IE;)V

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v5, v0}, Labcd/TH;->v5(Z)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Labcd/TH;->DW(Z)V

    iget-object v0, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v1, "ofs-delta"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v5, v0}, Labcd/TH;->j6(Z)V

    iget-object v0, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v1, "thin-pack"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v5, v0}, Labcd/TH;->Hw(Z)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Labcd/TH;->FH(Z)V

    iget-object v0, p0, Labcd/IJ;->j3:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/IJ;->J0:Ljava/util/Map;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Labcd/IJ;->J0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v5, v1}, Labcd/TH;->j6(Ljava/util/Set;)V

    :cond_3
    iget v0, p0, Labcd/IJ;->a8:I

    if-lez v0, :cond_4

    iget v0, p0, Labcd/IJ;->a8:I

    iget-object v1, p0, Labcd/IJ;->U2:Ljava/util/List;

    invoke-virtual {v5, v0, v1}, Labcd/TH;->j6(ILjava/util/Collection;)V

    :cond_4
    iget-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    iget-object v1, p0, Labcd/IJ;->aM:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Labcd/IJ;->XL:Ljava/util/Set;

    iget-object v6, p0, Labcd/IJ;->j3:Ljava/util/Set;

    invoke-virtual {v5, v2, v1, v6}, Labcd/TH;->j6(Labcd/LE;Ljava/util/Set;Ljava/util/Set;)V

    move-object v1, v0

    :goto_3
    iget-object v0, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v6, "include-tag"

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Labcd/IJ;->J0:Ljava/util/Map;

    if-eqz v0, :cond_6

    iget-object v0, p0, Labcd/IJ;->J0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_6
    sget-object v0, Labcd/vE;->j6:Labcd/vE;

    invoke-virtual {v5, v2, v0, v3}, Labcd/TH;->j6(Labcd/LE;Labcd/LE;Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Labcd/TH;->v5()Labcd/TH$c;

    move-result-object v0

    iput-object v0, p0, Labcd/IJ;->ro:Labcd/TH$c;

    if-eqz v4, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Labcd/TH;->v5()Labcd/TH$c;

    move-result-object v1

    invoke-virtual {v1}, Labcd/TH$c;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Labcd/aJ;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    invoke-virtual {v5}, Labcd/TH;->VH()V

    if-eqz p1, :cond_8

    iget-object v0, p0, Labcd/IJ;->we:Labcd/EI;

    invoke-virtual {v0}, Labcd/EI;->j6()V

    :cond_8
    iget-object v0, p0, Labcd/IJ;->ro:Labcd/TH$c;

    if-eqz v0, :cond_9

    iget-object v1, p0, Labcd/IJ;->cn:Labcd/LJ;

    invoke-interface {v1, v0}, Labcd/LJ;->j6(Labcd/TH$c;)V

    :cond_9
    return-void

    :cond_a
    move-object v0, v1

    :cond_b
    move-object v3, v0

    move-object v4, v5

    goto/16 :goto_0

    :cond_c
    :try_start_2
    iget-object v0, p0, Labcd/IJ;->Ws:Labcd/KI;

    iget-object v1, p0, Labcd/IJ;->aM:Ljava/util/Set;

    iget-object v6, p0, Labcd/IJ;->j3:Ljava/util/Set;

    invoke-interface {v0, p0, v1, v6}, Labcd/KI;->j6(Labcd/IJ;Ljava/util/Collection;Ljava/util/Collection;)V
    :try_end_2
    .catch Labcd/MJ; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    if-eqz p1, :cond_14

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Labcd/MJ;->DW()V

    throw v5

    :cond_d
    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Labcd/TH;->VH()V

    throw v0

    :cond_e
    :try_start_4
    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "refs/heads/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->we()V

    iget-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->J0()Labcd/_F;

    move-result-object v0

    iget-object v1, p0, Labcd/IJ;->aM:Ljava/util/Set;

    iget-object v6, p0, Labcd/IJ;->j3:Ljava/util/Set;

    invoke-virtual {v5, v2, v0, v1, v6}, Labcd/TH;->j6(Labcd/LE;Labcd/_F;Ljava/util/Set;Ljava/util/Set;)V

    move-object v1, v0

    goto/16 :goto_3

    :cond_10
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v7

    iget-object v8, p0, Labcd/IJ;->aM:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Labcd/IJ;->XL:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_11
    invoke-interface {v0}, Labcd/ME;->Hw()Z

    move-result v7

    if-nez v7, :cond_12

    iget-object v7, p0, Labcd/IJ;->FH:Labcd/UE;

    invoke-virtual {v7, v0}, Labcd/UE;->j6(Labcd/ME;)Labcd/ME;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {v5, v7}, Labcd/TH;->j6(Labcd/YD;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5, v0}, Labcd/TH;->j6(Labcd/YD;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v1, v0}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v0

    invoke-virtual {v5, v0}, Labcd/TH;->j6(Labcd/iG;)V

    goto/16 :goto_4

    :cond_13
    invoke-virtual {v1, v7}, Labcd/qG;->Hw(Labcd/YD;)Labcd/iG;

    move-result-object v7

    if-eqz v7, :cond_11

    iget-object v8, p0, Labcd/IJ;->gW:Labcd/fG;

    invoke-virtual {v7, v8}, Labcd/iG;->DW(Labcd/fG;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    if-eqz v7, :cond_11

    goto/16 :goto_4

    :cond_14
    throw v0
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/IJ;->j6:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/eI$c;->values()[Labcd/eI$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/eI$c;->DW:Labcd/eI$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Labcd/eI$c;->FH:Labcd/eI$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Labcd/eI$c;->j6:Labcd/eI$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Labcd/IJ;->j6:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private tp()V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v3, "side-band"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v3, "side-band-64k"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Labcd/IJ;->VH:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Labcd/IJ;->u7:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    if-gez v3, :cond_2

    :cond_0
    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Labcd/IJ;->j6(Z)V
    :try_end_0
    .catch Labcd/MJ; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->expectedEOFReceived:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\\x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Labcd/YC;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v0

    invoke-direct {p0}, Labcd/IJ;->u7()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Labcd/JJ;

    invoke-direct {v1, v0}, Labcd/JJ;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    throw v0

    :catch_1
    move-exception v0

    invoke-direct {p0}, Labcd/IJ;->u7()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Labcd/JJ;

    invoke-direct {v1, v0}, Labcd/JJ;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    throw v0

    :catch_2
    move-exception v0

    invoke-direct {p0}, Labcd/IJ;->u7()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Labcd/JJ;

    invoke-direct {v1, v0}, Labcd/JJ;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    throw v0

    :catch_3
    move-exception v0

    throw v0

    :cond_6
    invoke-direct {p0, v1}, Labcd/IJ;->j6(Z)V

    goto :goto_1
.end method

.method private u7()Z
    .registers 5

    :try_start_0
    new-instance v0, Labcd/aJ;

    const/4 v1, 0x3

    const/16 v2, 0x3e8

    iget-object v3, p0, Labcd/IJ;->tp:Ljava/io/OutputStream;

    invoke-direct {v0, v1, v2, v3}, Labcd/aJ;-><init>(IILjava/io/OutputStream;)V

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->internalServerError:Ljava/lang/String;

    invoke-static {v1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Labcd/aJ;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v5()Z
    .registers 2

    iget-object v0, p0, Labcd/IJ;->rN:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-direct {p0}, Labcd/IJ;->Zo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Labcd/IJ;->rN:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Labcd/IJ;->rN:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final FH()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/IJ;->J0:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/IJ;->FH:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/IJ;->j6(Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Labcd/IJ;->J0:Ljava/util/Map;

    return-object v0
.end method

.method public j6(Labcd/TI;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Labcd/IJ;->Ws:Labcd/KI;

    invoke-interface {v0, p0}, Labcd/KI;->j6(Labcd/IJ;)V
    :try_end_0
    .catch Labcd/MJ; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Labcd/IJ;->FH:Labcd/UE;

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Labcd/UE;)V

    const-string v0, "include-tag"

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/String;)V

    const-string v0, "multi_ack_detailed"

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/String;)V

    const-string v0, "multi_ack"

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/String;)V

    const-string v0, "ofs-delta"

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/String;)V

    const-string v0, "side-band"

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/String;)V

    const-string v0, "side-band-64k"

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/String;)V

    const-string v0, "thin-pack"

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/String;)V

    const-string v0, "no-progress"

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/String;)V

    const-string v0, "shallow"

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/String;)V

    iget-boolean v0, p0, Labcd/IJ;->VH:Z

    if-nez v0, :cond_0

    const-string v0, "no-done"

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Z)V

    invoke-virtual {p0}, Labcd/IJ;->FH()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Labcd/IJ;->yS:Ljava/util/Set;

    invoke-virtual {p1}, Labcd/TI;->j6()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ERR "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Labcd/TI;->j6(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Labcd/MJ;->DW()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    throw v0
.end method

.method public j6(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 9

    const/4 v4, 0x0

    :try_start_0
    iput-object p1, p0, Labcd/IJ;->u7:Ljava/io/InputStream;

    iput-object p2, p0, Labcd/IJ;->tp:Ljava/io/OutputStream;

    iget v0, p0, Labcd/IJ;->Zo:I

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Labcd/VK;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "-Timer"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/VK;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Labcd/IJ;->gn:Labcd/VK;

    new-instance v0, Labcd/_K;

    iget-object v1, p0, Labcd/IJ;->u7:Ljava/io/InputStream;

    iget-object v2, p0, Labcd/IJ;->gn:Labcd/VK;

    invoke-direct {v0, v1, v2}, Labcd/_K;-><init>(Ljava/io/InputStream;Labcd/VK;)V

    new-instance v1, Labcd/aL;

    iget-object v2, p0, Labcd/IJ;->tp:Ljava/io/OutputStream;

    iget-object v3, p0, Labcd/IJ;->gn:Labcd/VK;

    invoke-direct {v1, v2, v3}, Labcd/aL;-><init>(Ljava/io/OutputStream;Labcd/VK;)V

    iget v2, p0, Labcd/IJ;->Zo:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Labcd/_K;->j6(I)V

    iget v2, p0, Labcd/IJ;->Zo:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Labcd/aL;->j6(I)V

    iput-object v0, p0, Labcd/IJ;->u7:Ljava/io/InputStream;

    iput-object v1, p0, Labcd/IJ;->tp:Ljava/io/OutputStream;

    :cond_0
    new-instance v0, Labcd/DI;

    iget-object v1, p0, Labcd/IJ;->u7:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Labcd/DI;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Labcd/IJ;->EQ:Labcd/DI;

    new-instance v0, Labcd/EI;

    iget-object v1, p0, Labcd/IJ;->tp:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Labcd/EI;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Labcd/IJ;->we:Labcd/EI;

    invoke-direct {p0}, Labcd/IJ;->EQ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    iget-object v0, p0, Labcd/IJ;->gn:Labcd/VK;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Labcd/VK;->DW()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v4, p0, Labcd/IJ;->gn:Labcd/VK;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iput-object v4, p0, Labcd/IJ;->gn:Labcd/VK;

    throw v0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v1}, Labcd/qG;->EQ()V

    iget-object v1, p0, Labcd/IJ;->gn:Labcd/VK;

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Labcd/VK;->DW()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iput-object v4, p0, Labcd/IJ;->gn:Labcd/VK;

    :cond_2
    throw v0

    :catchall_2
    move-exception v0

    iput-object v4, p0, Labcd/IJ;->gn:Labcd/VK;

    throw v0
.end method

.method public j6(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/IJ;->J8:Labcd/VI;

    invoke-interface {v0, p1}, Labcd/VI;->j6(Ljava/util/Map;)Ljava/util/Map;

    iput-object p1, p0, Labcd/IJ;->J0:Ljava/util/Map;

    return-void
.end method
