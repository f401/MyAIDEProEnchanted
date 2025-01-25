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
            "Ljava/util/Map<",
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
            "Ljava/util/Set<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field

.field private final P8:Labcd/fG;

.field private final QX:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private SI:Labcd/eI$c;

.field private final U2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
            "Ljava/util/Set<",
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
            "Ljava/util/Set<",
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
            "Ljava/util/Set<",
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
            "Ljava/util/Set<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/UE;)V
    .registers 6

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

    invoke-direct {v0, p1}, Labcd/qG;-><init>(Labcd/UE;)V

    iput-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Labcd/qG;->j6(Z)V

    const-string p1, "WANT"

    invoke-virtual {v0, p1}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object p1

    iput-object p1, p0, Labcd/IJ;->gW:Labcd/fG;

    const-string v1, "PEER_HAS"

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v1

    iput-object v1, p0, Labcd/IJ;->BT:Labcd/fG;

    const-string v2, "COMMON"

    invoke-virtual {v0, v2}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v2

    iput-object v2, p0, Labcd/IJ;->vy:Labcd/fG;

    const-string v3, "SATISFIED"

    invoke-virtual {v0, v3}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v3

    iput-object v3, p0, Labcd/IJ;->P8:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Labcd/fG;)V

    new-instance v0, Labcd/hG;

    invoke-direct {v0}, Labcd/hG;-><init>()V

    iput-object v0, p0, Labcd/IJ;->ei:Labcd/hG;

    invoke-virtual {v0, p1}, Labcd/hG;->j6(Labcd/fG;)Z

    invoke-virtual {v0, v1}, Labcd/hG;->j6(Labcd/fG;)Z

    invoke-virtual {v0, v2}, Labcd/hG;->j6(Labcd/fG;)Z

    invoke-virtual {v0, v3}, Labcd/hG;->j6(Labcd/fG;)Z

    sget-object p1, Labcd/VI;->j6:Labcd/VI;

    iput-object p1, p0, Labcd/IJ;->J8:Labcd/VI;

    return-void
.end method

.method private DW(Labcd/iG;)Z
    .registers 9

    iget-object v0, p0, Labcd/IJ;->P8:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    iget-object v2, p0, Labcd/IJ;->ei:Labcd/hG;

    invoke-virtual {v0, v2}, Labcd/qG;->j6(Labcd/hG;)V

    iget-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    move-object v2, p1

    check-cast v2, Labcd/dG;

    invoke-virtual {v0, v2}, Labcd/qG;->DW(Labcd/dG;)V

    iget v0, p0, Labcd/IJ;->lg:I

    if-eqz v0, :cond_2b

    iget-object v2, p0, Labcd/IJ;->Hw:Labcd/qG;

    int-to-long v3, v0

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-static {v3, v4}, Labcd/wG;->j6(J)Labcd/yG;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/qG;->j6(Labcd/yG;)V

    :cond_2b
    iget-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->tp()Labcd/dG;

    move-result-object v0

    if-nez v0, :cond_35

    const/4 p1, 0x0

    return p1

    :cond_35
    iget-object v2, p0, Labcd/IJ;->BT:Labcd/fG;

    invoke-virtual {v0, v2}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-direct {p0, v0}, Labcd/IJ;->j6(Labcd/iG;)V

    iget-object v0, p0, Labcd/IJ;->P8:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    return v1
.end method

.method static synthetic DW()[I
    .registers 3

    sget-object v0, Labcd/IJ;->DW:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/IJ$a;->values()[Labcd/IJ$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/IJ$a;->j6:Labcd/IJ$a;

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
    sget-object v1, Labcd/IJ$a;->FH:Labcd/IJ$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v1, Labcd/IJ$a;->DW:Labcd/IJ$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    move-exception v1

    :goto_2d
    sput-object v0, Labcd/IJ;->DW:[I

    return-object v0
.end method

.method private EQ()V
    .registers 10

    iget-boolean v0, p0, Labcd/IJ;->VH:Z

    if-eqz v0, :cond_f

    new-instance v0, Labcd/TI$a;

    iget-object v1, p0, Labcd/IJ;->we:Labcd/EI;

    invoke-direct {v0, v1}, Labcd/TI$a;-><init>(Labcd/EI;)V

    invoke-virtual {p0, v0}, Labcd/IJ;->j6(Labcd/TI;)V

    goto :goto_35

    :cond_f
    iget-object v0, p0, Labcd/IJ;->nw:Labcd/IJ$a;

    sget-object v1, Labcd/IJ$a;->FH:Labcd/IJ$a;

    if-ne v0, v1, :cond_1c

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Labcd/IJ;->yS:Ljava/util/Set;

    goto :goto_35

    :cond_1c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/IJ;->yS:Ljava/util/Set;

    invoke-virtual {p0}, Labcd/IJ;->FH()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c0

    :goto_35
    :try_start_35
    invoke-direct {p0}, Labcd/IJ;->gn()V

    iget-object v0, p0, Labcd/IJ;->XL:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Labcd/IJ;->Ws:Labcd/KI;

    iget-object v1, p0, Labcd/IJ;->XL:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Labcd/KI;->j6(Labcd/IJ;Ljava/util/Collection;I)V

    iget-object v3, p0, Labcd/IJ;->Ws:Labcd/KI;

    iget-object v5, p0, Labcd/IJ;->XL:Ljava/util/Set;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-interface/range {v3 .. v8}, Labcd/KI;->j6(Labcd/IJ;Ljava/util/Collection;IIZ)V

    return-void

    :cond_54
    iget-object v0, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v1, "multi_ack_detailed"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    sget-object v0, Labcd/eI$c;->FH:Labcd/eI$c;

    iput-object v0, p0, Labcd/IJ;->SI:Labcd/eI$c;

    iget-object v0, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v1, "no-done"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Labcd/IJ;->KD:Z

    goto :goto_7f

    :cond_6d
    iget-object v0, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v1, "multi_ack"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    sget-object v0, Labcd/eI$c;->DW:Labcd/eI$c;

    :goto_79
    iput-object v0, p0, Labcd/IJ;->SI:Labcd/eI$c;

    goto :goto_7f

    :cond_7c
    sget-object v0, Labcd/eI$c;->j6:Labcd/eI$c;

    goto :goto_79

    :goto_7f
    iget v0, p0, Labcd/IJ;->a8:I

    if-eqz v0, :cond_86

    invoke-direct {p0}, Labcd/IJ;->VH()V

    :cond_86
    invoke-direct {p0}, Labcd/IJ;->Hw()Z

    move-result v0
    :try_end_8a
    .catch Labcd/nD; {:try_start_35 .. :try_end_8a} :catch_b7
    .catch Labcd/MJ; {:try_start_35 .. :try_end_8a} :catch_b1
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_8a} :catch_a6
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_8a} :catch_9b
    .catch Ljava/lang/Error; {:try_start_35 .. :try_end_8a} :catch_90

    if-eqz v0, :cond_8f

    invoke-direct {p0}, Labcd/IJ;->tp()V

    :cond_8f
    return-void

    :catch_90
    move-exception v0

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->internalServerError:Ljava/lang/String;

    invoke-direct {p0, v1}, Labcd/IJ;->j6(Ljava/lang/String;)V

    throw v0

    :catch_9b
    move-exception v0

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->internalServerError:Ljava/lang/String;

    invoke-direct {p0, v1}, Labcd/IJ;->j6(Ljava/lang/String;)V

    throw v0

    :catch_a6
    move-exception v0

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->internalServerError:Ljava/lang/String;

    invoke-direct {p0, v1}, Labcd/IJ;->j6(Ljava/lang/String;)V

    throw v0

    :catch_b1
    move-exception v0

    invoke-virtual {v0}, Labcd/MJ;->j6()Z

    const/4 v0, 0x0

    throw v0

    :catch_b7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/IJ;->j6(Ljava/lang/String;)V

    throw v0

    :cond_c0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ME;

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Labcd/IJ;->yS:Ljava/util/Set;

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2f
.end method

.method private Hw()Z
    .registers 11

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Labcd/IJ;->rN:Ljava/lang/Boolean;

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_f
    const/4 v2, 0x0

    :try_start_10
    iget-object v3, p0, Labcd/IJ;->EQ:Labcd/DI;

    invoke-virtual {v3}, Labcd/DI;->DW()Ljava/lang/String;

    move-result-object v3
    :try_end_16
    .catch Ljava/io/EOFException; {:try_start_10 .. :try_end_16} :catch_d3

    sget-object v4, Labcd/DI;->j6:Ljava/lang/String;

    const-string v5, "\n"

    const-string v6, "ACK "

    const-string v7, "NAK\n"

    const/4 v8, 0x1

    if-ne v3, v4, :cond_64

    invoke-direct {p0, v1, v0}, Labcd/IJ;->j6(Ljava/util/List;Labcd/yE;)Labcd/yE;

    move-result-object v0

    iget-object v3, p0, Labcd/IJ;->j3:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_33

    iget-object v3, p0, Labcd/IJ;->SI:Labcd/eI$c;

    sget-object v4, Labcd/eI$c;->j6:Labcd/eI$c;

    if-eq v3, v4, :cond_38

    :cond_33
    iget-object v3, p0, Labcd/IJ;->we:Labcd/EI;

    invoke-virtual {v3, v7}, Labcd/EI;->j6(Ljava/lang/String;)V

    :cond_38
    iget-boolean v3, p0, Labcd/IJ;->KD:Z

    if-eqz v3, :cond_59

    iget-boolean v3, p0, Labcd/IJ;->er:Z

    if-eqz v3, :cond_59

    iget-object v1, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/EI;->j6(Ljava/lang/String;)V

    return v8

    :cond_59
    iget-boolean v3, p0, Labcd/IJ;->VH:Z

    if-nez v3, :cond_5e

    return v2

    :cond_5e
    iget-object v2, p0, Labcd/IJ;->we:Labcd/EI;

    invoke-virtual {v2}, Labcd/EI;->DW()V

    goto :goto_f

    :cond_64
    const-string v4, "have "

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v9, 0x2d

    if-ne v4, v9, :cond_81

    const/4 v2, 0x5

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_81
    const-string v4, "done"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ba

    invoke-direct {p0, v1, v0}, Labcd/IJ;->j6(Ljava/util/List;Labcd/yE;)Labcd/yE;

    move-result-object v0

    iget-object v1, p0, Labcd/IJ;->j3:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9b

    iget-object v0, p0, Labcd/IJ;->we:Labcd/EI;

    invoke-virtual {v0, v7}, Labcd/EI;->j6(Ljava/lang/String;)V

    goto :goto_b9

    :cond_9b
    iget-object v1, p0, Labcd/IJ;->SI:Labcd/eI$c;

    sget-object v2, Labcd/eI$c;->j6:Labcd/eI$c;

    if-eq v1, v2, :cond_b9

    iget-object v1, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/EI;->j6(Ljava/lang/String;)V

    :cond_b9
    :goto_b9
    return v8

    :cond_ba
    new-instance v0, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->expectedGot:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "have"

    aput-object v5, v4, v2

    aput-object v3, v4, v8

    invoke-static {v1, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_d3
    move-exception v0

    iget-boolean v1, p0, Labcd/IJ;->VH:Z

    if-nez v1, :cond_dd

    iget v1, p0, Labcd/IJ;->a8:I

    if-lez v1, :cond_dd

    return v2

    :cond_dd
    goto :goto_df

    :goto_de
    throw v0

    :goto_df
    goto :goto_de
.end method

.method private VH()V
    .registers 7

    new-instance v0, Labcd/TF$c;

    iget-object v1, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v1}, Labcd/qG;->Zo()Labcd/IE;

    move-result-object v1

    iget v2, p0, Labcd/IJ;->a8:I

    invoke-direct {v0, v1, v2}, Labcd/TF$c;-><init>(Labcd/IE;I)V

    iget-object v1, p0, Labcd/IJ;->XL:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_80

    :cond_19
    :goto_19
    invoke-virtual {v0}, Labcd/qG;->tp()Labcd/dG;

    move-result-object v1

    if-nez v1, :cond_25

    iget-object v0, p0, Labcd/IJ;->we:Labcd/EI;

    invoke-virtual {v0}, Labcd/EI;->j6()V

    return-void

    :cond_25
    move-object v2, v1

    check-cast v2, Labcd/TF$a;

    invoke-virtual {v2}, Labcd/TF$a;->BT()I

    move-result v3

    iget v4, p0, Labcd/IJ;->a8:I

    if-ne v3, v4, :cond_4f

    iget-object v3, p0, Labcd/IJ;->Mr:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

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

    :cond_4f
    invoke-virtual {v2}, Labcd/TF$a;->BT()I

    move-result v1

    iget v3, p0, Labcd/IJ;->a8:I

    if-ge v1, v3, :cond_19

    iget-object v1, p0, Labcd/IJ;->Mr:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Labcd/IJ;->U2:Ljava/util/List;

    invoke-virtual {v2}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unshallow "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/EI;->j6(Ljava/lang/String;)V

    goto :goto_19

    :cond_80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/yE;

    :try_start_86
    invoke-virtual {v0, v2}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v2

    invoke-virtual {v0, v2}, Labcd/TF$c;->Hw(Labcd/dG;)V
    :try_end_8d
    .catch Labcd/ZC; {:try_start_86 .. :try_end_8d} :catch_8e

    goto :goto_13

    :catch_8e
    move-exception v2

    goto :goto_13
.end method

.method private Zo()Z
    .registers 4

    iget-object v0, p0, Labcd/IJ;->j3:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    :try_start_a
    iget-object v0, p0, Labcd/IJ;->aM:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/iG;

    invoke-direct {p0, v2}, Labcd/IJ;->DW(Labcd/iG;)Z

    move-result v2
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_22} :catch_25

    if-nez v2, :cond_10

    return v1

    :catch_25
    move-exception v0

    new-instance v1, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->internalRevisionError:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/nD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_33

    :goto_32
    throw v1

    :goto_33
    goto :goto_32
.end method

.method private gn()V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_2
    :try_start_2
    iget-object v2, p0, Labcd/IJ;->EQ:Labcd/DI;

    invoke-virtual {v2}, Labcd/DI;->DW()Ljava/lang/String;

    move-result-object v2
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_8} :catch_a4

    sget-object v3, Labcd/DI;->j6:Ljava/lang/String;

    if-ne v2, v3, :cond_e

    goto/16 :goto_a7

    :cond_e
    const-string v3, "deepen "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Labcd/IJ;->a8:I

    goto :goto_2

    :cond_22
    const-string v3, "shallow "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Labcd/IJ;->Mr:Ljava/util/Set;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3a
    const-string v3, "want "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x2d

    if-lt v3, v5, :cond_8b

    if-eqz v1, :cond_7a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_7a

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_63

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_63
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v6, 0x0

    :goto_69
    if-lt v6, v3, :cond_70

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_7a

    :cond_70
    aget-object v7, v1, v6

    iget-object v8, p0, Labcd/IJ;->QX:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_69

    :cond_7a
    :goto_7a
    iget-object v1, p0, Labcd/IJ;->XL:Ljava/util/Set;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_8b
    new-instance v1, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->expectedGot:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "want"

    aput-object v6, v5, v4

    aput-object v2, v5, v0

    invoke-static {v3, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_a4
    move-exception v0

    if-eqz v1, :cond_a8

    :goto_a7
    return-void

    :cond_a8
    goto :goto_aa

    :goto_a9
    throw v0

    :goto_aa
    goto :goto_a9
.end method

.method private j6(Ljava/util/List;Labcd/yE;)Labcd/yE;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labcd/yE;",
            ">;",
            "Labcd/yE;",
            ")",
            "Labcd/yE;"
        }
    .end annotation

    iget-object v0, p0, Labcd/IJ;->Ws:Labcd/KI;

    iget-object v1, p0, Labcd/IJ;->XL:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Labcd/KI;->j6(Labcd/IJ;Ljava/util/Collection;I)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    return-object p2

    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/IJ;->er:Z

    iget-object v1, p0, Labcd/IJ;->aM:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_46

    iget-object v1, p0, Labcd/IJ;->XL:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Labcd/IJ;->XL:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, p0, Labcd/IJ;->XL:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v5, 0x1

    goto :goto_49

    :cond_46
    move-object v4, p1

    move-object v1, v2

    const/4 v5, 0x0

    :goto_49
    iget-object v6, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v6, v4, v5}, Labcd/qG;->j6(Ljava/lang/Iterable;Z)Labcd/MF;

    move-result-object v4

    const/4 v8, 0x0

    :goto_50
    :try_start_50
    invoke-interface {v4}, Labcd/MF;->next()Labcd/iG;

    move-result-object v5
    :try_end_54
    .catch Labcd/fD; {:try_start_50 .. :try_end_54} :catch_256
    .catchall {:try_start_50 .. :try_end_54} :catchall_254

    const-string v6, " continue\n"

    const/4 v7, 0x3

    const/4 v9, 0x2

    const-string v10, "ACK "

    if-nez v5, :cond_151

    invoke-interface {v4}, Labcd/aE;->j6()V

    if-eqz v2, :cond_9d

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9d

    invoke-static {}, Labcd/IJ;->DW()[I

    move-result-object v1

    iget-object v4, p0, Labcd/IJ;->nw:Labcd/IJ$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v9, :cond_9a

    if-ne v1, v7, :cond_78

    goto :goto_9d

    :cond_78
    new-instance p1, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->wantNotValid:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/iG;

    invoke-virtual {v2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9a
    invoke-direct {p0, v2}, Labcd/IJ;->j6(Ljava/util/Set;)V

    :cond_9d
    :goto_9d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v8

    const-string v2, " ready\n"

    if-lez v1, :cond_10d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_ab
    if-gez v4, :cond_ae

    goto :goto_10d

    :cond_ae
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/yE;

    iget-object v11, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v11, v5}, Labcd/qG;->Hw(Labcd/YD;)Labcd/iG;

    move-result-object v11

    if-nez v11, :cond_10a

    invoke-direct {p0}, Labcd/IJ;->v5()Z

    move-result v0

    if-eqz v0, :cond_108

    invoke-static {}, Labcd/IJ;->j6()[I

    move-result-object v0

    iget-object v4, p0, Labcd/IJ;->SI:Labcd/eI$c;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v3, :cond_108

    if-eq v0, v9, :cond_f0

    if-eq v0, v7, :cond_d5

    goto :goto_108

    :cond_d5
    iget-object v0, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Labcd/EI;->j6(Ljava/lang/String;)V

    iput-boolean v3, p0, Labcd/IJ;->er:Z

    goto :goto_108

    :cond_f0
    iget-object v0, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Labcd/EI;->j6(Ljava/lang/String;)V

    :cond_108
    :goto_108
    const/4 v0, 0x1

    goto :goto_10d

    :cond_10a
    add-int/lit8 v4, v4, -0x1

    goto :goto_ab

    :cond_10d
    :goto_10d
    iget-object v4, p0, Labcd/IJ;->SI:Labcd/eI$c;

    sget-object v5, Labcd/eI$c;->FH:Labcd/eI$c;

    if-ne v4, v5, :cond_142

    if-nez v0, :cond_142

    invoke-direct {p0}, Labcd/IJ;->v5()Z

    move-result v0

    if-eqz v0, :cond_142

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    iput-boolean v3, p0, Labcd/IJ;->er:Z

    iget-object v4, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Labcd/EI;->j6(Ljava/lang/String;)V

    iput-boolean v3, p0, Labcd/IJ;->er:Z

    :cond_142
    iget-object v5, p0, Labcd/IJ;->Ws:Labcd/KI;

    iget-object v7, p0, Labcd/IJ;->aM:Ljava/util/Set;

    iget-boolean v10, p0, Labcd/IJ;->er:Z

    move-object v6, p0

    move v9, v1

    invoke-interface/range {v5 .. v10}, Labcd/KI;->j6(Labcd/IJ;Ljava/util/Collection;IIZ)V

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object p2

    :cond_151
    :try_start_151
    iget-object v11, p0, Labcd/IJ;->XL:Ljava/util/Set;

    invoke-interface {v11, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b4

    iget-object v11, p0, Labcd/IJ;->yS:Ljava/util/Set;

    invoke-interface {v11, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_171

    iget-object v11, p0, Labcd/IJ;->nw:Labcd/IJ$a;

    sget-object v12, Labcd/IJ$a;->FH:Labcd/IJ$a;

    if-eq v11, v12, :cond_171

    if-nez v2, :cond_16e

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :cond_16e
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_171
    iget-object v11, p0, Labcd/IJ;->gW:Labcd/fG;

    invoke-virtual {v5, v11}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v11

    if-nez v11, :cond_183

    iget-object v11, p0, Labcd/IJ;->gW:Labcd/fG;

    invoke-virtual {v5, v11}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object v11, p0, Labcd/IJ;->aM:Ljava/util/Set;

    invoke-interface {v11, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_183
    instance-of v11, v5, Labcd/dG;

    if-nez v11, :cond_18c

    iget-object v11, p0, Labcd/IJ;->P8:Labcd/fG;

    invoke-virtual {v5, v11}, Labcd/iG;->j6(Labcd/fG;)V

    :cond_18c
    instance-of v11, v5, Labcd/lG;

    if-eqz v11, :cond_1ac

    iget-object v11, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v11, v5}, Labcd/qG;->FH(Labcd/iG;)Labcd/iG;

    move-result-object v11

    instance-of v12, v11, Labcd/dG;

    if-eqz v12, :cond_1ac

    iget-object v12, p0, Labcd/IJ;->gW:Labcd/fG;

    invoke-virtual {v11, v12}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v12

    if-nez v12, :cond_1ac

    iget-object v12, p0, Labcd/IJ;->gW:Labcd/fG;

    invoke-virtual {v11, v12}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object v12, p0, Labcd/IJ;->aM:Ljava/util/Set;

    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1ac
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1b4

    goto/16 :goto_50

    :cond_1b4
    add-int/lit8 v8, v8, 0x1

    instance-of p2, v5, Labcd/dG;

    if-eqz p2, :cond_1cf

    move-object p2, v5

    check-cast p2, Labcd/dG;

    iget v11, p0, Labcd/IJ;->lg:I

    if-eqz v11, :cond_1c9

    invoke-virtual {p2}, Labcd/dG;->U2()I

    move-result v11

    iget v12, p0, Labcd/IJ;->lg:I

    if-ge v11, v12, :cond_1cf

    :cond_1c9
    invoke-virtual {p2}, Labcd/dG;->U2()I

    move-result p2

    iput p2, p0, Labcd/IJ;->lg:I

    :cond_1cf
    iget-object p2, p0, Labcd/IJ;->BT:Labcd/fG;

    invoke-virtual {v5, p2}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result p2

    if-eqz p2, :cond_1d9

    goto/16 :goto_251

    :cond_1d9
    iget-object p2, p0, Labcd/IJ;->BT:Labcd/fG;

    invoke-virtual {v5, p2}, Labcd/iG;->j6(Labcd/fG;)V

    instance-of p2, v5, Labcd/dG;

    if-eqz p2, :cond_1ea

    move-object p2, v5

    check-cast p2, Labcd/dG;

    iget-object v11, p0, Labcd/IJ;->BT:Labcd/fG;

    invoke-virtual {p2, v11}, Labcd/dG;->FH(Labcd/fG;)V

    :cond_1ea
    invoke-direct {p0, v5}, Labcd/IJ;->j6(Labcd/iG;)V

    invoke-static {}, Labcd/IJ;->j6()[I

    move-result-object p2

    iget-object v11, p0, Labcd/IJ;->SI:Labcd/eI$c;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget p2, p2, v11

    if-eq p2, v3, :cond_231

    if-eq p2, v9, :cond_21b

    if-eq p2, v7, :cond_200

    goto :goto_251

    :cond_200
    iget-object p2, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " common\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_217
    invoke-virtual {p2, v6}, Labcd/EI;->j6(Ljava/lang/String;)V

    goto :goto_251

    :cond_21b
    iget-object p2, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_217

    :cond_231
    iget-object p2, p0, Labcd/IJ;->j3:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-ne p2, v3, :cond_251

    iget-object p2, p0, Labcd/IJ;->we:Labcd/EI;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_217

    :cond_251
    :goto_251
    move-object p2, v5

    goto/16 :goto_50

    :catchall_254
    move-exception p1

    goto :goto_27d

    :catch_256
    move-exception v5

    invoke-virtual {v5}, Labcd/fD;->j6()Labcd/yE;

    move-result-object v6

    iget-object v7, p0, Labcd/IJ;->XL:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_265

    goto/16 :goto_50

    :cond_265
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->wantNotValid:Ljava/lang/String;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Labcd/nD;

    invoke-direct {p2, p1, v5}, Labcd/nD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_27d
    .catchall {:try_start_151 .. :try_end_27d} :catchall_254

    :goto_27d
    invoke-interface {v4}, Labcd/aE;->j6()V

    goto :goto_282

    :goto_281
    throw p1

    :goto_282
    goto :goto_281
.end method

.method private j6(Labcd/iG;)V
    .registers 3

    iget-object v0, p0, Labcd/IJ;->vy:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Labcd/IJ;->vy:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object v0, p0, Labcd/IJ;->j3:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/IJ;->rN:Ljava/lang/Boolean;

    :cond_15
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

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/EI;->j6(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    goto :goto_1a

    :catchall_19
    move-exception p1

    :goto_1a
    return-void
.end method

.method private j6(Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Labcd/iG;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_50

    iget-object p1, p0, Labcd/IJ;->yS:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_3e

    iget-object p1, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {p1}, Labcd/qG;->tp()Labcd/dG;

    move-result-object p1

    if-nez p1, :cond_26

    iget-object p1, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {p1}, Labcd/qG;->we()V

    return-void

    :cond_26
    new-instance v0, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->wantNotValid:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/yE;

    :try_start_44
    iget-object v0, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v0, p1}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/qG;->FH(Labcd/dG;)V
    :try_end_4d
    .catch Labcd/ZC; {:try_start_44 .. :try_end_4d} :catch_4e

    goto :goto_12

    :catch_4e
    move-exception p1

    goto :goto_12

    :cond_50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/iG;

    instance-of v4, v1, Labcd/dG;

    if-eqz v4, :cond_62

    iget-object v2, p0, Labcd/IJ;->Hw:Labcd/qG;

    check-cast v1, Labcd/dG;

    invoke-virtual {v2, v1}, Labcd/qG;->DW(Labcd/dG;)V

    goto :goto_4

    :cond_62
    new-instance v0, Labcd/nD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->wantNotValid:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/iG;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/nD;-><init>(Ljava/lang/String;)V

    goto :goto_85

    :goto_84
    throw v0

    :goto_85
    goto :goto_84
.end method

.method private j6(Z)V
    .registers 12

    sget-object v0, Labcd/vE;->j6:Labcd/vE;

    iget-object v1, p0, Labcd/IJ;->tp:Ljava/io/OutputStream;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_3b

    iget-object v1, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v4, "side-band-64k"

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const v1, 0xfff0

    goto :goto_18

    :cond_16
    const/16 v1, 0x3e8

    :goto_18
    new-instance v4, Labcd/aJ;

    iget-object v5, p0, Labcd/IJ;->tp:Ljava/io/OutputStream;

    invoke-direct {v4, v3, v1, v5}, Labcd/aJ;-><init>(IILjava/io/OutputStream;)V

    iget-object v5, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v6, "no-progress"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    new-instance v0, Labcd/aJ;

    const/4 v5, 0x2

    iget-object v6, p0, Labcd/IJ;->tp:Ljava/io/OutputStream;

    invoke-direct {v0, v5, v1, v6}, Labcd/aJ;-><init>(IILjava/io/OutputStream;)V

    new-instance v1, Labcd/bJ;

    invoke-direct {v1, v0}, Labcd/bJ;-><init>(Ljava/io/OutputStream;)V

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3d

    :cond_3a
    move-object v1, v4

    :cond_3b
    move-object v4, v1

    move-object v1, v2

    :goto_3d
    :try_start_3d
    iget-object v5, p0, Labcd/IJ;->aM:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4f

    iget-object v5, p0, Labcd/IJ;->Ws:Labcd/KI;

    iget-object v6, p0, Labcd/IJ;->XL:Ljava/util/Set;

    iget-object v7, p0, Labcd/IJ;->j3:Ljava/util/Set;

    :goto_4b
    invoke-interface {v5, p0, v6, v7}, Labcd/KI;->j6(Labcd/IJ;Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_56

    :cond_4f
    iget-object v5, p0, Labcd/IJ;->Ws:Labcd/KI;

    iget-object v6, p0, Labcd/IJ;->aM:Ljava/util/Set;

    iget-object v7, p0, Labcd/IJ;->j3:Ljava/util/Set;
    :try_end_55
    .catch Labcd/MJ; {:try_start_3d .. :try_end_55} :catch_1c6

    goto :goto_4b

    :goto_56
    iget-object v2, p0, Labcd/IJ;->v5:Labcd/NH;

    if-nez v2, :cond_61

    new-instance v2, Labcd/NH;

    iget-object v5, p0, Labcd/IJ;->FH:Labcd/UE;

    invoke-direct {v2, v5}, Labcd/NH;-><init>(Labcd/UE;)V

    :cond_61
    new-instance v5, Labcd/TH;

    iget-object v6, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v6}, Labcd/qG;->Zo()Labcd/IE;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Labcd/TH;-><init>(Labcd/NH;Labcd/IE;)V

    :try_start_6c
    invoke-virtual {v5, v3}, Labcd/TH;->v5(Z)V

    invoke-virtual {v5, v3}, Labcd/TH;->DW(Z)V

    iget-object v2, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v3, "ofs-delta"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v5, v2}, Labcd/TH;->j6(Z)V

    iget-object v2, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v3, "thin-pack"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v5, v2}, Labcd/TH;->Hw(Z)V

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Labcd/TH;->FH(Z)V

    iget-object v2, p0, Labcd/IJ;->j3:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_dd

    iget-object v2, p0, Labcd/IJ;->J0:Ljava/util/Map;

    if-eqz v2, :cond_dd

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Labcd/IJ;->J0:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a7
    :goto_a7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_b1

    invoke-virtual {v5, v2}, Labcd/TH;->j6(Ljava/util/Set;)V

    goto :goto_dd

    :cond_b1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/ME;

    invoke-interface {v6}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v7

    if-eqz v7, :cond_c5

    invoke-interface {v6}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v6

    :goto_c1
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a7

    :cond_c5
    invoke-interface {v6}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v7

    if-nez v7, :cond_cc

    goto :goto_a7

    :cond_cc
    invoke-interface {v6}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "refs/heads/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a7

    invoke-interface {v6}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v6

    goto :goto_c1

    :cond_dd
    :goto_dd
    iget v2, p0, Labcd/IJ;->a8:I

    if-lez v2, :cond_e6

    iget-object v3, p0, Labcd/IJ;->U2:Ljava/util/List;

    invoke-virtual {v5, v2, v3}, Labcd/TH;->j6(ILjava/util/Collection;)V

    :cond_e6
    iget-object v2, p0, Labcd/IJ;->Hw:Labcd/qG;

    iget-object v3, p0, Labcd/IJ;->aM:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f8

    iget-object v3, p0, Labcd/IJ;->XL:Ljava/util/Set;

    iget-object v6, p0, Labcd/IJ;->j3:Ljava/util/Set;

    invoke-virtual {v5, v0, v3, v6}, Labcd/TH;->j6(Labcd/LE;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_10a

    :cond_f8
    iget-object v2, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v2}, Labcd/qG;->we()V

    iget-object v2, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {v2}, Labcd/qG;->J0()Labcd/_F;

    move-result-object v2

    iget-object v3, p0, Labcd/IJ;->aM:Ljava/util/Set;

    iget-object v6, p0, Labcd/IJ;->j3:Ljava/util/Set;

    invoke-virtual {v5, v0, v2, v3, v6}, Labcd/TH;->j6(Labcd/LE;Labcd/_F;Ljava/util/Set;Ljava/util/Set;)V

    :goto_10a
    iget-object v3, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v6, "include-tag"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17c

    iget-object v3, p0, Labcd/IJ;->J0:Ljava/util/Map;

    if-eqz v3, :cond_17c

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_120
    :goto_120
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_127

    goto :goto_17c

    :cond_127
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/ME;

    invoke-interface {v6}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v7

    iget-object v8, p0, Labcd/IJ;->aM:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_142

    iget-object v8, p0, Labcd/IJ;->XL:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_151

    goto :goto_120

    :cond_142
    invoke-virtual {v2, v7}, Labcd/qG;->Hw(Labcd/YD;)Labcd/iG;

    move-result-object v7

    if-eqz v7, :cond_151

    iget-object v8, p0, Labcd/IJ;->gW:Labcd/fG;

    invoke-virtual {v7, v8}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v7

    if-eqz v7, :cond_151

    goto :goto_120

    :cond_151
    invoke-interface {v6}, Labcd/ME;->Hw()Z

    move-result v7

    if-nez v7, :cond_15d

    iget-object v7, p0, Labcd/IJ;->FH:Labcd/UE;

    invoke-virtual {v7, v6}, Labcd/UE;->j6(Labcd/ME;)Labcd/ME;

    move-result-object v6

    :cond_15d
    invoke-interface {v6}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v7

    if-nez v7, :cond_164

    goto :goto_120

    :cond_164
    invoke-interface {v6}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v6

    invoke-virtual {v5, v7}, Labcd/TH;->j6(Labcd/YD;)Z

    move-result v7

    if-eqz v7, :cond_120

    invoke-virtual {v5, v6}, Labcd/TH;->j6(Labcd/YD;)Z

    move-result v7

    if-nez v7, :cond_120

    invoke-virtual {v2, v6}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v6

    invoke-virtual {v5, v6}, Labcd/TH;->j6(Labcd/iG;)V

    goto :goto_120

    :cond_17c
    :goto_17c
    sget-object v2, Labcd/vE;->j6:Labcd/vE;

    invoke-virtual {v5, v0, v2, v4}, Labcd/TH;->j6(Labcd/LE;Labcd/LE;Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Labcd/TH;->v5()Labcd/TH$c;

    move-result-object v0

    iput-object v0, p0, Labcd/IJ;->ro:Labcd/TH$c;

    if-eqz v1, :cond_1ad

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Labcd/TH;->v5()Labcd/TH$c;

    move-result-object v2

    invoke-virtual {v2}, Labcd/TH$c;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Labcd/aJ;->flush()V
    :try_end_1ad
    .catchall {:try_start_6c .. :try_end_1ad} :catchall_1c1

    :cond_1ad
    invoke-virtual {v5}, Labcd/TH;->VH()V

    if-eqz p1, :cond_1b7

    iget-object p1, p0, Labcd/IJ;->we:Labcd/EI;

    invoke-virtual {p1}, Labcd/EI;->j6()V

    :cond_1b7
    iget-object p1, p0, Labcd/IJ;->ro:Labcd/TH$c;

    if-eqz p1, :cond_1c0

    iget-object v0, p0, Labcd/IJ;->cn:Labcd/LJ;

    invoke-interface {v0, p1}, Labcd/LJ;->j6(Labcd/TH$c;)V

    :cond_1c0
    return-void

    :catchall_1c1
    move-exception p1

    invoke-virtual {v5}, Labcd/TH;->VH()V

    throw p1

    :catch_1c6
    move-exception v0

    if-eqz p1, :cond_1d3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d3

    invoke-virtual {v0}, Labcd/MJ;->DW()V

    throw v2

    :cond_1d3
    goto :goto_1d5

    :goto_1d4
    throw v0

    :goto_1d5
    goto :goto_1d4
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/IJ;->j6:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/eI$c;->values()[Labcd/eI$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/eI$c;->DW:Labcd/eI$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/eI$c;->FH:Labcd/eI$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v1, Labcd/eI$c;->j6:Labcd/eI$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    move-exception v1

    :goto_2d
    sput-object v0, Labcd/IJ;->j6:[I

    return-object v0
.end method

.method private tp()V
    .registers 7

    iget-object v0, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v1, "side-band"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_18

    iget-object v0, p0, Labcd/IJ;->QX:Ljava/util/Set;

    const-string v3, "side-band-64k"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    const/4 v0, 0x1

    :goto_19
    iget-boolean v3, p0, Labcd/IJ;->VH:Z

    if-nez v3, :cond_4c

    iget-object v3, p0, Labcd/IJ;->u7:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    if-gez v3, :cond_26

    goto :goto_4c

    :cond_26
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

    :cond_4c
    :goto_4c
    if-eqz v0, :cond_7e

    :try_start_4e
    invoke-direct {p0, v2}, Labcd/IJ;->j6(Z)V
    :try_end_51
    .catch Labcd/MJ; {:try_start_4e .. :try_end_51} :catch_7c
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_6e
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_51} :catch_60
    .catch Ljava/lang/Error; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_81

    :catch_52
    move-exception v0

    invoke-direct {p0}, Labcd/IJ;->u7()Z

    move-result v1

    if-eqz v1, :cond_5f

    new-instance v1, Labcd/JJ;

    invoke-direct {v1, v0}, Labcd/JJ;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5f
    throw v0

    :catch_60
    move-exception v0

    invoke-direct {p0}, Labcd/IJ;->u7()Z

    move-result v1

    if-eqz v1, :cond_6d

    new-instance v1, Labcd/JJ;

    invoke-direct {v1, v0}, Labcd/JJ;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_6d
    throw v0

    :catch_6e
    move-exception v0

    invoke-direct {p0}, Labcd/IJ;->u7()Z

    move-result v1

    if-eqz v1, :cond_7b

    new-instance v1, Labcd/JJ;

    invoke-direct {v1, v0}, Labcd/JJ;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_7b
    throw v0

    :catch_7c
    move-exception v0

    throw v0

    :cond_7e
    invoke-direct {p0, v1}, Labcd/IJ;->j6(Z)V

    :goto_81
    return-void
.end method

.method private u7()Z
    .registers 5

    :try_start_0
    new-instance v0, Labcd/aJ;

    iget-object v1, p0, Labcd/IJ;->tp:Ljava/io/OutputStream;

    const/4 v2, 0x3

    const/16 v3, 0x3e8

    invoke-direct {v0, v2, v3, v1}, Labcd/aJ;-><init>(IILjava/io/OutputStream;)V

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->internalServerError:Ljava/lang/String;

    invoke-static {v1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Labcd/aJ;->flush()V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1c

    const/4 v0, 0x1

    return v0

    :catchall_1c
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method private v5()Z
    .registers 2

    iget-object v0, p0, Labcd/IJ;->rN:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    invoke-direct {p0}, Labcd/IJ;->Zo()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Labcd/IJ;->rN:Ljava/lang/Boolean;

    :cond_e
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/IJ;->J0:Ljava/util/Map;

    if-nez v0, :cond_d

    iget-object v0, p0, Labcd/IJ;->FH:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/IJ;->j6(Ljava/util/Map;)V

    :cond_d
    iget-object v0, p0, Labcd/IJ;->J0:Ljava/util/Map;

    return-object v0
.end method

.method public j6(Labcd/TI;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Labcd/IJ;->Ws:Labcd/KI;

    invoke-interface {v0, p0}, Labcd/KI;->j6(Labcd/IJ;)V
    :try_end_5
    .catch Labcd/MJ; {:try_start_0 .. :try_end_5} :catch_52

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

    if-nez v0, :cond_40

    const-string v0, "no-done"

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/String;)V

    :cond_40
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Z)V

    invoke-virtual {p0}, Labcd/IJ;->FH()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Labcd/IJ;->yS:Ljava/util/Set;

    invoke-virtual {p1}, Labcd/TI;->j6()V

    return-void

    :catch_52
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

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

    const/4 p1, 0x0

    throw p1

    :cond_73
    throw v0
.end method

.method public j6(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 6

    const/4 p3, 0x0

    :try_start_1
    iput-object p1, p0, Labcd/IJ;->u7:Ljava/io/InputStream;

    iput-object p2, p0, Labcd/IJ;->tp:Ljava/io/OutputStream;

    iget p1, p0, Labcd/IJ;->Zo:I

    if-lez p1, :cond_4e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    new-instance p2, Labcd/VK;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "-Timer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Labcd/VK;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Labcd/IJ;->gn:Labcd/VK;

    new-instance p1, Labcd/_K;

    iget-object p2, p0, Labcd/IJ;->u7:Ljava/io/InputStream;

    iget-object v0, p0, Labcd/IJ;->gn:Labcd/VK;

    invoke-direct {p1, p2, v0}, Labcd/_K;-><init>(Ljava/io/InputStream;Labcd/VK;)V

    new-instance p2, Labcd/aL;

    iget-object v0, p0, Labcd/IJ;->tp:Ljava/io/OutputStream;

    iget-object v1, p0, Labcd/IJ;->gn:Labcd/VK;

    invoke-direct {p2, v0, v1}, Labcd/aL;-><init>(Ljava/io/OutputStream;Labcd/VK;)V

    iget v0, p0, Labcd/IJ;->Zo:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p1, v0}, Labcd/_K;->j6(I)V

    iget v0, p0, Labcd/IJ;->Zo:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p2, v0}, Labcd/aL;->j6(I)V

    iput-object p1, p0, Labcd/IJ;->u7:Ljava/io/InputStream;

    iput-object p2, p0, Labcd/IJ;->tp:Ljava/io/OutputStream;

    :cond_4e
    new-instance p1, Labcd/DI;

    iget-object p2, p0, Labcd/IJ;->u7:Ljava/io/InputStream;

    invoke-direct {p1, p2}, Labcd/DI;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Labcd/IJ;->EQ:Labcd/DI;

    new-instance p1, Labcd/EI;

    iget-object p2, p0, Labcd/IJ;->tp:Ljava/io/OutputStream;

    invoke-direct {p1, p2}, Labcd/EI;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Labcd/IJ;->we:Labcd/EI;

    invoke-direct {p0}, Labcd/IJ;->EQ()V
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_77

    iget-object p1, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {p1}, Labcd/qG;->EQ()V

    iget-object p1, p0, Labcd/IJ;->gn:Labcd/VK;

    if-eqz p1, :cond_76

    :try_start_6c
    invoke-virtual {p1}, Labcd/VK;->DW()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_72

    iput-object p3, p0, Labcd/IJ;->gn:Labcd/VK;

    goto :goto_76

    :catchall_72
    move-exception p1

    iput-object p3, p0, Labcd/IJ;->gn:Labcd/VK;

    throw p1

    :cond_76
    :goto_76
    return-void

    :catchall_77
    move-exception p1

    iget-object p2, p0, Labcd/IJ;->Hw:Labcd/qG;

    invoke-virtual {p2}, Labcd/qG;->EQ()V

    iget-object p2, p0, Labcd/IJ;->gn:Labcd/VK;

    if-eqz p2, :cond_8b

    :try_start_81
    invoke-virtual {p2}, Labcd/VK;->DW()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_87

    iput-object p3, p0, Labcd/IJ;->gn:Labcd/VK;

    goto :goto_8b

    :catchall_87
    move-exception p1

    iput-object p3, p0, Labcd/IJ;->gn:Labcd/VK;

    throw p1

    :cond_8b
    :goto_8b
    throw p1
.end method

.method public j6(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
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
