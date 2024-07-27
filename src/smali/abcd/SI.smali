.class public Labcd/SI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/SI$a;
    }
.end annotation


# static fields
.field private static DW:[I

.field private static FH:[I

.field private static j6:[I


# instance fields
.field private BT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/OI;",
            ">;"
        }
    .end annotation
.end field

.field private EQ:Z

.field private final Hw:Labcd/UE;

.field private J0:Labcd/VI;

.field private J8:Labcd/II;

.field private KD:Z

.field private Mr:Ljava/io/OutputStream;

.field private P8:Ljava/lang/Throwable;

.field private QX:I

.field private SI:Labcd/kH;

.field private U2:Ljava/io/OutputStream;

.field private VH:Z

.field private Ws:Labcd/GI;

.field private XL:Labcd/VK;

.field private Zo:Z

.field private a8:Labcd/DI;

.field private aM:Labcd/_K;

.field private ei:Z

.field private er:Ljava/util/Map;
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

.field private gW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Z

.field private j3:Ljava/io/InputStream;

.field private lg:Labcd/EI;

.field private nw:Z

.field private rN:Labcd/AI;

.field private ro:J

.field private tp:Z

.field private u7:Z

.field private final v5:Labcd/qG;

.field private vy:Ljava/lang/StringBuilder;

.field private we:Labcd/KE;

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

    iput-boolean v0, p0, Labcd/SI;->Zo:Z

    iput-object p1, p0, Labcd/SI;->Hw:Labcd/UE;

    new-instance v0, Labcd/qG;

    iget-object v1, p0, Labcd/SI;->Hw:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/qG;-><init>(Labcd/UE;)V

    iput-object v0, p0, Labcd/SI;->v5:Labcd/qG;

    iget-object v0, p0, Labcd/SI;->Hw:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    sget-object v1, Labcd/SI$a;->j6:Labcd/gE$b;

    invoke-virtual {v0, v1}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/SI$a;

    iget-boolean v1, v0, Labcd/SI$a;->DW:Z

    iput-boolean v1, p0, Labcd/SI;->VH:Z

    iget-boolean v1, v0, Labcd/SI$a;->FH:Z

    iput-boolean v1, p0, Labcd/SI;->gn:Z

    iget-boolean v1, v0, Labcd/SI$a;->Hw:Z

    iput-boolean v1, p0, Labcd/SI;->u7:Z

    iget-boolean v1, v0, Labcd/SI$a;->v5:Z

    iput-boolean v1, p0, Labcd/SI;->tp:Z

    iget-boolean v0, v0, Labcd/SI$a;->Zo:Z

    iput-boolean v0, p0, Labcd/SI;->EQ:Z

    sget-object v0, Labcd/VI;->j6:Labcd/VI;

    iput-object v0, p0, Labcd/SI;->J0:Labcd/VI;

    sget-object v0, Labcd/II;->j6:Labcd/II;

    iput-object v0, p0, Labcd/SI;->J8:Labcd/II;

    sget-object v0, Labcd/GI;->j6:Labcd/GI;

    iput-object v0, p0, Labcd/SI;->Ws:Labcd/GI;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/SI;->yS:Ljava/util/Set;

    return-void
.end method

.method static synthetic DW(Labcd/SI;)Ljava/io/OutputStream;
    .registers 2

    iget-object v0, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic DW()[I
    .registers 3

    sget-object v0, Labcd/SI;->FH:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/OI$a;->values()[Labcd/OI$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/OI$a;->gn:Labcd/OI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Labcd/OI$a;->j6:Labcd/OI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Labcd/OI$a;->u7:Labcd/OI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Labcd/OI$a;->v5:Labcd/OI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Labcd/OI$a;->Zo:Labcd/OI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Labcd/OI$a;->DW:Labcd/OI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Labcd/OI$a;->FH:Labcd/OI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Labcd/OI$a;->Hw:Labcd/OI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Labcd/OI$a;->VH:Labcd/OI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Labcd/SI;->FH:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method private EQ()V
    .registers 8

    const/4 v2, 0x0

    iget-boolean v0, p0, Labcd/SI;->KD:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Labcd/SI;->rN:Labcd/AI;

    invoke-virtual {v0}, Labcd/AI;->FH()Labcd/DE;

    move-result-object v0

    iget-object v1, p0, Labcd/SI;->rN:Labcd/AI;

    invoke-virtual {v1}, Labcd/AI;->v5()Labcd/DE;

    move-result-object v3

    move-object v1, v0

    :goto_0
    iput-object v2, p0, Labcd/SI;->rN:Labcd/AI;

    new-instance v2, Labcd/_F;

    iget-object v0, p0, Labcd/SI;->Hw:Labcd/UE;

    invoke-direct {v2, v0}, Labcd/_F;-><init>(Labcd/UE;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Labcd/qG;->j6(Z)V

    iget-boolean v0, p0, Labcd/SI;->KD:Z

    if-eqz v0, :cond_0

    sget-object v0, Labcd/kG;->FH:Labcd/kG;

    invoke-virtual {v2, v0}, Labcd/_F;->DW(Labcd/kG;)V

    invoke-virtual {v1}, Labcd/DE;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Labcd/kG;->v5:Labcd/kG;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Labcd/_F;->j6(Labcd/kG;Z)V

    :cond_0
    iget-object v0, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Labcd/SI;->yS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_3
    invoke-virtual {v2}, Labcd/_F;->tp()Labcd/dG;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_4
    invoke-virtual {v2}, Labcd/_F;->yS()Labcd/iG;

    move-result-object v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Labcd/SI;->KD:Z

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Labcd/DE;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    return-void

    :cond_7
    move-object v1, v2

    move-object v3, v2

    goto :goto_0

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    invoke-virtual {v2, v0}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v0

    sget-object v3, Labcd/fG;->j6:Labcd/fG;

    invoke-virtual {v0, v3}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v1, Labcd/fD;

    invoke-virtual {v0}, Labcd/iG;->aM()I

    move-result v2

    invoke-direct {v1, v0, v2}, Labcd/fD;-><init>(Labcd/yE;I)V

    throw v1

    :cond_9
    sget-object v4, Labcd/fG;->j6:Labcd/fG;

    invoke-virtual {v0, v4}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Labcd/SI;->KD:Z

    if-eqz v4, :cond_a

    invoke-virtual {v3, v0}, Labcd/DE;->j6(Labcd/YD;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v1, Labcd/fD;

    invoke-virtual {v0}, Labcd/iG;->aM()I

    move-result v2

    invoke-direct {v1, v0, v2}, Labcd/fD;-><init>(Labcd/yE;I)V

    throw v1

    :cond_a
    instance-of v4, v0, Labcd/cG;

    if-eqz v4, :cond_4

    iget-object v4, p0, Labcd/SI;->Hw:Labcd/UE;

    invoke-virtual {v4, v0}, Labcd/UE;->j6(Labcd/YD;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v1, Labcd/fD;

    const-string v2, "blob"

    invoke-direct {v1, v0, v2}, Labcd/fD;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v1

    :cond_b
    iget-boolean v4, p0, Labcd/SI;->KD:Z

    if-eqz v4, :cond_3

    sget-object v4, Labcd/fG;->j6:Labcd/fG;

    invoke-virtual {v0, v4}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, v0}, Labcd/DE;->j6(Labcd/YD;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v1, Labcd/fD;

    const-string v2, "commit"

    invoke-direct {v1, v0, v2}, Labcd/fD;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v1

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    invoke-virtual {v2, v0}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/_F;->v5(Labcd/iG;)V

    iget-boolean v5, p0, Labcd/SI;->KD:Z

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Labcd/DE;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v0}, Labcd/qG;->FH(Labcd/iG;)Labcd/iG;

    move-result-object v0

    instance-of v5, v0, Labcd/dG;

    if-eqz v5, :cond_d

    check-cast v0, Labcd/dG;

    invoke-virtual {v0}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v0

    :cond_d
    instance-of v5, v0, Labcd/mG;

    if-eqz v5, :cond_2

    invoke-virtual {v2, v0}, Labcd/_F;->v5(Labcd/iG;)V

    goto/16 :goto_2

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/OI;

    invoke-virtual {v0}, Labcd/OI;->Zo()Labcd/OI$a;

    move-result-object v5

    sget-object v6, Labcd/OI$a;->j6:Labcd/OI$a;

    if-ne v5, v6, :cond_1

    invoke-virtual {v0}, Labcd/OI;->VH()Labcd/OI$b;

    move-result-object v5

    sget-object v6, Labcd/OI$b;->Hw:Labcd/OI$b;

    if-eq v5, v6, :cond_1

    invoke-virtual {v0}, Labcd/OI;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v0

    invoke-virtual {v2, v0}, Labcd/_F;->Hw(Labcd/iG;)V

    goto/16 :goto_1
.end method

.method static synthetic FH()[I
    .registers 3

    sget-object v0, Labcd/SI;->j6:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/OI$b;->values()[Labcd/OI$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/OI$b;->j6:Labcd/OI$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Labcd/OI$b;->Hw:Labcd/OI$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Labcd/OI$b;->DW:Labcd/OI$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Labcd/OI$b;->FH:Labcd/OI$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Labcd/SI;->j6:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private J0()V
    .registers 7

    iget-object v0, p0, Labcd/SI;->J8:Labcd/II;

    sget-object v1, Labcd/OI$a;->j6:Labcd/OI$a;

    invoke-direct {p0, v1}, Labcd/SI;->j6(Labcd/OI$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Labcd/II;->j6(Labcd/SI;Ljava/util/Collection;)V

    sget-object v0, Labcd/OI$a;->j6:Labcd/OI$a;

    invoke-direct {p0, v0}, Labcd/SI;->j6(Labcd/OI$a;)Ljava/util/List;

    move-result-object v2

    sget-object v0, Labcd/vE;->j6:Labcd/vE;

    iget-boolean v1, p0, Labcd/SI;->nw:Z

    if-eqz v1, :cond_1

    new-instance v0, Labcd/bJ;

    iget-object v1, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Labcd/bJ;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v4, 0xfa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Labcd/eE;->j6(JLjava/util/concurrent/TimeUnit;)V

    move-object v1, v0

    :goto_0
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->updatingReferences:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v0, v3}, Labcd/LE;->j6(Ljava/lang/String;I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Labcd/LE;->j6()V

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/OI;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Labcd/LE;->update(I)V

    invoke-direct {p0, v0}, Labcd/SI;->j6(Labcd/OI;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private J8()Z
    .registers 2

    invoke-virtual {p0}, Labcd/SI;->u7()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Labcd/SI;->tp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private Mr()V
    .registers 8

    iget-object v0, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/OI;

    invoke-virtual {v0}, Labcd/OI;->Hw()Labcd/ME;

    move-result-object v1

    invoke-virtual {v0}, Labcd/OI;->Zo()Labcd/OI$a;

    move-result-object v2

    sget-object v4, Labcd/OI$a;->j6:Labcd/OI$a;

    if-ne v2, v4, :cond_0

    invoke-virtual {v0}, Labcd/OI;->VH()Labcd/OI$b;

    move-result-object v2

    sget-object v4, Labcd/OI$b;->Hw:Labcd/OI$b;

    if-ne v2, v4, :cond_2

    invoke-virtual {p0}, Labcd/SI;->VH()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v1, Labcd/OI$a;->FH:Labcd/OI$a;

    invoke-virtual {v0, v1}, Labcd/OI;->j6(Labcd/OI$a;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Labcd/OI;->VH()Labcd/OI$b;

    move-result-object v2

    sget-object v4, Labcd/OI$b;->j6:Labcd/OI$b;

    if-ne v2, v4, :cond_5

    invoke-virtual {p0}, Labcd/SI;->Zo()Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v1, Labcd/OI$a;->DW:Labcd/OI$a;

    invoke-virtual {v0, v1}, Labcd/OI;->j6(Labcd/OI$a;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Labcd/SI;->gn()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v1, Labcd/OI$a;->Hw:Labcd/OI$a;

    invoke-virtual {v0, v1}, Labcd/OI;->j6(Labcd/OI$a;)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    sget-object v2, Labcd/OI$a;->VH:Labcd/OI$a;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->refAlreadyExists:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Labcd/OI;->j6(Labcd/OI$a;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Labcd/OI;->VH()Labcd/OI$b;

    move-result-object v2

    sget-object v4, Labcd/OI$b;->Hw:Labcd/OI$b;

    if-ne v2, v4, :cond_6

    if-eqz v1, :cond_6

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v2

    invoke-virtual {v0}, Labcd/OI;->FH()Labcd/yE;

    move-result-object v4

    invoke-virtual {v2, v4}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v2

    invoke-virtual {v0}, Labcd/OI;->FH()Labcd/yE;

    move-result-object v4

    invoke-virtual {v2, v4}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v1, Labcd/OI$a;->VH:Labcd/OI$a;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->invalidOldIdSent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Labcd/OI;->j6(Labcd/OI$a;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Labcd/OI;->VH()Labcd/OI$b;

    move-result-object v2

    sget-object v4, Labcd/OI$b;->DW:Labcd/OI$b;

    if-ne v2, v4, :cond_9

    if-nez v1, :cond_7

    sget-object v1, Labcd/OI$a;->VH:Labcd/OI$a;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->noSuchRef:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Labcd/OI;->j6(Labcd/OI$a;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    invoke-virtual {v0}, Labcd/OI;->FH()Labcd/yE;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Labcd/OI$a;->VH:Labcd/OI$a;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->invalidOldIdSent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Labcd/OI;->j6(Labcd/OI$a;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    :try_start_0
    iget-object v1, p0, Labcd/SI;->v5:Labcd/qG;

    invoke-virtual {v0}, Labcd/OI;->FH()Labcd/yE;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    :try_start_1
    iget-object v2, p0, Labcd/SI;->v5:Labcd/qG;

    invoke-virtual {v0}, Labcd/OI;->DW()Labcd/yE;

    move-result-object v4

    invoke-virtual {v2, v4}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    instance-of v4, v1, Labcd/dG;

    if-eqz v4, :cond_b

    instance-of v4, v2, Labcd/dG;

    if-eqz v4, :cond_b

    :try_start_2
    iget-object v4, p0, Labcd/SI;->v5:Labcd/qG;

    check-cast v1, Labcd/dG;

    check-cast v2, Labcd/dG;

    invoke-virtual {v4, v1, v2}, Labcd/qG;->j6(Labcd/dG;Labcd/dG;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Labcd/OI$b;->FH:Labcd/OI$b;

    invoke-virtual {v0, v1}, Labcd/OI;->j6(Labcd/OI$b;)V
    :try_end_2
    .catch Labcd/fD; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_9
    :goto_1
    invoke-virtual {v0}, Labcd/OI;->v5()Ljava/lang/String;

    move-result-object v1

    const-string v2, "refs/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Labcd/OI;->v5()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/UE;->DW(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_a
    sget-object v1, Labcd/OI$a;->VH:Labcd/OI$a;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->funnyRefname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Labcd/OI;->j6(Labcd/OI$a;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-object v1, Labcd/OI$a;->VH:Labcd/OI$a;

    invoke-virtual {v0, v1}, Labcd/OI;->j6(Labcd/OI$a;)V

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v2, Labcd/OI$a;->Zo:Labcd/OI$a;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Labcd/OI;->j6(Labcd/OI$a;Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    sget-object v1, Labcd/OI$b;->FH:Labcd/OI$b;

    invoke-virtual {v0, v1}, Labcd/OI;->j6(Labcd/OI$b;)V

    goto :goto_1

    :catch_2
    move-exception v1

    sget-object v1, Labcd/OI$a;->Zo:Labcd/OI$a;

    invoke-virtual {v0}, Labcd/OI;->DW()Labcd/yE;

    move-result-object v2

    invoke-virtual {v2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labcd/OI;->j6(Labcd/OI$a;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    sget-object v1, Labcd/OI$a;->Zo:Labcd/OI$a;

    invoke-virtual {v0}, Labcd/OI;->FH()Labcd/yE;

    move-result-object v2

    invoke-virtual {v2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labcd/OI;->j6(Labcd/OI$a;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private QX()V
    .registers 9

    const/4 v2, 0x1

    iget-object v0, p0, Labcd/SI;->aM:Labcd/_K;

    if-eqz v0, :cond_0

    iget v1, p0, Labcd/SI;->QX:I

    mul-int/lit8 v1, v1, 0xa

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Labcd/_K;->j6(I)V

    :cond_0
    sget-object v1, Labcd/vE;->j6:Labcd/vE;

    iget-boolean v0, p0, Labcd/SI;->nw:Z

    if-eqz v0, :cond_4

    new-instance v0, Labcd/bJ;

    iget-object v3, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    invoke-direct {v0, v3}, Labcd/bJ;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    iget-object v3, p0, Labcd/SI;->Hw:Labcd/UE;

    invoke-virtual {v3}, Labcd/UE;->aM()Labcd/EE;

    move-result-object v4

    const-string v3, "jgit receive-pack"

    :try_start_0
    invoke-virtual {p0}, Labcd/SI;->v5()Labcd/KE;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "jgit receive-pack"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/SI;->v5()Labcd/KE;

    move-result-object v5

    invoke-virtual {v5}, Labcd/KE;->Hw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v5, p0, Labcd/SI;->j3:Ljava/io/InputStream;

    invoke-virtual {v4, v5}, Labcd/EE;->j6(Ljava/io/InputStream;)Labcd/AI;

    move-result-object v5

    iput-object v5, p0, Labcd/SI;->rN:Labcd/AI;

    iget-object v5, p0, Labcd/SI;->rN:Labcd/AI;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Labcd/AI;->j6(Z)V

    iget-object v5, p0, Labcd/SI;->rN:Labcd/AI;

    iget-boolean v6, p0, Labcd/SI;->KD:Z

    invoke-virtual {v5, v6}, Labcd/AI;->Hw(Z)V

    iget-object v5, p0, Labcd/SI;->rN:Labcd/AI;

    iget-boolean v6, p0, Labcd/SI;->KD:Z

    invoke-virtual {v5, v6}, Labcd/AI;->FH(Z)V

    iget-object v5, p0, Labcd/SI;->rN:Labcd/AI;

    iget-boolean v6, p0, Labcd/SI;->Zo:Z

    if-eqz v6, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v5, v2}, Labcd/AI;->DW(Z)V

    iget-object v2, p0, Labcd/SI;->rN:Labcd/AI;

    invoke-virtual {p0}, Labcd/SI;->u7()Z

    move-result v5

    invoke-virtual {v2, v5}, Labcd/AI;->v5(Z)V

    iget-object v2, p0, Labcd/SI;->rN:Labcd/AI;

    invoke-virtual {v2, v3}, Labcd/AI;->j6(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/SI;->rN:Labcd/AI;

    iget-wide v6, p0, Labcd/SI;->ro:J

    invoke-virtual {v2, v6, v7}, Labcd/AI;->DW(J)V

    iget-object v2, p0, Labcd/SI;->rN:Labcd/AI;

    invoke-virtual {v2, v1, v0}, Labcd/AI;->j6(Labcd/LE;Labcd/LE;)Labcd/kH;

    move-result-object v0

    iput-object v0, p0, Labcd/SI;->SI:Labcd/kH;

    invoke-virtual {v4}, Labcd/EE;->FH()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Labcd/EE;->Hw()V

    iget-object v0, p0, Labcd/SI;->aM:Labcd/_K;

    if-eqz v0, :cond_3

    iget v1, p0, Labcd/SI;->QX:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Labcd/_K;->j6(I)V

    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Labcd/EE;->Hw()V

    throw v0
.end method

.method private Ws()Z
    .registers 4

    iget-object v0, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/OI;

    invoke-virtual {v0}, Labcd/OI;->VH()Labcd/OI$b;

    move-result-object v0

    sget-object v2, Labcd/OI$b;->Hw:Labcd/OI$b;

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private XL()V
    .registers 9

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v0, p0, Labcd/SI;->a8:Labcd/DI;

    invoke-virtual {v0}, Labcd/DI;->FH()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sget-object v1, Labcd/DI;->j6:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_2

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_1
    if-lt v1, v5, :cond_3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x53

    if-lt v1, v3, :cond_5

    const/16 v1, 0x28

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v1

    const/16 v3, 0x29

    const/16 v4, 0x51

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v3

    const/16 v4, 0x52

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Labcd/OI;

    invoke-direct {v4, v1, v3, v0}, Labcd/OI;-><init>(Labcd/yE;Labcd/yE;Ljava/lang/String;)V

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Labcd/OI$a;->v5:Labcd/OI$a;

    invoke-virtual {v4, v0}, Labcd/OI;->j6(Labcd/OI$a;)V

    :goto_2
    iget-object v0, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    aget-object v6, v4, v1

    iget-object v7, p0, Labcd/SI;->gW:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Labcd/SI;->er:Ljava/util/Map;

    invoke-virtual {v4}, Labcd/OI;->v5()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-virtual {v4, v0}, Labcd/OI;->j6(Labcd/ME;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->errorInvalidProtocolWantedOldNewRef:Ljava/lang/String;

    invoke-virtual {p0, v0}, Labcd/SI;->j6(Ljava/lang/String;)V

    new-instance v1, Labcd/nD;

    invoke-direct {v1, v0}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    throw v0
.end method

.method private aM()V
    .registers 3

    iget-boolean v0, p0, Labcd/SI;->Zo:Z

    if-eqz v0, :cond_1

    new-instance v0, Labcd/TI$a;

    iget-object v1, p0, Labcd/SI;->lg:Labcd/EI;

    invoke-direct {v0, v1}, Labcd/TI$a;-><init>(Labcd/EI;)V

    invoke-virtual {p0, v0}, Labcd/SI;->j6(Labcd/TI;)V

    iget-object v0, p0, Labcd/SI;->lg:Labcd/EI;

    invoke-virtual {v0}, Labcd/EI;->DW()V

    :goto_0
    iget-object v0, p0, Labcd/SI;->vy:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Labcd/SI;->Hw()Ljava/util/Map;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Labcd/SI;->XL()V

    iget-object v0, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Labcd/SI;->we()V

    invoke-direct {p0}, Labcd/SI;->Ws()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-direct {p0}, Labcd/SI;->QX()V

    invoke-direct {p0}, Labcd/SI;->J8()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Labcd/SI;->EQ()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/SI;->rN:Labcd/AI;

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/SI;->P8:Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iget-object v0, p0, Labcd/SI;->P8:Ljava/lang/Throwable;

    if-nez v0, :cond_5

    invoke-direct {p0}, Labcd/SI;->Mr()V

    invoke-direct {p0}, Labcd/SI;->J0()V

    :cond_5
    invoke-direct {p0}, Labcd/SI;->j3()V

    iget-boolean v0, p0, Labcd/SI;->ei:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    new-instance v1, Labcd/PI;

    invoke-direct {v1, p0}, Labcd/PI;-><init>(Labcd/SI;)V

    invoke-direct {p0, v0, v1}, Labcd/SI;->j6(ZLabcd/SI$b;)V

    iget-object v0, p0, Labcd/SI;->lg:Labcd/EI;

    invoke-virtual {v0}, Labcd/EI;->j6()V

    :cond_6
    :goto_2
    iget-object v0, p0, Labcd/SI;->Ws:Labcd/GI;

    sget-object v1, Labcd/OI$a;->u7:Labcd/OI$a;

    invoke-direct {p0, v1}, Labcd/SI;->j6(Labcd/OI$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Labcd/GI;->j6(Labcd/SI;Ljava/util/Collection;)V

    iget-object v0, p0, Labcd/SI;->P8:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    new-instance v1, Labcd/AD;

    invoke-direct {v1, v0}, Labcd/AD;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    move-exception v0

    iput-object v0, p0, Labcd/SI;->P8:Ljava/lang/Throwable;

    goto :goto_1

    :catch_1
    move-exception v0

    iput-object v0, p0, Labcd/SI;->P8:Ljava/lang/Throwable;

    goto :goto_1

    :catch_2
    move-exception v0

    iput-object v0, p0, Labcd/SI;->P8:Ljava/lang/Throwable;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    new-instance v1, Labcd/QI;

    invoke-direct {v1, p0}, Labcd/QI;-><init>(Labcd/SI;)V

    invoke-direct {p0, v0, v1}, Labcd/SI;->j6(ZLabcd/SI$b;)V

    goto :goto_2
.end method

.method private j3()V
    .registers 2

    iget-object v0, p0, Labcd/SI;->SI:Labcd/kH;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/kH;->j6()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/SI;->SI:Labcd/kH;

    :cond_0
    return-void
.end method

.method static synthetic j6(Labcd/SI;)Labcd/EI;
    .registers 2

    iget-object v0, p0, Labcd/SI;->lg:Labcd/EI;

    return-object v0
.end method

.method private j6(Labcd/OI$a;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/OI$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Labcd/OI;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/OI;

    invoke-virtual {v0}, Labcd/OI;->Zo()Labcd/OI$a;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private j6(Labcd/OI;)V
    .registers 7

    const/4 v3, 0x1

    :try_start_0
    iget-object v0, p0, Labcd/SI;->Hw:Labcd/UE;

    invoke-virtual {p1}, Labcd/OI;->v5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object v0

    invoke-virtual {p0}, Labcd/SI;->v5()Labcd/KE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/RE;->j6(Labcd/KE;)V

    invoke-static {}, Labcd/SI;->FH()[I

    move-result-object v1

    invoke-virtual {p1}, Labcd/OI;->VH()Labcd/OI$b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v3, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v1

    invoke-virtual {p1}, Labcd/OI;->FH()Labcd/yE;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Labcd/OI;->FH()Labcd/yE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/RE;->j6(Labcd/YD;)V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/RE;->j6(Z)V

    iget-object v1, p0, Labcd/SI;->v5:Labcd/qG;

    invoke-virtual {v0, v1}, Labcd/RE;->j6(Labcd/qG;)Labcd/RE$a;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/SI;->j6(Labcd/OI;Labcd/RE$a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Labcd/OI$a;->VH:Labcd/OI$a;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->lockError:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Labcd/OI;->j6(Labcd/OI$a;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Labcd/SI;->gn()Z

    move-result v1

    invoke-virtual {v0, v1}, Labcd/RE;->j6(Z)V

    invoke-virtual {p1}, Labcd/OI;->FH()Labcd/yE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/RE;->j6(Labcd/YD;)V

    invoke-virtual {p1}, Labcd/OI;->DW()Labcd/yE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/RE;->DW(Labcd/YD;)V

    const-string v1, "push"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Labcd/RE;->j6(Ljava/lang/String;Z)V

    iget-object v1, p0, Labcd/SI;->v5:Labcd/qG;

    invoke-virtual {v0, v1}, Labcd/RE;->DW(Labcd/qG;)Labcd/RE$a;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/SI;->j6(Labcd/OI;Labcd/RE$a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private j6(Labcd/OI;Labcd/RE$a;)V
    .registers 5

    invoke-static {}, Labcd/SI;->j6()[I

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Labcd/OI$a;->VH:Labcd/OI$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Labcd/OI;->j6(Labcd/OI$a;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Labcd/OI$a;->v5:Labcd/OI$a;

    invoke-virtual {p1, v0}, Labcd/OI;->j6(Labcd/OI$a;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Labcd/OI$a;->Hw:Labcd/OI$a;

    invoke-virtual {p1, v0}, Labcd/OI;->j6(Labcd/OI$a;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Labcd/OI$a;->u7:Labcd/OI$a;

    invoke-virtual {p1, v0}, Labcd/OI;->j6(Labcd/OI$a;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Labcd/OI$a;->gn:Labcd/OI$a;

    invoke-virtual {p1, v0}, Labcd/OI;->j6(Labcd/OI$a;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Labcd/OI$a;->j6:Labcd/OI$a;

    invoke-virtual {p1, v0}, Labcd/OI;->j6(Labcd/OI$a;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private j6(ZLabcd/SI$b;)V
    .registers 8

    iget-object v0, p0, Labcd/SI;->P8:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unpack error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/SI;->P8:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Labcd/SI$b;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/OI;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ng "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Labcd/OI;->v5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " n/a (unpacker error)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Labcd/SI$b;->j6(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "unpack ok"

    invoke-virtual {p2, v0}, Labcd/SI$b;->j6(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/OI;

    invoke-virtual {v0}, Labcd/OI;->Zo()Labcd/OI$a;

    move-result-object v2

    sget-object v3, Labcd/OI$a;->u7:Labcd/OI$a;

    if-ne v2, v3, :cond_5

    if-eqz p1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ok "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Labcd/OI;->v5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Labcd/SI$b;->j6(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ng "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/OI;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Labcd/SI;->DW()[I

    move-result-object v3

    invoke-virtual {v0}, Labcd/OI;->Zo()Labcd/OI$a;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Labcd/SI$b;->j6(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string v0, "failed to lock"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    invoke-virtual {v0}, Labcd/OI;->j6()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v0, "unspecified reason"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Labcd/OI;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_3
    invoke-virtual {v0}, Labcd/OI;->j6()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v0, "missing object(s)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Labcd/OI;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "object "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Labcd/OI;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " missing"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Labcd/OI;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_4
    const-string v0, "branch is currently checked out"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_5
    const-string v0, "non-fast forward"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_6
    const-string v0, "deletion prohibited"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_7
    const-string v0, "creation prohibited"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_8
    const-string v0, "server bug; ref not processed"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/SI;->DW:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/RE$a;->values()[Labcd/RE$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/RE$a;->Zo:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Labcd/RE$a;->v5:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Labcd/RE$a;->u7:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Labcd/RE$a;->DW:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Labcd/RE$a;->Hw:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Labcd/RE$a;->j6:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Labcd/RE$a;->FH:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Labcd/RE$a;->VH:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Labcd/RE$a;->gn:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Labcd/RE$a;->tp:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Labcd/SI;->DW:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method private we()V
    .registers 5

    const v3, 0xfff0

    iget-object v0, p0, Labcd/SI;->gW:Ljava/util/Set;

    const-string v1, "report-status"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Labcd/SI;->ei:Z

    iget-object v0, p0, Labcd/SI;->gW:Ljava/util/Set;

    const-string v1, "side-band-64k"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Labcd/SI;->nw:Z

    iget-boolean v0, p0, Labcd/SI;->nw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    new-instance v1, Labcd/aJ;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3, v0}, Labcd/aJ;-><init>(IILjava/io/OutputStream;)V

    iput-object v1, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    new-instance v1, Labcd/aJ;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3, v0}, Labcd/aJ;-><init>(IILjava/io/OutputStream;)V

    iput-object v1, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    new-instance v0, Labcd/EI;

    iget-object v1, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Labcd/EI;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Labcd/SI;->lg:Labcd/EI;

    iget-object v0, p0, Labcd/SI;->lg:Labcd/EI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/EI;->j6(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final Hw()Ljava/util/Map;
    .registers 4
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

    iget-object v0, p0, Labcd/SI;->er:Ljava/util/Map;

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/SI;->J0:Labcd/VI;

    iget-object v1, p0, Labcd/SI;->Hw:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/VI;->j6(Ljava/util/Map;)Ljava/util/Map;

    iput-object v1, p0, Labcd/SI;->er:Ljava/util/Map;

    iget-object v0, p0, Labcd/SI;->er:Ljava/util/Map;

    const-string v1, "HEAD"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Labcd/ME;->Zo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/SI;->er:Ljava/util/Map;

    const-string v1, "HEAD"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Labcd/SI;->er:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Labcd/SI;->yS:Ljava/util/Set;

    iget-object v1, p0, Labcd/SI;->Hw:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->Hw()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v0, p0, Labcd/SI;->er:Ljava/util/Map;

    return-object v0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Labcd/SI;->yS:Ljava/util/Set;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public VH()Z
    .registers 2

    iget-boolean v0, p0, Labcd/SI;->u7:Z

    return v0
.end method

.method public Zo()Z
    .registers 2

    iget-boolean v0, p0, Labcd/SI;->gn:Z

    return v0
.end method

.method public gn()Z
    .registers 2

    iget-boolean v0, p0, Labcd/SI;->tp:Z

    return v0
.end method

.method public j6(Labcd/TI;)V
    .registers 4

    iget-object v0, p0, Labcd/SI;->vy:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ERR "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/SI;->vy:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Labcd/SI;->Hw:Labcd/UE;

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Labcd/UE;)V

    const-string v0, "side-band-64k"

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/String;)V

    const-string v0, "delete-refs"

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/String;)V

    const-string v0, "report-status"

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/String;)V

    iget-boolean v0, p0, Labcd/SI;->EQ:Z

    if-eqz v0, :cond_1

    const-string v0, "ofs-delta"

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Labcd/SI;->Hw()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/util/Map;)Ljava/util/Set;

    iget-object v0, p0, Labcd/SI;->yS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Labcd/TI;->DW()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v0

    const-string v1, "capabilities^{}"

    invoke-virtual {p1, v0, v1}, Labcd/TI;->j6(Labcd/YD;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Labcd/TI;->j6()V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Labcd/YD;)V

    goto :goto_1
.end method

.method public j6(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 8

    const/4 v3, 0x0

    :try_start_0
    iput-object p1, p0, Labcd/SI;->j3:Ljava/io/InputStream;

    iput-object p2, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    iput-object p3, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    iget v0, p0, Labcd/SI;->QX:I

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

    iput-object v1, p0, Labcd/SI;->XL:Labcd/VK;

    new-instance v0, Labcd/_K;

    iget-object v1, p0, Labcd/SI;->j3:Ljava/io/InputStream;

    iget-object v2, p0, Labcd/SI;->XL:Labcd/VK;

    invoke-direct {v0, v1, v2}, Labcd/_K;-><init>(Ljava/io/InputStream;Labcd/VK;)V

    iput-object v0, p0, Labcd/SI;->aM:Labcd/_K;

    new-instance v0, Labcd/aL;

    iget-object v1, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    iget-object v2, p0, Labcd/SI;->XL:Labcd/VK;

    invoke-direct {v0, v1, v2}, Labcd/aL;-><init>(Ljava/io/OutputStream;Labcd/VK;)V

    iget-object v1, p0, Labcd/SI;->aM:Labcd/_K;

    iget v2, p0, Labcd/SI;->QX:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Labcd/_K;->j6(I)V

    iget v1, p0, Labcd/SI;->QX:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Labcd/aL;->j6(I)V

    iget-object v1, p0, Labcd/SI;->aM:Labcd/_K;

    iput-object v1, p0, Labcd/SI;->j3:Ljava/io/InputStream;

    iput-object v0, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    :cond_0
    new-instance v0, Labcd/DI;

    iget-object v1, p0, Labcd/SI;->j3:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Labcd/DI;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Labcd/SI;->a8:Labcd/DI;

    new-instance v0, Labcd/EI;

    iget-object v1, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Labcd/EI;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Labcd/SI;->lg:Labcd/EI;

    iget-object v0, p0, Labcd/SI;->lg:Labcd/EI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/EI;->j6(Z)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/SI;->gW:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-direct {p0}, Labcd/SI;->aM()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v0, p0, Labcd/SI;->v5:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    :try_start_1
    iget-boolean v0, p0, Labcd/SI;->nw:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    check-cast v0, Labcd/aJ;

    invoke-virtual {v0}, Labcd/aJ;->j6()V

    iget-object v0, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    check-cast v0, Labcd/aJ;

    invoke-virtual {v0}, Labcd/aJ;->j6()V

    new-instance v0, Labcd/EI;

    invoke-direct {v0, p2}, Labcd/EI;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/EI;->j6(Z)V

    invoke-virtual {v0}, Labcd/EI;->j6()V

    :cond_1
    iget-boolean v0, p0, Labcd/SI;->Zo:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Labcd/SI;->nw:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_2
    iget-object v0, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    invoke-direct {p0}, Labcd/SI;->j3()V

    iput-object v3, p0, Labcd/SI;->aM:Labcd/_K;

    iput-object v3, p0, Labcd/SI;->j3:Ljava/io/InputStream;

    iput-object v3, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    iput-object v3, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    iput-object v3, p0, Labcd/SI;->a8:Labcd/DI;

    iput-object v3, p0, Labcd/SI;->lg:Labcd/EI;

    iput-object v3, p0, Labcd/SI;->er:Ljava/util/Map;

    iput-object v3, p0, Labcd/SI;->gW:Ljava/util/Set;

    iput-object v3, p0, Labcd/SI;->BT:Ljava/util/List;

    iget-object v0, p0, Labcd/SI;->XL:Labcd/VK;

    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {v0}, Labcd/VK;->DW()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v3, p0, Labcd/SI;->XL:Labcd/VK;

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    iput-object v3, p0, Labcd/SI;->XL:Labcd/VK;

    throw v0

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Labcd/SI;->j3()V

    iput-object v3, p0, Labcd/SI;->aM:Labcd/_K;

    iput-object v3, p0, Labcd/SI;->j3:Ljava/io/InputStream;

    iput-object v3, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    iput-object v3, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    iput-object v3, p0, Labcd/SI;->a8:Labcd/DI;

    iput-object v3, p0, Labcd/SI;->lg:Labcd/EI;

    iput-object v3, p0, Labcd/SI;->er:Ljava/util/Map;

    iput-object v3, p0, Labcd/SI;->gW:Ljava/util/Set;

    iput-object v3, p0, Labcd/SI;->BT:Ljava/util/List;

    iget-object v1, p0, Labcd/SI;->XL:Labcd/VK;

    if-eqz v1, :cond_5

    :try_start_3
    invoke-virtual {v1}, Labcd/VK;->DW()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iput-object v3, p0, Labcd/SI;->XL:Labcd/VK;

    :cond_5
    throw v0

    :catchall_2
    move-exception v0

    iput-object v3, p0, Labcd/SI;->XL:Labcd/VK;

    throw v0

    :catchall_3
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Labcd/SI;->v5:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    :try_start_4
    iget-boolean v0, p0, Labcd/SI;->nw:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    check-cast v0, Labcd/aJ;

    invoke-virtual {v0}, Labcd/aJ;->j6()V

    iget-object v0, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    check-cast v0, Labcd/aJ;

    invoke-virtual {v0}, Labcd/aJ;->j6()V

    new-instance v0, Labcd/EI;

    invoke-direct {v0, p2}, Labcd/EI;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Labcd/EI;->j6(Z)V

    invoke-virtual {v0}, Labcd/EI;->j6()V

    :cond_6
    iget-boolean v0, p0, Labcd/SI;->Zo:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Labcd/SI;->nw:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    if-eqz v0, :cond_7

    iget-object v0, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_7
    iget-object v0, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :cond_8
    invoke-direct {p0}, Labcd/SI;->j3()V

    iput-object v3, p0, Labcd/SI;->aM:Labcd/_K;

    iput-object v3, p0, Labcd/SI;->j3:Ljava/io/InputStream;

    iput-object v3, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    iput-object v3, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    iput-object v3, p0, Labcd/SI;->a8:Labcd/DI;

    iput-object v3, p0, Labcd/SI;->lg:Labcd/EI;

    iput-object v3, p0, Labcd/SI;->er:Ljava/util/Map;

    iput-object v3, p0, Labcd/SI;->gW:Ljava/util/Set;

    iput-object v3, p0, Labcd/SI;->BT:Ljava/util/List;

    iget-object v0, p0, Labcd/SI;->XL:Labcd/VK;

    if-eqz v0, :cond_9

    :try_start_5
    invoke-virtual {v0}, Labcd/VK;->DW()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    iput-object v3, p0, Labcd/SI;->XL:Labcd/VK;

    :cond_9
    throw v1

    :catchall_4
    move-exception v0

    iput-object v3, p0, Labcd/SI;->XL:Labcd/VK;

    throw v0

    :catchall_5
    move-exception v0

    invoke-direct {p0}, Labcd/SI;->j3()V

    iput-object v3, p0, Labcd/SI;->aM:Labcd/_K;

    iput-object v3, p0, Labcd/SI;->j3:Ljava/io/InputStream;

    iput-object v3, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    iput-object v3, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    iput-object v3, p0, Labcd/SI;->a8:Labcd/DI;

    iput-object v3, p0, Labcd/SI;->lg:Labcd/EI;

    iput-object v3, p0, Labcd/SI;->er:Ljava/util/Map;

    iput-object v3, p0, Labcd/SI;->gW:Ljava/util/Set;

    iput-object v3, p0, Labcd/SI;->BT:Ljava/util/List;

    iget-object v1, p0, Labcd/SI;->XL:Labcd/VK;

    if-eqz v1, :cond_a

    :try_start_6
    invoke-virtual {v1}, Labcd/VK;->DW()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    iput-object v3, p0, Labcd/SI;->XL:Labcd/VK;

    :cond_a
    throw v0

    :catchall_6
    move-exception v0

    iput-object v3, p0, Labcd/SI;->XL:Labcd/VK;

    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Labcd/SI;->er:Ljava/util/Map;

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/SI;->vy:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Labcd/SI;->vy:Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Labcd/SI;->vy:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public tp()Z
    .registers 2

    iget-boolean v0, p0, Labcd/SI;->KD:Z

    return v0
.end method

.method public u7()Z
    .registers 2

    iget-boolean v0, p0, Labcd/SI;->VH:Z

    return v0
.end method

.method public v5()Labcd/KE;
    .registers 2

    iget-object v0, p0, Labcd/SI;->we:Labcd/KE;

    return-object v0
.end method
