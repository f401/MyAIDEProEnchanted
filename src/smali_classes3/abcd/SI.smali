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
            "Ljava/util/List<",
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field

.field private gW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
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
            "Ljava/util/Set<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/UE;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/SI;->Zo:Z

    iput-object p1, p0, Labcd/SI;->Hw:Labcd/UE;

    new-instance v0, Labcd/qG;

    invoke-direct {v0, p1}, Labcd/qG;-><init>(Labcd/UE;)V

    iput-object v0, p0, Labcd/SI;->v5:Labcd/qG;

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object p1

    sget-object v0, Labcd/SI$a;->j6:Labcd/gE$b;

    invoke-virtual {p1, v0}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/SI$a;

    iget-boolean v0, p1, Labcd/SI$a;->DW:Z

    iput-boolean v0, p0, Labcd/SI;->VH:Z

    iget-boolean v0, p1, Labcd/SI$a;->FH:Z

    iput-boolean v0, p0, Labcd/SI;->gn:Z

    iget-boolean v0, p1, Labcd/SI$a;->Hw:Z

    iput-boolean v0, p0, Labcd/SI;->u7:Z

    iget-boolean v0, p1, Labcd/SI$a;->v5:Z

    iput-boolean v0, p0, Labcd/SI;->tp:Z

    iget-boolean p1, p1, Labcd/SI$a;->Zo:Z

    iput-boolean p1, p0, Labcd/SI;->EQ:Z

    sget-object p1, Labcd/VI;->j6:Labcd/VI;

    iput-object p1, p0, Labcd/SI;->J0:Labcd/VI;

    sget-object p1, Labcd/II;->j6:Labcd/II;

    iput-object p1, p0, Labcd/SI;->J8:Labcd/II;

    sget-object p1, Labcd/GI;->j6:Labcd/GI;

    iput-object p1, p0, Labcd/SI;->Ws:Labcd/GI;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Labcd/SI;->yS:Ljava/util/Set;

    return-void
.end method

.method static synthetic DW(Labcd/SI;)Ljava/io/OutputStream;
    .registers 1

    iget-object p0, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    return-object p0
.end method

.method static synthetic DW()[I
    .registers 3

    sget-object v0, Labcd/SI;->FH:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/OI$a;->values()[Labcd/OI$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/OI$a;->gn:Labcd/OI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_16} :catch_17

    goto :goto_18

    :catch_17
    move-exception v1

    :goto_18
    :try_start_18
    sget-object v1, Labcd/OI$a;->j6:Labcd/OI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v1

    :goto_23
    :try_start_23
    sget-object v1, Labcd/OI$a;->u7:Labcd/OI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2d} :catch_2e

    goto :goto_2f

    :catch_2e
    move-exception v1

    :goto_2f
    :try_start_2f
    sget-object v1, Labcd/OI$a;->v5:Labcd/OI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_38} :catch_39

    goto :goto_3a

    :catch_39
    move-exception v1

    :goto_3a
    :try_start_3a
    sget-object v1, Labcd/OI$a;->Zo:Labcd/OI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_43} :catch_44

    goto :goto_45

    :catch_44
    move-exception v1

    :goto_45
    :try_start_45
    sget-object v1, Labcd/OI$a;->DW:Labcd/OI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4e} :catch_4f

    goto :goto_50

    :catch_4f
    move-exception v1

    :goto_50
    :try_start_50
    sget-object v1, Labcd/OI$a;->FH:Labcd/OI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_59} :catch_5a

    goto :goto_5b

    :catch_5a
    move-exception v1

    :goto_5b
    :try_start_5b
    sget-object v1, Labcd/OI$a;->Hw:Labcd/OI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_64} :catch_65

    goto :goto_66

    :catch_65
    move-exception v1

    :goto_66
    :try_start_66
    sget-object v1, Labcd/OI$a;->VH:Labcd/OI$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_6f} :catch_70

    goto :goto_71

    :catch_70
    move-exception v1

    :goto_71
    sput-object v0, Labcd/SI;->FH:[I

    return-object v0
.end method

.method private EQ()V
    .registers 8

    iget-boolean v0, p0, Labcd/SI;->KD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p0, Labcd/SI;->rN:Labcd/AI;

    invoke-virtual {v0}, Labcd/AI;->FH()Labcd/DE;

    move-result-object v0

    iget-object v2, p0, Labcd/SI;->rN:Labcd/AI;

    invoke-virtual {v2}, Labcd/AI;->v5()Labcd/DE;

    move-result-object v2

    goto :goto_14

    :cond_12
    move-object v0, v1

    move-object v2, v0

    :goto_14
    iput-object v1, p0, Labcd/SI;->rN:Labcd/AI;

    new-instance v1, Labcd/_F;

    iget-object v3, p0, Labcd/SI;->Hw:Labcd/UE;

    invoke-direct {v1, v3}, Labcd/_F;-><init>(Labcd/UE;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Labcd/qG;->j6(Z)V

    iget-boolean v3, p0, Labcd/SI;->KD:Z

    if-eqz v3, :cond_36

    sget-object v3, Labcd/kG;->FH:Labcd/kG;

    invoke-virtual {v1, v3}, Labcd/_F;->DW(Labcd/kG;)V

    invoke-virtual {v0}, Labcd/DE;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_36

    sget-object v3, Labcd/kG;->v5:Labcd/kG;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Labcd/_F;->j6(Labcd/kG;Z)V

    :cond_36
    iget-object v3, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_103

    iget-object v3, p0, Labcd/SI;->yS:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_48
    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_d5

    :cond_4e
    :goto_4e
    invoke-virtual {v1}, Labcd/_F;->tp()Labcd/dG;

    move-result-object v3

    if-nez v3, :cond_ba

    :cond_54
    :goto_54
    invoke-virtual {v1}, Labcd/_F;->yS()Labcd/iG;

    move-result-object v3

    if-nez v3, :cond_87

    iget-boolean v2, p0, Labcd/SI;->KD:Z

    if-eqz v2, :cond_86

    invoke-virtual {v0}, Labcd/DE;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_69

    goto :goto_86

    :cond_69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/yE;

    invoke-virtual {v1, v2}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v2

    sget-object v3, Labcd/fG;->j6:Labcd/fG;

    invoke-virtual {v2, v3}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v3

    if-eqz v3, :cond_7c

    goto :goto_62

    :cond_7c
    new-instance v0, Labcd/fD;

    invoke-virtual {v2}, Labcd/iG;->aM()I

    move-result v1

    invoke-direct {v0, v2, v1}, Labcd/fD;-><init>(Labcd/yE;I)V

    throw v0

    :cond_86
    :goto_86
    return-void

    :cond_87
    sget-object v4, Labcd/fG;->j6:Labcd/fG;

    invoke-virtual {v3, v4}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v4

    if-eqz v4, :cond_90

    goto :goto_54

    :cond_90
    iget-boolean v4, p0, Labcd/SI;->KD:Z

    if-eqz v4, :cond_a5

    invoke-virtual {v2, v3}, Labcd/DE;->j6(Labcd/YD;)Z

    move-result v4

    if-eqz v4, :cond_9b

    goto :goto_54

    :cond_9b
    new-instance v0, Labcd/fD;

    invoke-virtual {v3}, Labcd/iG;->aM()I

    move-result v1

    invoke-direct {v0, v3, v1}, Labcd/fD;-><init>(Labcd/yE;I)V

    throw v0

    :cond_a5
    instance-of v4, v3, Labcd/cG;

    if-eqz v4, :cond_54

    iget-object v4, p0, Labcd/SI;->Hw:Labcd/UE;

    invoke-virtual {v4, v3}, Labcd/UE;->j6(Labcd/YD;)Z

    move-result v4

    if-eqz v4, :cond_b2

    goto :goto_54

    :cond_b2
    new-instance v0, Labcd/fD;

    const-string v1, "blob"

    invoke-direct {v0, v3, v1}, Labcd/fD;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v0

    :cond_ba
    iget-boolean v4, p0, Labcd/SI;->KD:Z

    if-eqz v4, :cond_4e

    sget-object v4, Labcd/fG;->j6:Labcd/fG;

    invoke-virtual {v3, v4}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v4

    if-nez v4, :cond_4e

    invoke-virtual {v2, v3}, Labcd/DE;->j6(Labcd/YD;)Z

    move-result v4

    if-eqz v4, :cond_cd

    goto :goto_4e

    :cond_cd
    new-instance v0, Labcd/fD;

    const-string v1, "commit"

    invoke-direct {v0, v3, v1}, Labcd/fD;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v0

    :cond_d5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/yE;

    invoke-virtual {v1, v3}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v3

    invoke-virtual {v1, v3}, Labcd/_F;->v5(Labcd/iG;)V

    iget-boolean v5, p0, Labcd/SI;->KD:Z

    if-eqz v5, :cond_48

    invoke-virtual {v0}, Labcd/DE;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_48

    invoke-virtual {v1, v3}, Labcd/qG;->FH(Labcd/iG;)Labcd/iG;

    move-result-object v3

    instance-of v5, v3, Labcd/dG;

    if-eqz v5, :cond_fa

    check-cast v3, Labcd/dG;

    invoke-virtual {v3}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v3

    :cond_fa
    instance-of v5, v3, Labcd/mG;

    if-eqz v5, :cond_48

    invoke-virtual {v1, v3}, Labcd/_F;->v5(Labcd/iG;)V

    goto/16 :goto_48

    :cond_103
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/OI;

    invoke-virtual {v4}, Labcd/OI;->Zo()Labcd/OI$a;

    move-result-object v5

    sget-object v6, Labcd/OI$a;->j6:Labcd/OI$a;

    if-eq v5, v6, :cond_113

    goto/16 :goto_3c

    :cond_113
    invoke-virtual {v4}, Labcd/OI;->VH()Labcd/OI$b;

    move-result-object v5

    sget-object v6, Labcd/OI$b;->Hw:Labcd/OI$b;

    if-ne v5, v6, :cond_11d

    goto/16 :goto_3c

    :cond_11d
    invoke-virtual {v4}, Labcd/OI;->DW()Labcd/yE;

    move-result-object v4

    invoke-virtual {v1, v4}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v4

    invoke-virtual {v1, v4}, Labcd/_F;->Hw(Labcd/iG;)V

    goto/16 :goto_3c
.end method

.method static synthetic FH()[I
    .registers 3

    sget-object v0, Labcd/SI;->j6:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/OI$b;->values()[Labcd/OI$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/OI$b;->j6:Labcd/OI$b;

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
    sget-object v1, Labcd/OI$b;->Hw:Labcd/OI$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v1, Labcd/OI$b;->DW:Labcd/OI$b;

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
    :try_start_2d
    sget-object v1, Labcd/OI$b;->FH:Labcd/OI$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_38

    :catch_37
    move-exception v1

    :goto_38
    sput-object v0, Labcd/SI;->j6:[I

    return-object v0
.end method

.method private J0()V
    .registers 6

    iget-object v0, p0, Labcd/SI;->J8:Labcd/II;

    sget-object v1, Labcd/OI$a;->j6:Labcd/OI$a;

    invoke-direct {p0, v1}, Labcd/SI;->j6(Labcd/OI$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Labcd/II;->j6(Labcd/SI;Ljava/util/Collection;)V

    sget-object v0, Labcd/OI$a;->j6:Labcd/OI$a;

    invoke-direct {p0, v0}, Labcd/SI;->j6(Labcd/OI$a;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Labcd/vE;->j6:Labcd/vE;

    iget-boolean v2, p0, Labcd/SI;->nw:Z

    if-eqz v2, :cond_25

    new-instance v1, Labcd/bJ;

    iget-object v2, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Labcd/bJ;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v2, 0xfa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Labcd/eE;->j6(JLjava/util/concurrent/TimeUnit;)V

    :cond_25
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->updatingReferences:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Labcd/LE;->j6(Ljava/lang/String;I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_40

    invoke-interface {v1}, Labcd/LE;->j6()V

    return-void

    :cond_40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/OI;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Labcd/LE;->update(I)V

    invoke-direct {p0, v2}, Labcd/SI;->j6(Labcd/OI;)V

    goto :goto_36
.end method

.method private J8()Z
    .registers 2

    invoke-virtual {p0}, Labcd/SI;->u7()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Labcd/SI;->tp()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method private Mr()V
    .registers 8

    iget-object v0, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/OI;

    invoke-virtual {v1}, Labcd/OI;->Hw()Labcd/ME;

    move-result-object v2

    invoke-virtual {v1}, Labcd/OI;->Zo()Labcd/OI$a;

    move-result-object v3

    sget-object v4, Labcd/OI$a;->j6:Labcd/OI$a;

    if-eq v3, v4, :cond_20

    goto :goto_6

    :cond_20
    invoke-virtual {v1}, Labcd/OI;->VH()Labcd/OI$b;

    move-result-object v3

    sget-object v4, Labcd/OI$b;->Hw:Labcd/OI$b;

    if-ne v3, v4, :cond_34

    invoke-virtual {p0}, Labcd/SI;->VH()Z

    move-result v3

    if-nez v3, :cond_34

    sget-object v2, Labcd/OI$a;->FH:Labcd/OI$a;

    :goto_30
    invoke-virtual {v1, v2}, Labcd/OI;->j6(Labcd/OI$a;)V

    goto :goto_6

    :cond_34
    invoke-virtual {v1}, Labcd/OI;->VH()Labcd/OI$b;

    move-result-object v3

    sget-object v4, Labcd/OI$b;->j6:Labcd/OI$b;

    if-ne v3, v4, :cond_68

    invoke-virtual {p0}, Labcd/SI;->Zo()Z

    move-result v3

    if-nez v3, :cond_45

    sget-object v2, Labcd/OI$a;->DW:Labcd/OI$a;

    goto :goto_30

    :cond_45
    if-eqz v2, :cond_50

    invoke-virtual {p0}, Labcd/SI;->gn()Z

    move-result v3

    if-nez v3, :cond_50

    sget-object v2, Labcd/OI$a;->Hw:Labcd/OI$a;

    goto :goto_30

    :cond_50
    if-eqz v2, :cond_68

    sget-object v3, Labcd/OI$a;->VH:Labcd/OI$a;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->refAlreadyExists:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Labcd/OI;->j6(Labcd/OI$a;Ljava/lang/String;)V

    goto :goto_6

    :cond_68
    invoke-virtual {v1}, Labcd/OI;->VH()Labcd/OI$b;

    move-result-object v3

    sget-object v4, Labcd/OI$b;->Hw:Labcd/OI$b;

    if-ne v3, v4, :cond_8f

    if-eqz v2, :cond_8f

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v3

    invoke-virtual {v1}, Labcd/OI;->FH()Labcd/yE;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v3

    if-nez v3, :cond_8f

    invoke-interface {v2}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v3

    invoke-virtual {v1}, Labcd/OI;->FH()Labcd/yE;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v3

    if-nez v3, :cond_8f

    goto :goto_b1

    :cond_8f
    invoke-virtual {v1}, Labcd/OI;->VH()Labcd/OI$b;

    move-result-object v3

    sget-object v4, Labcd/OI$b;->DW:Labcd/OI$b;

    if-ne v3, v4, :cond_115

    if-nez v2, :cond_a3

    sget-object v2, Labcd/OI$a;->VH:Labcd/OI$a;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->noSuchRef:Ljava/lang/String;

    goto/16 :goto_133

    :cond_a3
    invoke-interface {v2}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v2

    invoke-virtual {v1}, Labcd/OI;->FH()Labcd/yE;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v2

    if-nez v2, :cond_bb

    :goto_b1
    sget-object v2, Labcd/OI$a;->VH:Labcd/OI$a;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->invalidOldIdSent:Ljava/lang/String;

    goto/16 :goto_133

    :cond_bb
    :try_start_bb
    iget-object v2, p0, Labcd/SI;->v5:Labcd/qG;

    invoke-virtual {v1}, Labcd/OI;->FH()Labcd/yE;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v2
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c5} :catch_109

    :try_start_c5
    iget-object v3, p0, Labcd/SI;->v5:Labcd/qG;

    invoke-virtual {v1}, Labcd/OI;->DW()Labcd/yE;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v3
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_cf} :catch_101

    instance-of v4, v2, Labcd/dG;

    if-eqz v4, :cond_fb

    instance-of v4, v3, Labcd/dG;

    if-eqz v4, :cond_fb

    :try_start_d7
    iget-object v4, p0, Labcd/SI;->v5:Labcd/qG;

    check-cast v2, Labcd/dG;

    check-cast v3, Labcd/dG;

    invoke-virtual {v4, v2, v3}, Labcd/qG;->j6(Labcd/dG;Labcd/dG;)Z

    move-result v2

    if-nez v2, :cond_115

    sget-object v2, Labcd/OI$b;->FH:Labcd/OI$b;

    invoke-virtual {v1, v2}, Labcd/OI;->j6(Labcd/OI$b;)V
    :try_end_e8
    .catch Labcd/fD; {:try_start_d7 .. :try_end_e8} :catch_f0
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_e8} :catch_e9

    goto :goto_115

    :catch_e9
    move-exception v2

    sget-object v2, Labcd/OI$a;->VH:Labcd/OI$a;

    invoke-virtual {v1, v2}, Labcd/OI;->j6(Labcd/OI$a;)V

    goto :goto_115

    :catch_f0
    move-exception v2

    sget-object v3, Labcd/OI$a;->Zo:Labcd/OI$a;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Labcd/OI;->j6(Labcd/OI$a;Ljava/lang/String;)V

    goto :goto_115

    :cond_fb
    sget-object v2, Labcd/OI$b;->FH:Labcd/OI$b;

    invoke-virtual {v1, v2}, Labcd/OI;->j6(Labcd/OI$b;)V

    goto :goto_115

    :catch_101
    move-exception v2

    sget-object v2, Labcd/OI$a;->Zo:Labcd/OI$a;

    invoke-virtual {v1}, Labcd/OI;->DW()Labcd/yE;

    move-result-object v3

    goto :goto_110

    :catch_109
    move-exception v2

    sget-object v2, Labcd/OI$a;->Zo:Labcd/OI$a;

    invoke-virtual {v1}, Labcd/OI;->FH()Labcd/yE;

    move-result-object v3

    :goto_110
    invoke-virtual {v3}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v3

    goto :goto_133

    :cond_115
    :goto_115
    invoke-virtual {v1}, Labcd/OI;->v5()Ljava/lang/String;

    move-result-object v2

    const-string v3, "refs/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12b

    invoke-virtual {v1}, Labcd/OI;->v5()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/UE;->DW(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_12b
    sget-object v2, Labcd/OI$a;->VH:Labcd/OI$a;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->funnyRefname:Ljava/lang/String;

    :goto_133
    invoke-virtual {v1, v2, v3}, Labcd/OI;->j6(Labcd/OI$a;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private QX()V
    .registers 8

    iget-object v0, p0, Labcd/SI;->aM:Labcd/_K;

    if-eqz v0, :cond_d

    iget v1, p0, Labcd/SI;->QX:I

    mul-int/lit8 v1, v1, 0xa

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Labcd/_K;->j6(I)V

    :cond_d
    sget-object v0, Labcd/vE;->j6:Labcd/vE;

    iget-boolean v1, p0, Labcd/SI;->nw:Z

    if-eqz v1, :cond_1b

    new-instance v1, Labcd/bJ;

    iget-object v2, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Labcd/bJ;-><init>(Ljava/io/OutputStream;)V

    goto :goto_1c

    :cond_1b
    move-object v1, v0

    :goto_1c
    iget-object v2, p0, Labcd/SI;->Hw:Labcd/UE;

    invoke-virtual {v2}, Labcd/UE;->aM()Labcd/EE;

    move-result-object v2

    :try_start_22
    invoke-virtual {p0}, Labcd/SI;->v5()Labcd/KE;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_94

    const-string v4, "jgit receive-pack"

    if-eqz v3, :cond_43

    :try_start_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/SI;->v5()Labcd/KE;

    move-result-object v4

    invoke-virtual {v4}, Labcd/KE;->Hw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_43
    iget-object v3, p0, Labcd/SI;->j3:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Labcd/EE;->j6(Ljava/io/InputStream;)Labcd/AI;

    move-result-object v3

    iput-object v3, p0, Labcd/SI;->rN:Labcd/AI;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Labcd/AI;->j6(Z)V

    iget-object v3, p0, Labcd/SI;->rN:Labcd/AI;

    iget-boolean v6, p0, Labcd/SI;->KD:Z

    invoke-virtual {v3, v6}, Labcd/AI;->Hw(Z)V

    iget-object v3, p0, Labcd/SI;->rN:Labcd/AI;

    iget-boolean v6, p0, Labcd/SI;->KD:Z

    invoke-virtual {v3, v6}, Labcd/AI;->FH(Z)V

    iget-object v3, p0, Labcd/SI;->rN:Labcd/AI;

    iget-boolean v6, p0, Labcd/SI;->Zo:Z

    xor-int/2addr v5, v6

    invoke-virtual {v3, v5}, Labcd/AI;->DW(Z)V

    iget-object v3, p0, Labcd/SI;->rN:Labcd/AI;

    invoke-virtual {p0}, Labcd/SI;->u7()Z

    move-result v5

    invoke-virtual {v3, v5}, Labcd/AI;->v5(Z)V

    iget-object v3, p0, Labcd/SI;->rN:Labcd/AI;

    invoke-virtual {v3, v4}, Labcd/AI;->j6(Ljava/lang/String;)V

    iget-object v3, p0, Labcd/SI;->rN:Labcd/AI;

    iget-wide v4, p0, Labcd/SI;->ro:J

    invoke-virtual {v3, v4, v5}, Labcd/AI;->DW(J)V

    iget-object v3, p0, Labcd/SI;->rN:Labcd/AI;

    invoke-virtual {v3, v0, v1}, Labcd/AI;->j6(Labcd/LE;Labcd/LE;)Labcd/kH;

    move-result-object v0

    iput-object v0, p0, Labcd/SI;->SI:Labcd/kH;

    invoke-virtual {v2}, Labcd/EE;->FH()V
    :try_end_85
    .catchall {:try_start_2a .. :try_end_85} :catchall_94

    invoke-virtual {v2}, Labcd/EE;->Hw()V

    iget-object v0, p0, Labcd/SI;->aM:Labcd/_K;

    if-eqz v0, :cond_93

    iget v1, p0, Labcd/SI;->QX:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Labcd/_K;->j6(I)V

    :cond_93
    return-void

    :catchall_94
    move-exception v0

    invoke-virtual {v2}, Labcd/EE;->Hw()V

    throw v0
.end method

.method private Ws()Z
    .registers 4

    iget-object v0, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/OI;

    invoke-virtual {v1}, Labcd/OI;->VH()Labcd/OI$b;

    move-result-object v1

    sget-object v2, Labcd/OI$b;->Hw:Labcd/OI$b;

    if-eq v1, v2, :cond_6

    const/4 v0, 0x1

    return v0
.end method

.method private XL()V
    .registers 9

    :goto_0
    :try_start_0
    iget-object v0, p0, Labcd/SI;->a8:Labcd/DI;

    invoke-virtual {v0}, Labcd/DI;->FH()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_95

    sget-object v1, Labcd/DI;->j6:Ljava/lang/String;

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_39

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_28
    if-lt v5, v4, :cond_2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    :cond_2f
    aget-object v6, v3, v5

    iget-object v7, p0, Labcd/SI;->gW:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_39
    :goto_39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x53

    if-lt v1, v3, :cond_86

    const/16 v1, 0x28

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v1

    const/16 v2, 0x29

    const/16 v3, 0x51

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/yE;->j6(Ljava/lang/String;)Labcd/yE;

    move-result-object v2

    const/16 v3, 0x52

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Labcd/OI;

    invoke-direct {v3, v1, v2, v0}, Labcd/OI;-><init>(Labcd/yE;Labcd/yE;Ljava/lang/String;)V

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    sget-object v0, Labcd/OI$a;->v5:Labcd/OI$a;

    invoke-virtual {v3, v0}, Labcd/OI;->j6(Labcd/OI$a;)V

    goto :goto_7f

    :cond_70
    iget-object v0, p0, Labcd/SI;->er:Ljava/util/Map;

    invoke-virtual {v3}, Labcd/OI;->v5()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-virtual {v3, v0}, Labcd/OI;->j6(Labcd/ME;)V

    :goto_7f
    iget-object v0, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_86
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->errorInvalidProtocolWantedOldNewRef:Ljava/lang/String;

    invoke-virtual {p0, v0}, Labcd/SI;->j6(Ljava/lang/String;)V

    new-instance v1, Labcd/nD;

    invoke-direct {v1, v0}, Labcd/nD;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_95
    move-exception v0

    iget-object v1, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9f

    return-void

    :cond_9f
    goto :goto_a1

    :goto_a0
    throw v0

    :goto_a1
    goto :goto_a0
.end method

.method private aM()V
    .registers 3

    iget-boolean v0, p0, Labcd/SI;->Zo:Z

    if-eqz v0, :cond_14

    new-instance v0, Labcd/TI$a;

    iget-object v1, p0, Labcd/SI;->lg:Labcd/EI;

    invoke-direct {v0, v1}, Labcd/TI$a;-><init>(Labcd/EI;)V

    invoke-virtual {p0, v0}, Labcd/SI;->j6(Labcd/TI;)V

    iget-object v0, p0, Labcd/SI;->lg:Labcd/EI;

    invoke-virtual {v0}, Labcd/EI;->DW()V

    goto :goto_17

    :cond_14
    invoke-virtual {p0}, Labcd/SI;->Hw()Ljava/util/Map;

    :goto_17
    iget-object v0, p0, Labcd/SI;->vy:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1c

    return-void

    :cond_1c
    invoke-direct {p0}, Labcd/SI;->XL()V

    iget-object v0, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8c

    invoke-direct {p0}, Labcd/SI;->we()V

    invoke-direct {p0}, Labcd/SI;->Ws()Z

    move-result v0

    if-eqz v0, :cond_49

    :try_start_30
    invoke-direct {p0}, Labcd/SI;->QX()V

    invoke-direct {p0}, Labcd/SI;->J8()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-direct {p0}, Labcd/SI;->EQ()V

    :cond_3c
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/SI;->rN:Labcd/AI;

    iput-object v0, p0, Labcd/SI;->P8:Ljava/lang/Throwable;
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_41} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_41} :catch_44
    .catch Ljava/lang/Error; {:try_start_30 .. :try_end_41} :catch_42

    goto :goto_49

    :catch_42
    move-exception v0

    goto :goto_47

    :catch_44
    move-exception v0

    goto :goto_47

    :catch_46
    move-exception v0

    :goto_47
    iput-object v0, p0, Labcd/SI;->P8:Ljava/lang/Throwable;

    :cond_49
    :goto_49
    iget-object v0, p0, Labcd/SI;->P8:Ljava/lang/Throwable;

    if-nez v0, :cond_53

    invoke-direct {p0}, Labcd/SI;->Mr()V

    invoke-direct {p0}, Labcd/SI;->J0()V

    :cond_53
    invoke-direct {p0}, Labcd/SI;->j3()V

    iget-boolean v0, p0, Labcd/SI;->ei:Z

    if-eqz v0, :cond_69

    new-instance v0, Labcd/PI;

    invoke-direct {v0, p0}, Labcd/PI;-><init>(Labcd/SI;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Labcd/SI;->j6(ZLabcd/SI$b;)V

    iget-object v0, p0, Labcd/SI;->lg:Labcd/EI;

    invoke-virtual {v0}, Labcd/EI;->j6()V

    goto :goto_76

    :cond_69
    iget-object v0, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    if-eqz v0, :cond_76

    new-instance v0, Labcd/QI;

    invoke-direct {v0, p0}, Labcd/QI;-><init>(Labcd/SI;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Labcd/SI;->j6(ZLabcd/SI$b;)V

    :cond_76
    :goto_76
    iget-object v0, p0, Labcd/SI;->Ws:Labcd/GI;

    sget-object v1, Labcd/OI$a;->u7:Labcd/OI$a;

    invoke-direct {p0, v1}, Labcd/SI;->j6(Labcd/OI$a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Labcd/GI;->j6(Labcd/SI;Ljava/util/Collection;)V

    iget-object v0, p0, Labcd/SI;->P8:Ljava/lang/Throwable;

    if-nez v0, :cond_86

    goto :goto_8c

    :cond_86
    new-instance v1, Labcd/AD;

    invoke-direct {v1, v0}, Labcd/AD;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_8c
    :goto_8c
    return-void
.end method

.method private j3()V
    .registers 2

    iget-object v0, p0, Labcd/SI;->SI:Labcd/kH;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Labcd/kH;->j6()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/SI;->SI:Labcd/kH;

    :cond_a
    return-void
.end method

.method static synthetic j6(Labcd/SI;)Labcd/EI;
    .registers 1

    iget-object p0, p0, Labcd/SI;->lg:Labcd/EI;

    return-object p0
.end method

.method private j6(Labcd/OI$a;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/OI$a;",
            ")",
            "Ljava/util/List<",
            "Labcd/OI;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_18

    return-object v0

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/OI;

    invoke-virtual {v2}, Labcd/OI;->Zo()Labcd/OI$a;

    move-result-object v3

    if-ne v3, p1, :cond_11

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method private j6(Labcd/OI;)V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Labcd/SI;->Hw:Labcd/UE;

    invoke-virtual {p1}, Labcd/OI;->v5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/UE;->v5(Ljava/lang/String;)Labcd/RE;

    move-result-object v1

    invoke-virtual {p0}, Labcd/SI;->v5()Labcd/KE;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/RE;->j6(Labcd/KE;)V

    invoke-static {}, Labcd/SI;->FH()[I

    move-result-object v2

    invoke-virtual {p1}, Labcd/OI;->VH()Labcd/OI$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_4e

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4e

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2c

    goto :goto_88

    :cond_2c
    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v2

    invoke-virtual {p1}, Labcd/OI;->FH()Labcd/yE;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v2

    if-nez v2, :cond_41

    invoke-virtual {p1}, Labcd/OI;->FH()Labcd/yE;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/RE;->j6(Labcd/YD;)V

    :cond_41
    invoke-virtual {v1, v0}, Labcd/RE;->j6(Z)V

    iget-object v2, p0, Labcd/SI;->v5:Labcd/qG;

    invoke-virtual {v1, v2}, Labcd/RE;->j6(Labcd/qG;)Labcd/RE$a;

    move-result-object v1

    :goto_4a
    invoke-direct {p0, p1, v1}, Labcd/SI;->j6(Labcd/OI;Labcd/RE$a;)V

    goto :goto_88

    :cond_4e
    invoke-virtual {p0}, Labcd/SI;->gn()Z

    move-result v2

    invoke-virtual {v1, v2}, Labcd/RE;->j6(Z)V

    invoke-virtual {p1}, Labcd/OI;->FH()Labcd/yE;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/RE;->j6(Labcd/YD;)V

    invoke-virtual {p1}, Labcd/OI;->DW()Labcd/yE;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/RE;->DW(Labcd/YD;)V

    const-string v2, "push"

    invoke-virtual {v1, v2, v0}, Labcd/RE;->j6(Ljava/lang/String;Z)V

    iget-object v2, p0, Labcd/SI;->v5:Labcd/qG;

    invoke-virtual {v1, v2}, Labcd/RE;->DW(Labcd/qG;)Labcd/RE$a;

    move-result-object v1
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6e} :catch_6f

    goto :goto_4a

    :catch_6f
    move-exception v1

    sget-object v2, Labcd/OI$a;->VH:Labcd/OI$a;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->lockError:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v3, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Labcd/OI;->j6(Labcd/OI$a;Ljava/lang/String;)V

    :goto_88
    return-void
.end method

.method private j6(Labcd/OI;Labcd/RE$a;)V
    .registers 5

    invoke-static {}, Labcd/SI;->j6()[I

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    sget-object v0, Labcd/OI$a;->VH:Labcd/OI$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Labcd/OI;->j6(Labcd/OI$a;Ljava/lang/String;)V

    goto :goto_28

    :pswitch_17  #0x8
    sget-object p2, Labcd/OI$a;->v5:Labcd/OI$a;

    goto :goto_25

    :pswitch_1a  #0x7
    sget-object p2, Labcd/OI$a;->Hw:Labcd/OI$a;

    goto :goto_25

    :pswitch_1d  #0x3, 0x4, 0x5, 0x6
    sget-object p2, Labcd/OI$a;->u7:Labcd/OI$a;

    goto :goto_25

    :pswitch_20  #0x2, 0x9
    sget-object p2, Labcd/OI$a;->gn:Labcd/OI$a;

    goto :goto_25

    :pswitch_23  #0x1
    sget-object p2, Labcd/OI$a;->j6:Labcd/OI$a;

    :goto_25
    invoke-virtual {p1, p2}, Labcd/OI;->j6(Labcd/OI$a;)V

    :goto_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_23  #00000001
        :pswitch_20  #00000002
        :pswitch_1d  #00000003
        :pswitch_1d  #00000004
        :pswitch_1d  #00000005
        :pswitch_1d  #00000006
        :pswitch_1a  #00000007
        :pswitch_17  #00000008
        :pswitch_20  #00000009
    .end packed-switch
.end method

.method private j6(ZLabcd/SI$b;)V
    .registers 9

    iget-object v0, p0, Labcd/SI;->P8:Ljava/lang/Throwable;

    const-string v1, "ng "

    if-eqz v0, :cond_4c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unpack error "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/SI;->P8:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Labcd/SI$b;->j6(Ljava/lang/String;)V

    if-eqz p1, :cond_4b

    iget-object p1, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_4b

    :cond_2c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/OI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Labcd/OI;->v5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " n/a (unpacker error)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Labcd/SI$b;->j6(Ljava/lang/String;)V

    goto :goto_25

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    if-eqz p1, :cond_53

    const-string v0, "unpack ok"

    invoke-virtual {p2, v0}, Labcd/SI$b;->j6(Ljava/lang/String;)V

    :cond_53
    iget-object v0, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_59
    :goto_59
    :pswitch_59  #0x9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_60

    return-void

    :cond_60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/OI;

    invoke-virtual {v2}, Labcd/OI;->Zo()Labcd/OI$a;

    move-result-object v3

    sget-object v4, Labcd/OI$a;->u7:Labcd/OI$a;

    if-ne v3, v4, :cond_86

    if-eqz p1, :cond_59

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ok "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Labcd/OI;->v5()Ljava/lang/String;

    move-result-object v2

    :goto_7b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Labcd/SI$b;->j6(Ljava/lang/String;)V

    goto :goto_59

    :cond_86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Labcd/OI;->v5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Labcd/SI;->DW()[I

    move-result-object v4

    invoke-virtual {v2}, Labcd/OI;->Zo()Labcd/OI$a;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_fa

    goto :goto_7e

    :pswitch_ac  #0x8
    const-string v2, "failed to lock"

    goto :goto_7b

    :pswitch_af  #0x7
    invoke-virtual {v2}, Labcd/OI;->j6()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b8

    const-string v2, "unspecified reason"

    goto :goto_7b

    :cond_b8
    invoke-virtual {v2}, Labcd/OI;->j6()Ljava/lang/String;

    move-result-object v2

    goto :goto_7b

    :pswitch_bd  #0x6
    invoke-virtual {v2}, Labcd/OI;->j6()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c6

    const-string v2, "missing object(s)"

    goto :goto_7b

    :cond_c6
    invoke-virtual {v2}, Labcd/OI;->j6()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x28

    if-ne v4, v5, :cond_b8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "object "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Labcd/OI;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " missing"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7b

    :pswitch_ea  #0x5
    const-string v2, "branch is currently checked out"

    goto :goto_7b

    :pswitch_ed  #0x4
    const-string v2, "non-fast forward"

    goto :goto_7b

    :pswitch_f0  #0x3
    const-string v2, "deletion prohibited"

    goto :goto_7b

    :pswitch_f3  #0x2
    const-string v2, "creation prohibited"

    goto :goto_7b

    :pswitch_f6  #0x1
    const-string v2, "server bug; ref not processed"

    goto :goto_7b

    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_f6  #00000001
        :pswitch_f3  #00000002
        :pswitch_f0  #00000003
        :pswitch_ed  #00000004
        :pswitch_ea  #00000005
        :pswitch_bd  #00000006
        :pswitch_af  #00000007
        :pswitch_ac  #00000008
        :pswitch_59  #00000009
    .end packed-switch
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/SI;->DW:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/RE$a;->values()[Labcd/RE$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/RE$a;->Zo:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/RE$a;->v5:Labcd/RE$a;

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
    sget-object v1, Labcd/RE$a;->u7:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v1

    :goto_2e
    :try_start_2e
    sget-object v1, Labcd/RE$a;->DW:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_37} :catch_38

    goto :goto_39

    :catch_38
    move-exception v1

    :goto_39
    :try_start_39
    sget-object v1, Labcd/RE$a;->Hw:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_43

    goto :goto_44

    :catch_43
    move-exception v1

    :goto_44
    :try_start_44
    sget-object v1, Labcd/RE$a;->j6:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_4e

    goto :goto_4f

    :catch_4e
    move-exception v1

    :goto_4f
    :try_start_4f
    sget-object v1, Labcd/RE$a;->FH:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_58} :catch_59

    goto :goto_5a

    :catch_59
    move-exception v1

    :goto_5a
    :try_start_5a
    sget-object v1, Labcd/RE$a;->VH:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_63} :catch_64

    goto :goto_65

    :catch_64
    move-exception v1

    :goto_65
    :try_start_65
    sget-object v1, Labcd/RE$a;->gn:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_70

    goto :goto_71

    :catch_70
    move-exception v1

    :goto_71
    :try_start_71
    sget-object v1, Labcd/RE$a;->tp:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7b} :catch_7c

    goto :goto_7d

    :catch_7c
    move-exception v1

    :goto_7d
    sput-object v0, Labcd/SI;->DW:[I

    return-object v0
.end method

.method private we()V
    .registers 5

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

    if-eqz v0, :cond_38

    iget-object v0, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    new-instance v1, Labcd/aJ;

    const/4 v2, 0x1

    const v3, 0xfff0

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

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/EI;->j6(Z)V

    :cond_38
    return-void
.end method


# virtual methods
.method public final Hw()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/SI;->er:Ljava/util/Map;

    if-nez v0, :cond_58

    iget-object v0, p0, Labcd/SI;->J0:Labcd/VI;

    iget-object v1, p0, Labcd/SI;->Hw:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/VI;->j6(Ljava/util/Map;)Ljava/util/Map;

    iput-object v1, p0, Labcd/SI;->er:Ljava/util/Map;

    const-string v0, "HEAD"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ME;

    if-eqz v1, :cond_26

    invoke-interface {v1}, Labcd/ME;->Zo()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Labcd/SI;->er:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    iget-object v0, p0, Labcd/SI;->er:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_30
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v0, p0, Labcd/SI;->yS:Ljava/util/Set;

    iget-object v1, p0, Labcd/SI;->Hw:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->Hw()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_58

    :cond_42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ME;

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Labcd/SI;->yS:Ljava/util/Set;

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_58
    :goto_58
    iget-object v0, p0, Labcd/SI;->er:Ljava/util/Map;

    return-object v0
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

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ERR "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Labcd/SI;->vy:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/CharSequence;)V

    return-void

    :cond_18
    iget-object v0, p0, Labcd/SI;->Hw:Labcd/UE;

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Labcd/UE;)V

    const-string v0, "side-band-64k"

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/String;)V

    const-string v0, "delete-refs"

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/String;)V

    const-string v0, "report-status"

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/String;)V

    iget-boolean v0, p0, Labcd/SI;->EQ:Z

    if-eqz v0, :cond_35

    const-string v0, "ofs-delta"

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/lang/String;)V

    :cond_35
    invoke-virtual {p0}, Labcd/SI;->Hw()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/TI;->j6(Ljava/util/Map;)Ljava/util/Set;

    iget-object v0, p0, Labcd/SI;->yS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5b

    invoke-virtual {p1}, Labcd/TI;->DW()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v0

    const-string v1, "capabilities^{}"

    invoke-virtual {p1, v0, v1}, Labcd/TI;->j6(Labcd/YD;Ljava/lang/String;)V

    :cond_57
    invoke-virtual {p1}, Labcd/TI;->j6()V

    return-void

    :cond_5b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/yE;

    invoke-virtual {p1, v1}, Labcd/TI;->j6(Labcd/YD;)V

    goto :goto_42
.end method

.method public j6(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iput-object p1, p0, Labcd/SI;->j3:Ljava/io/InputStream;

    iput-object p2, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    iput-object p3, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    iget p1, p0, Labcd/SI;->QX:I

    if-lez p1, :cond_57

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    new-instance p3, Labcd/VK;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "-Timer"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Labcd/VK;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Labcd/SI;->XL:Labcd/VK;

    new-instance p1, Labcd/_K;

    iget-object p3, p0, Labcd/SI;->j3:Ljava/io/InputStream;

    iget-object v2, p0, Labcd/SI;->XL:Labcd/VK;

    invoke-direct {p1, p3, v2}, Labcd/_K;-><init>(Ljava/io/InputStream;Labcd/VK;)V

    iput-object p1, p0, Labcd/SI;->aM:Labcd/_K;

    new-instance p1, Labcd/aL;

    iget-object p3, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    iget-object v2, p0, Labcd/SI;->XL:Labcd/VK;

    invoke-direct {p1, p3, v2}, Labcd/aL;-><init>(Ljava/io/OutputStream;Labcd/VK;)V

    iget-object p3, p0, Labcd/SI;->aM:Labcd/_K;

    iget v2, p0, Labcd/SI;->QX:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {p3, v2}, Labcd/_K;->j6(I)V

    iget p3, p0, Labcd/SI;->QX:I

    mul-int/lit16 p3, p3, 0x3e8

    invoke-virtual {p1, p3}, Labcd/aL;->j6(I)V

    iget-object p3, p0, Labcd/SI;->aM:Labcd/_K;

    iput-object p3, p0, Labcd/SI;->j3:Ljava/io/InputStream;

    iput-object p1, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    :cond_57
    new-instance p1, Labcd/DI;

    iget-object p3, p0, Labcd/SI;->j3:Ljava/io/InputStream;

    invoke-direct {p1, p3}, Labcd/DI;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Labcd/SI;->a8:Labcd/DI;

    new-instance p1, Labcd/EI;

    iget-object p3, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    invoke-direct {p1, p3}, Labcd/EI;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Labcd/SI;->lg:Labcd/EI;

    invoke-virtual {p1, v0}, Labcd/EI;->j6(Z)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Labcd/SI;->gW:Ljava/util/Set;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Labcd/SI;->BT:Ljava/util/List;

    invoke-direct {p0}, Labcd/SI;->aM()V
    :try_end_7d
    .catchall {:try_start_2 .. :try_end_7d} :catchall_fc

    iget-object p1, p0, Labcd/SI;->v5:Labcd/qG;

    invoke-virtual {p1}, Labcd/qG;->EQ()V

    :try_start_82
    iget-boolean p1, p0, Labcd/SI;->nw:Z

    if-eqz p1, :cond_9f

    iget-object p1, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    check-cast p1, Labcd/aJ;

    invoke-virtual {p1}, Labcd/aJ;->j6()V

    iget-object p1, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    check-cast p1, Labcd/aJ;

    invoke-virtual {p1}, Labcd/aJ;->j6()V

    new-instance p1, Labcd/EI;

    invoke-direct {p1, p2}, Labcd/EI;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v0}, Labcd/EI;->j6(Z)V

    invoke-virtual {p1}, Labcd/EI;->j6()V

    :cond_9f
    iget-boolean p1, p0, Labcd/SI;->Zo:Z

    if-eqz p1, :cond_b3

    iget-boolean p1, p0, Labcd/SI;->nw:Z

    if-nez p1, :cond_ae

    iget-object p1, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    if-eqz p1, :cond_ae

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    :cond_ae
    iget-object p1, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_b3
    .catchall {:try_start_82 .. :try_end_b3} :catchall_d7

    :cond_b3
    invoke-direct {p0}, Labcd/SI;->j3()V

    iput-object v1, p0, Labcd/SI;->aM:Labcd/_K;

    iput-object v1, p0, Labcd/SI;->j3:Ljava/io/InputStream;

    iput-object v1, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    iput-object v1, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    iput-object v1, p0, Labcd/SI;->a8:Labcd/DI;

    iput-object v1, p0, Labcd/SI;->lg:Labcd/EI;

    iput-object v1, p0, Labcd/SI;->er:Ljava/util/Map;

    iput-object v1, p0, Labcd/SI;->gW:Ljava/util/Set;

    iput-object v1, p0, Labcd/SI;->BT:Ljava/util/List;

    iget-object p1, p0, Labcd/SI;->XL:Labcd/VK;

    if-eqz p1, :cond_d6

    :try_start_cc
    invoke-virtual {p1}, Labcd/VK;->DW()V
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_d2

    iput-object v1, p0, Labcd/SI;->XL:Labcd/VK;

    goto :goto_d6

    :catchall_d2
    move-exception p1

    iput-object v1, p0, Labcd/SI;->XL:Labcd/VK;

    throw p1

    :cond_d6
    :goto_d6
    return-void

    :catchall_d7
    move-exception p1

    invoke-direct {p0}, Labcd/SI;->j3()V

    iput-object v1, p0, Labcd/SI;->aM:Labcd/_K;

    iput-object v1, p0, Labcd/SI;->j3:Ljava/io/InputStream;

    iput-object v1, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    iput-object v1, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    iput-object v1, p0, Labcd/SI;->a8:Labcd/DI;

    iput-object v1, p0, Labcd/SI;->lg:Labcd/EI;

    iput-object v1, p0, Labcd/SI;->er:Ljava/util/Map;

    iput-object v1, p0, Labcd/SI;->gW:Ljava/util/Set;

    iput-object v1, p0, Labcd/SI;->BT:Ljava/util/List;

    iget-object p2, p0, Labcd/SI;->XL:Labcd/VK;

    if-eqz p2, :cond_fb

    :try_start_f1
    invoke-virtual {p2}, Labcd/VK;->DW()V
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_f7

    iput-object v1, p0, Labcd/SI;->XL:Labcd/VK;

    goto :goto_fb

    :catchall_f7
    move-exception p1

    iput-object v1, p0, Labcd/SI;->XL:Labcd/VK;

    throw p1

    :cond_fb
    :goto_fb
    throw p1

    :catchall_fc
    move-exception p1

    iget-object p3, p0, Labcd/SI;->v5:Labcd/qG;

    invoke-virtual {p3}, Labcd/qG;->EQ()V

    :try_start_102
    iget-boolean p3, p0, Labcd/SI;->nw:Z

    if-eqz p3, :cond_11f

    iget-object p3, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    check-cast p3, Labcd/aJ;

    invoke-virtual {p3}, Labcd/aJ;->j6()V

    iget-object p3, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    check-cast p3, Labcd/aJ;

    invoke-virtual {p3}, Labcd/aJ;->j6()V

    new-instance p3, Labcd/EI;

    invoke-direct {p3, p2}, Labcd/EI;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p3, v0}, Labcd/EI;->j6(Z)V

    invoke-virtual {p3}, Labcd/EI;->j6()V

    :cond_11f
    iget-boolean p2, p0, Labcd/SI;->Zo:Z

    if-eqz p2, :cond_133

    iget-boolean p2, p0, Labcd/SI;->nw:Z

    if-nez p2, :cond_12e

    iget-object p2, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    if-eqz p2, :cond_12e

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    :cond_12e
    iget-object p2, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_133
    .catchall {:try_start_102 .. :try_end_133} :catchall_157

    :cond_133
    invoke-direct {p0}, Labcd/SI;->j3()V

    iput-object v1, p0, Labcd/SI;->aM:Labcd/_K;

    iput-object v1, p0, Labcd/SI;->j3:Ljava/io/InputStream;

    iput-object v1, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    iput-object v1, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    iput-object v1, p0, Labcd/SI;->a8:Labcd/DI;

    iput-object v1, p0, Labcd/SI;->lg:Labcd/EI;

    iput-object v1, p0, Labcd/SI;->er:Ljava/util/Map;

    iput-object v1, p0, Labcd/SI;->gW:Ljava/util/Set;

    iput-object v1, p0, Labcd/SI;->BT:Ljava/util/List;

    iget-object p2, p0, Labcd/SI;->XL:Labcd/VK;

    if-eqz p2, :cond_156

    :try_start_14c
    invoke-virtual {p2}, Labcd/VK;->DW()V
    :try_end_14f
    .catchall {:try_start_14c .. :try_end_14f} :catchall_152

    iput-object v1, p0, Labcd/SI;->XL:Labcd/VK;

    goto :goto_156

    :catchall_152
    move-exception p1

    iput-object v1, p0, Labcd/SI;->XL:Labcd/VK;

    throw p1

    :cond_156
    :goto_156
    throw p1

    :catchall_157
    move-exception p1

    invoke-direct {p0}, Labcd/SI;->j3()V

    iput-object v1, p0, Labcd/SI;->aM:Labcd/_K;

    iput-object v1, p0, Labcd/SI;->j3:Ljava/io/InputStream;

    iput-object v1, p0, Labcd/SI;->Mr:Ljava/io/OutputStream;

    iput-object v1, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    iput-object v1, p0, Labcd/SI;->a8:Labcd/DI;

    iput-object v1, p0, Labcd/SI;->lg:Labcd/EI;

    iput-object v1, p0, Labcd/SI;->er:Ljava/util/Map;

    iput-object v1, p0, Labcd/SI;->gW:Ljava/util/Set;

    iput-object v1, p0, Labcd/SI;->BT:Ljava/util/List;

    iget-object p2, p0, Labcd/SI;->XL:Labcd/VK;

    if-eqz p2, :cond_17b

    :try_start_171
    invoke-virtual {p2}, Labcd/VK;->DW()V
    :try_end_174
    .catchall {:try_start_171 .. :try_end_174} :catchall_177

    iput-object v1, p0, Labcd/SI;->XL:Labcd/VK;

    goto :goto_17b

    :catchall_177
    move-exception p1

    iput-object v1, p0, Labcd/SI;->XL:Labcd/VK;

    throw p1

    :cond_17b
    :goto_17b
    throw p1
.end method

.method public j6(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Labcd/SI;->er:Ljava/util/Map;

    if-nez v0, :cond_1a

    iget-object v0, p0, Labcd/SI;->vy:Ljava/lang/StringBuilder;

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Labcd/SI;->vy:Ljava/lang/StringBuilder;

    :cond_f
    iget-object v0, p0, Labcd/SI;->vy:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Labcd/SI;->U2:Ljava/io/OutputStream;

    if-eqz v0, :cond_3a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Labcd/hE;->j6(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_38} :catch_39

    goto :goto_3a

    :catch_39
    move-exception p1

    :cond_3a
    :goto_3a
    return-void
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
