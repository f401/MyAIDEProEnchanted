.class public Labcd/TH;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/TH$a;,
        Labcd/TH$b;,
        Labcd/TH$c;,
        Labcd/TH$c$a;
    }
.end annotation


# static fields
.field private static final DW:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Labcd/TH;",
            ">;"
        }
    .end annotation
.end field

.field private static FH:[I

.field private static final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ref/WeakReference<",
            "Labcd/TH;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private BT:Z

.field private EQ:Ljava/util/zip/Deflater;

.field private final Hw:[Labcd/lK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LlK<",
            "Labcd/MH;",
            ">;"
        }
    .end annotation
.end field

.field private final J0:Labcd/LH;

.field private final J8:Labcd/NH;

.field private Mr:[B

.field private P8:I

.field private final QX:Labcd/TH$a;

.field private U2:Z

.field private VH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/BH;",
            ">;"
        }
    .end annotation
.end field

.field private final Ws:Labcd/TH$c;

.field private final XL:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Labcd/TH;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/MH;",
            ">;"
        }
    .end annotation
.end field

.field private a8:Z

.field private aM:Labcd/TH$c$a;

.field private ei:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field

.field private er:Z

.field private gW:Z

.field private gn:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field

.field private j3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/MH;",
            ">;"
        }
    .end annotation
.end field

.field private lg:Z

.field private rN:Z

.field private tp:Labcd/bH;

.field private u7:[Labcd/bH;

.field private final v5:Labcd/AE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LAE<",
            "Labcd/MH;",
            ">;"
        }
    .end annotation
.end field

.field private vy:Z

.field private final we:Labcd/IE;

.field private yS:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Labcd/TH;->j6:Ljava/util/Map;

    new-instance v0, Labcd/QH;

    invoke-direct {v0}, Labcd/QH;-><init>()V

    sput-object v0, Labcd/TH;->DW:Ljava/lang/Iterable;

    return-void
.end method

.method public constructor <init>(Labcd/NH;Labcd/IE;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Labcd/lK;

    iput-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    new-instance v1, Labcd/lK;

    invoke-direct {v1}, Labcd/lK;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Labcd/lK;

    invoke-direct {v1}, Labcd/lK;-><init>()V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Labcd/lK;

    invoke-direct {v1}, Labcd/lK;-><init>()V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Labcd/lK;

    invoke-direct {v1}, Labcd/lK;-><init>()V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-instance v0, Labcd/AE;

    invoke-direct {v0}, Labcd/AE;-><init>()V

    iput-object v0, p0, Labcd/TH;->v5:Labcd/AE;

    new-instance v0, Labcd/lK;

    invoke-direct {v0}, Labcd/lK;-><init>()V

    iput-object v0, p0, Labcd/TH;->Zo:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/TH;->VH:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Labcd/TH;->gn:Ljava/util/Set;

    iput-boolean v2, p0, Labcd/TH;->gW:Z

    iput-object p1, p0, Labcd/TH;->J8:Labcd/NH;

    iput-object p2, p0, Labcd/TH;->we:Labcd/IE;

    instance-of v0, p2, Labcd/LH;

    if-eqz v0, :cond_50

    check-cast p2, Labcd/LH;

    goto :goto_51

    :cond_50
    const/4 p2, 0x0

    :goto_51
    iput-object p2, p0, Labcd/TH;->J0:Labcd/LH;

    invoke-virtual {p1}, Labcd/NH;->EQ()Z

    move-result p2

    iput-boolean p2, p0, Labcd/TH;->U2:Z

    invoke-virtual {p1}, Labcd/NH;->J0()Z

    move-result p1

    iput-boolean p1, p0, Labcd/TH;->a8:Z

    iput-boolean v2, p0, Labcd/TH;->rN:Z

    new-instance p1, Labcd/TH$c;

    invoke-direct {p1}, Labcd/TH$c;-><init>()V

    iput-object p1, p0, Labcd/TH;->Ws:Labcd/TH$c;

    new-instance p1, Labcd/TH$a;

    invoke-direct {p1, p0}, Labcd/TH$a;-><init>(Labcd/TH;)V

    iput-object p1, p0, Labcd/TH;->QX:Labcd/TH$a;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Labcd/TH;->XL:Ljava/lang/ref/WeakReference;

    sget-object p2, Labcd/TH;->j6:Ljava/util/Map;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic DW()Ljava/util/Map;
    .registers 1

    sget-object v0, Labcd/TH;->j6:Ljava/util/Map;

    return-object v0
.end method

.method private DW(Labcd/LE;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v0}, Labcd/lK;->size()I

    move-result v0

    iget-object v4, v1, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v4}, Labcd/lK;->size()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, v1, Labcd/TH;->Zo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v0, v4

    new-array v4, v0, [Labcd/MH;

    const/4 v6, 0x0

    invoke-direct {v1, v4, v6, v3}, Labcd/TH;->j6([Labcd/MH;II)I

    move-result v0

    invoke-direct {v1, v4, v0, v5}, Labcd/TH;->j6([Labcd/MH;II)I

    move-result v3

    if-nez v3, :cond_2c

    return-void

    :cond_2c
    iget-object v0, v1, Labcd/TH;->Zo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v3

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_13a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-object v0, Labcd/TH$b;->DW:Labcd/TH$b;

    int-to-long v9, v5

    invoke-direct {v1, v0, v2, v9, v10}, Labcd/TH;->j6(Labcd/TH$b;Labcd/LE;J)V

    iget-object v0, v1, Labcd/TH;->we:Labcd/IE;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v0, v9, v6}, Labcd/IE;->j6(Ljava/lang/Iterable;Z)Labcd/_D;

    move-result-object v9

    :try_start_51
    iget-object v0, v1, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v0}, Labcd/NH;->j6()I

    move-result v0
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_135

    int-to-long v10, v0

    :goto_58
    const/4 v12, 0x1

    :try_start_59
    invoke-interface {v9}, Labcd/_D;->next()Z

    move-result v0
    :try_end_5d
    .catch Labcd/fD; {:try_start_59 .. :try_end_5d} :catch_103
    .catchall {:try_start_59 .. :try_end_5d} :catchall_135

    if-nez v0, :cond_cc

    invoke-interface {v9}, Labcd/aE;->j6()V

    invoke-direct/range {p0 .. p1}, Labcd/TH;->j6(Labcd/LE;)V

    iget-object v0, v1, Labcd/TH;->Ws:Labcd/TH$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    iput-wide v9, v0, Labcd/TH$c;->Ws:J

    new-instance v0, Labcd/RH;

    invoke-direct {v0, v1}, Labcd/RH;-><init>(Labcd/TH;)V

    invoke-static {v4, v6, v5, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move v0, v5

    :goto_77
    if-lez v0, :cond_91

    add-int/lit8 v5, v0, -0x1

    aget-object v7, v4, v5

    invoke-virtual {v7}, Labcd/MH;->vy()Z

    move-result v7

    if-nez v7, :cond_84

    goto :goto_91

    :cond_84
    aget-object v5, v4, v5

    invoke-virtual {v5}, Labcd/MH;->P8()Z

    move-result v5

    if-nez v5, :cond_8e

    add-int/lit8 v3, v3, -0x1

    :cond_8e
    add-int/lit8 v0, v0, -0x1

    goto :goto_77

    :cond_91
    :goto_91
    if-nez v0, :cond_94

    return-void

    :cond_94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-object v5, Labcd/TH$b;->Hw:Labcd/TH$b;

    int-to-long v9, v3

    invoke-direct {v1, v5, v2, v9, v10}, Labcd/TH;->j6(Labcd/TH$b;Labcd/LE;J)V

    invoke-direct {v1, v2, v4, v0}, Labcd/TH;->j6(Labcd/LE;[Labcd/MH;I)V

    invoke-direct/range {p0 .. p1}, Labcd/TH;->j6(Labcd/LE;)V

    iget-object v2, v1, Labcd/TH;->Ws:Labcd/TH$c;

    iput v3, v2, Labcd/TH$c;->v5:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    iput-wide v9, v2, Labcd/TH$c;->QX:J

    :goto_af
    if-lt v6, v0, :cond_b2

    return-void

    :cond_b2
    aget-object v2, v4, v6

    invoke-virtual {v2}, Labcd/MH;->P8()Z

    move-result v2

    if-nez v2, :cond_c9

    aget-object v2, v4, v6

    invoke-virtual {v2}, Labcd/MH;->BT()Z

    move-result v2

    if-eqz v2, :cond_c9

    iget-object v2, v1, Labcd/TH;->Ws:Labcd/TH$c;

    iget v3, v2, Labcd/TH$c;->Zo:I

    add-int/2addr v3, v12

    iput v3, v2, Labcd/TH$c;->Zo:I

    :cond_c9
    add-int/lit8 v6, v6, 0x1

    goto :goto_af

    :cond_cc
    :try_start_cc
    invoke-interface {v9}, Labcd/_D;->Hw()Labcd/yE;

    move-result-object v0

    check-cast v0, Labcd/MH;

    if-nez v0, :cond_e0

    iget-object v0, v1, Labcd/TH;->v5:Labcd/AE;

    invoke-interface {v9}, Labcd/_D;->DW()Labcd/yE;

    move-result-object v13

    invoke-virtual {v0, v13}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/MH;

    :cond_e0
    invoke-interface {v9}, Labcd/_D;->v5()J

    move-result-wide v13

    cmp-long v15, v10, v13

    if-lez v15, :cond_f6

    const-wide/32 v15, 0x7fffffff

    cmp-long v17, v15, v13

    if-gtz v17, :cond_f0

    goto :goto_f6

    :cond_f0
    const-wide/16 v15, 0x10

    cmp-long v17, v13, v15

    if-gtz v17, :cond_fa

    :cond_f6
    :goto_f6
    invoke-virtual {v0, v12}, Labcd/MH;->j6(Z)V

    goto :goto_fe

    :cond_fa
    long-to-int v14, v13

    invoke-virtual {v0, v14}, Labcd/MH;->Zo(I)V

    :goto_fe
    invoke-interface {v2, v12}, Labcd/LE;->update(I)V

    goto/16 :goto_58

    :catch_103
    move-exception v0

    move-object v13, v0

    invoke-interface {v2, v12}, Labcd/LE;->update(I)V

    iget-boolean v0, v1, Labcd/TH;->gW:Z

    if-eqz v0, :cond_134

    invoke-interface {v9}, Labcd/_D;->Hw()Labcd/yE;

    move-result-object v0

    check-cast v0, Labcd/MH;

    if-eqz v0, :cond_11f

    invoke-virtual {v0}, Labcd/MH;->P8()Z

    move-result v14

    if-eqz v14, :cond_11f

    :goto_11a
    invoke-virtual {v0, v12}, Labcd/MH;->j6(Z)V

    goto/16 :goto_58

    :cond_11f
    iget-object v0, v1, Labcd/TH;->v5:Labcd/AE;

    invoke-virtual {v13}, Labcd/fD;->j6()Labcd/yE;

    move-result-object v14

    invoke-virtual {v0, v14}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/MH;

    if-eqz v0, :cond_134

    invoke-virtual {v0}, Labcd/MH;->P8()Z

    move-result v14

    if-eqz v14, :cond_134

    goto :goto_11a

    :cond_134
    throw v13
    :try_end_135
    .catchall {:try_start_cc .. :try_end_135} :catchall_135

    :catchall_135
    move-exception v0

    invoke-interface {v9}, Labcd/aE;->j6()V

    throw v0

    :cond_13a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/MH;

    invoke-virtual {v7, v6}, Labcd/MH;->Zo(I)V

    aput-object v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_33
.end method

.method private DW(Labcd/LE;Labcd/_F;Ljava/util/Set;Ljava/util/Set;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Labcd/_F;",
            "Ljava/util/Set<",
            "+",
            "Labcd/yE;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v1, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-object v0, Labcd/TH$b;->j6:Labcd/TH$b;

    const-wide/16 v12, 0x0

    invoke-direct {v7, v0, v8, v12, v13}, Labcd/TH;->j6(Labcd/TH$b;Labcd/LE;J)V

    if-nez p4, :cond_1b

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    move-object v2, v0

    goto :goto_1d

    :cond_1b
    move-object/from16 v2, p4

    :goto_1d
    iget-object v0, v7, Labcd/TH;->Ws:Labcd/TH$c;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, v0, Labcd/TH$c;->j6:Ljava/util/Set;

    iget-object v0, v7, Labcd/TH;->Ws:Labcd/TH$c;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, v0, Labcd/TH$c;->DW:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const-string v3, "inCachedPack"

    invoke-virtual {v9, v3}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v15

    const-string v3, "include"

    invoke-virtual {v9, v3}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v6

    const-string v3, "added"

    invoke-virtual {v9, v3}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v5

    new-instance v4, Labcd/hG;

    invoke-direct {v4}, Labcd/hG;-><init>()V

    invoke-virtual {v4, v15}, Labcd/hG;->j6(Labcd/fG;)Z

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Labcd/qG;->j6(Z)V

    invoke-virtual {v9, v6}, Labcd/qG;->j6(Labcd/fG;)V

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v16

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_124

    sget-object v13, Labcd/kG;->DW:Labcd/kG;

    invoke-virtual {v9, v13}, Labcd/_F;->DW(Labcd/kG;)V

    iget-boolean v13, v7, Labcd/TH;->yS:Z

    if-eqz v13, :cond_133

    iget-object v13, v7, Labcd/TH;->J0:Labcd/LH;

    if-eqz v13, :cond_133

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iget-object v12, v7, Labcd/TH;->J0:Labcd/LH;

    invoke-interface {v12}, Labcd/LH;->j6()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_9c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_e0

    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_d9

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_d9

    iget-object v0, v7, Labcd/TH;->VH:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_ca

    :goto_bd
    invoke-direct/range {p0 .. p1}, Labcd/TH;->j6(Labcd/LE;)V

    iget-object v0, v7, Labcd/TH;->Ws:Labcd/TH$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v10

    iput-wide v1, v0, Labcd/TH$c;->J0:J

    return-void

    :cond_ca
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/BH;

    invoke-virtual {v0}, Labcd/BH;->DW()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-interface {v8, v1}, Labcd/LE;->update(I)V

    goto :goto_b7

    :cond_d9
    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v3

    add-int v16, v16, v3

    goto :goto_133

    :cond_e0
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v12

    move-object/from16 v12, v18

    check-cast v12, Labcd/BH;

    invoke-virtual {v12}, Labcd/BH;->FH()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_fe

    invoke-virtual {v12}, Labcd/BH;->FH()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_fe
    invoke-virtual {v12}, Labcd/BH;->FH()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_106
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_111

    move-object/from16 v1, p3

    move-object/from16 v12, v19

    goto :goto_9c

    :cond_111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v20, v1

    move-object/from16 v1, v18

    check-cast v1, Labcd/yE;

    invoke-interface {v14, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v20

    goto :goto_106

    :cond_124
    sget-object v1, Labcd/kG;->FH:Labcd/kG;

    invoke-virtual {v9, v1}, Labcd/_F;->DW(Labcd/kG;)V

    iget-boolean v1, v7, Labcd/TH;->er:Z

    if-eqz v1, :cond_133

    sget-object v1, Labcd/kG;->v5:Labcd/kG;

    const/4 v3, 0x1

    invoke-virtual {v9, v1, v3}, Labcd/_F;->j6(Labcd/kG;Z)V

    :cond_133
    :goto_133
    move/from16 v1, v16

    new-instance v12, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x1

    invoke-virtual {v9, v0, v3}, Labcd/qG;->j6(Ljava/lang/Iterable;Z)Labcd/MF;

    move-result-object v16

    :goto_151
    :try_start_151
    invoke-interface/range {v16 .. v16}, Labcd/MF;->next()Labcd/iG;

    move-result-object v0
    :try_end_155
    .catch Labcd/fD; {:try_start_151 .. :try_end_155} :catch_443
    .catchall {:try_start_151 .. :try_end_155} :catchall_441

    if-nez v0, :cond_3f2

    invoke-interface/range {v16 .. v16}, Labcd/aE;->j6()V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_196

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_188

    const/4 v2, 0x1

    invoke-virtual {v9, v0, v2}, Labcd/qG;->j6(Ljava/lang/Iterable;Z)Labcd/MF;

    move-result-object v1

    :cond_178
    :try_start_178
    invoke-interface {v1}, Labcd/MF;->next()Labcd/iG;

    move-result-object v0
    :try_end_17c
    .catchall {:try_start_178 .. :try_end_17c} :catchall_182

    if-nez v0, :cond_178

    invoke-interface {v1}, Labcd/aE;->j6()V

    goto :goto_196

    :catchall_182
    move-exception v0

    move-object v2, v0

    invoke-interface {v1}, Labcd/aE;->j6()V

    throw v2

    :cond_188
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/lG;

    invoke-virtual {v2}, Labcd/lG;->j3()Labcd/iG;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16d

    :cond_196
    :goto_196
    instance-of v0, v9, Labcd/TF$b;

    if-eqz v0, :cond_1ce

    move-object v0, v9

    check-cast v0, Labcd/TF$b;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1c4

    iget-object v1, v7, Labcd/TH;->ei:Ljava/util/Collection;

    if-eqz v1, :cond_1d8

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1af
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1b6

    goto :goto_1d8

    :cond_1b6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/yE;

    invoke-virtual {v9, v2}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v2

    invoke-virtual {v0, v2}, Labcd/TF$b;->VH(Labcd/iG;)V

    goto :goto_1af

    :cond_1c4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/iG;

    invoke-virtual {v0, v2}, Labcd/TF$b;->Zo(Labcd/iG;)V

    goto :goto_1a1

    :cond_1ce
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3d2

    :cond_1d8
    :goto_1d8
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1dc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3b2

    iget-object v0, v7, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v0}, Labcd/NH;->Zo()I

    move-result v0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Labcd/lK;

    invoke-direct {v1}, Labcd/lK;-><init>()V

    :goto_1f2
    invoke-virtual/range {p2 .. p2}, Labcd/_F;->tp()Labcd/dG;

    move-result-object v2

    if-nez v2, :cond_324

    iget-boolean v0, v7, Labcd/TH;->vy:Z

    if-eqz v0, :cond_212

    invoke-virtual {v1}, Labcd/lK;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_200
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_207

    goto :goto_21f

    :cond_207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/dG;

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2}, Labcd/TH;->j6(Labcd/iG;I)V

    goto :goto_200

    :cond_212
    invoke-virtual {v1}, Labcd/lK;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v0, 0x0

    const/16 v18, 0x0

    :cond_219
    :goto_219
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2a8

    :goto_21f
    iget-boolean v0, v7, Labcd/TH;->er:Z

    if-eqz v0, :cond_269

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_269

    new-instance v0, Labcd/zH;

    iget-object v4, v7, Labcd/TH;->v5:Labcd/AE;

    iget-object v5, v7, Labcd/TH;->Zo:Ljava/util/List;

    iget-object v6, v7, Labcd/TH;->we:Labcd/IE;

    move-object v1, v0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Labcd/zH;-><init>(Labcd/LE;Ljava/util/Set;Labcd/AE;Ljava/util/List;Labcd/IE;)V

    :goto_237
    invoke-virtual/range {p2 .. p2}, Labcd/_F;->yS()Labcd/iG;

    move-result-object v1

    if-nez v1, :cond_23e

    goto :goto_26f

    :cond_23e
    sget-object v2, Labcd/fG;->j6:Labcd/fG;

    invoke-virtual {v1, v2}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v2

    if-eqz v2, :cond_247

    goto :goto_237

    :cond_247
    invoke-direct {v7, v1}, Labcd/TH;->FH(Labcd/YD;)Z

    move-result v2

    if-eqz v2, :cond_24e

    goto :goto_237

    :cond_24e
    invoke-virtual/range {p2 .. p2}, Labcd/_F;->QX()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Labcd/_F;->Ws()[B

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Labcd/_F;->XL()I

    move-result v4

    invoke-virtual {v1}, Labcd/iG;->aM()I

    move-result v5

    invoke-virtual {v0, v5, v3, v4, v2}, Labcd/zH;->j6(I[BII)V

    invoke-direct {v7, v1, v2}, Labcd/TH;->j6(Labcd/iG;I)V

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Labcd/LE;->update(I)V

    goto :goto_237

    :cond_269
    :goto_269
    invoke-virtual/range {p2 .. p2}, Labcd/_F;->yS()Labcd/iG;

    move-result-object v0

    if-nez v0, :cond_28c

    :goto_26f
    iget-object v0, v7, Labcd/TH;->VH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_275
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_27d

    goto/16 :goto_bd

    :cond_27d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/BH;

    invoke-virtual {v0}, Labcd/BH;->DW()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-interface {v8, v0}, Labcd/LE;->update(I)V

    goto :goto_275

    :cond_28c
    sget-object v1, Labcd/fG;->j6:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v1

    if-eqz v1, :cond_295

    goto :goto_269

    :cond_295
    invoke-direct {v7, v0}, Labcd/TH;->FH(Labcd/YD;)Z

    move-result v1

    if-eqz v1, :cond_29c

    goto :goto_269

    :cond_29c
    invoke-virtual/range {p2 .. p2}, Labcd/_F;->QX()I

    move-result v1

    invoke-direct {v7, v0, v1}, Labcd/TH;->j6(Labcd/iG;I)V

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Labcd/LE;->update(I)V

    goto :goto_269

    :cond_2a8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/dG;

    invoke-virtual {v1, v5}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v2

    if-nez v2, :cond_2bd

    invoke-virtual {v1, v5}, Labcd/iG;->j6(Labcd/fG;)V

    const/4 v2, 0x0

    invoke-direct {v7, v1, v2}, Labcd/TH;->j6(Labcd/iG;I)V

    add-int/lit8 v0, v0, 0x1

    :cond_2bd
    const/4 v2, 0x0

    :goto_2be
    invoke-virtual {v1}, Labcd/dG;->lg()I

    move-result v4

    if-lt v2, v4, :cond_304

    if-nez v18, :cond_219

    const/16 v1, 0x1000

    if-ge v1, v0, :cond_219

    iget-object v1, v7, Labcd/TH;->gn:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2d0
    :goto_2d0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2da

    const/16 v18, 0x1

    goto/16 :goto_219

    :cond_2da
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/yE;

    invoke-virtual {v9, v2}, Labcd/qG;->Hw(Labcd/YD;)Labcd/iG;

    move-result-object v2

    instance-of v4, v2, Labcd/dG;

    if-eqz v4, :cond_2d0

    invoke-virtual {v2, v6}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v4

    if-eqz v4, :cond_2d0

    sget-object v4, Labcd/fG;->j6:Labcd/fG;

    invoke-virtual {v2, v4}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v4

    if-nez v4, :cond_2d0

    invoke-virtual {v2, v5}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v4

    if-nez v4, :cond_2d0

    invoke-virtual {v2, v5}, Labcd/iG;->j6(Labcd/fG;)V

    const/4 v4, 0x0

    invoke-direct {v7, v2, v4}, Labcd/TH;->j6(Labcd/iG;I)V

    goto :goto_2d0

    :cond_304
    invoke-virtual {v1, v2}, Labcd/dG;->DW(I)Labcd/dG;

    move-result-object v4

    invoke-virtual {v4, v5}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v12

    if-nez v12, :cond_320

    sget-object v12, Labcd/fG;->j6:Labcd/fG;

    invoke-virtual {v4, v12}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v12

    if-nez v12, :cond_320

    invoke-virtual {v4, v5}, Labcd/iG;->j6(Labcd/fG;)V

    const/4 v12, 0x0

    invoke-direct {v7, v4, v12}, Labcd/TH;->j6(Labcd/iG;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_321

    :cond_320
    const/4 v12, 0x0

    :goto_321
    add-int/lit8 v2, v2, 0x1

    goto :goto_2be

    :cond_324
    const/16 v20, 0x0

    invoke-direct {v7, v2}, Labcd/TH;->FH(Labcd/YD;)Z

    move-result v16

    if-eqz v16, :cond_339

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-wide/from16 v18, v10

    move-object/from16 p4, v12

    const-wide/16 v4, 0x0

    move-object v11, v3

    move-object v12, v6

    goto :goto_371

    :cond_339
    invoke-virtual {v2, v15}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v16

    if-eqz v16, :cond_37d

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-wide/from16 v18, v10

    move-object/from16 v10, v16

    check-cast v10, Labcd/BH;

    invoke-static {v10, v6, v9}, Labcd/TH;->j6(Labcd/BH;Labcd/fG;Labcd/_F;)Z

    move-result v11

    if-eqz v11, :cond_373

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v11, v3

    move-object v3, v4

    move-object/from16 v21, v4

    move-object v4, v12

    move-object/from16 v22, v5

    move-object v5, v13

    move-object/from16 p4, v12

    move-object v12, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Labcd/TH;->j6(Labcd/_F;Labcd/hG;Ljava/util/List;Ljava/util/List;Labcd/BH;)V

    new-instance v1, Labcd/lK;

    invoke-direct {v1}, Labcd/lK;-><init>()V

    invoke-direct/range {p0 .. p1}, Labcd/TH;->j6(Labcd/LE;)V

    sget-object v2, Labcd/TH$b;->j6:Labcd/TH$b;

    const-wide/16 v4, 0x0

    invoke-direct {v7, v2, v8, v4, v5}, Labcd/TH;->j6(Labcd/TH$b;Labcd/LE;J)V

    :cond_371
    :goto_371
    const/4 v6, 0x1

    goto :goto_3a6

    :cond_373
    move-object v11, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 p4, v12

    const-wide/16 v4, 0x0

    goto :goto_388

    :cond_37d
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-wide/from16 v18, v10

    move-object/from16 p4, v12

    const-wide/16 v4, 0x0

    move-object v11, v3

    :goto_388
    move-object v12, v6

    sget-object v3, Labcd/fG;->j6:Labcd/fG;

    invoke-virtual {v2, v3}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v3

    if-eqz v3, :cond_39f

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v3

    if-gt v3, v0, :cond_371

    invoke-virtual {v2}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_371

    :cond_39f
    invoke-virtual {v1, v2}, Labcd/lK;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    invoke-interface {v8, v6}, Labcd/LE;->update(I)V

    :goto_3a6
    move-object v3, v11

    move-object v6, v12

    move-wide/from16 v10, v18

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move-object/from16 v12, p4

    goto/16 :goto_1f2

    :cond_3b2
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-wide/from16 v18, v10

    move-object/from16 p4, v12

    const-wide/16 v4, 0x0

    const/16 v20, 0x0

    move-object v12, v6

    const/4 v6, 0x1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/iG;

    invoke-virtual {v9, v1}, Labcd/_F;->v5(Labcd/iG;)V

    move-object v6, v12

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move-object/from16 v12, p4

    goto/16 :goto_1dc

    :cond_3d2
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-wide/from16 v18, v10

    move-object/from16 p4, v12

    const-wide/16 v4, 0x0

    const/16 v20, 0x0

    move-object v12, v6

    const/4 v6, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iG;

    invoke-virtual {v9, v0}, Labcd/_F;->Hw(Labcd/iG;)V

    move-object v6, v12

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move-object/from16 v12, p4

    goto/16 :goto_1d2

    :cond_3f2
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-wide/from16 v18, v10

    move-object/from16 p4, v12

    const-wide/16 v4, 0x0

    const/16 v20, 0x0

    move-object v12, v6

    const/4 v6, 0x1

    :try_start_400
    invoke-interface {v14, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_409

    invoke-virtual {v0, v15}, Labcd/iG;->j6(Labcd/fG;)V

    :cond_409
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_412

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_412
    .catch Labcd/fD; {:try_start_400 .. :try_end_412} :catch_43d
    .catchall {:try_start_400 .. :try_end_412} :catchall_441

    :cond_412
    move-object/from16 v3, p3

    :try_start_414
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42e

    invoke-virtual {v0, v12}, Labcd/iG;->j6(Labcd/fG;)V
    :try_end_41d
    .catch Labcd/fD; {:try_start_414 .. :try_end_41d} :catch_439
    .catchall {:try_start_414 .. :try_end_41d} :catchall_441

    move-object/from16 v10, p4

    :try_start_41f
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v11, v0, Labcd/lG;

    if-eqz v11, :cond_461

    check-cast v0, Labcd/lG;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_42b
    .catch Labcd/fD; {:try_start_41f .. :try_end_42b} :catch_42c
    .catchall {:try_start_41f .. :try_end_42b} :catchall_441

    goto :goto_461

    :catch_42c
    move-exception v0

    goto :goto_453

    :cond_42e
    move-object v6, v12

    move-wide/from16 v10, v18

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move-object/from16 v12, p4

    goto/16 :goto_151

    :catch_439
    move-exception v0

    :goto_43a
    move-object/from16 v10, p4

    goto :goto_453

    :catch_43d
    move-exception v0

    move-object/from16 v3, p3

    goto :goto_43a

    :catchall_441
    move-exception v0

    goto :goto_46c

    :catch_443
    move-exception v0

    move-object/from16 v3, p3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-wide/from16 v18, v10

    move-object v10, v12

    const-wide/16 v4, 0x0

    const/16 v20, 0x0

    move-object v12, v6

    const/4 v6, 0x1

    :goto_453
    :try_start_453
    iget-boolean v11, v7, Labcd/TH;->gW:Z

    if-eqz v11, :cond_46b

    invoke-virtual {v0}, Labcd/fD;->j6()Labcd/yE;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_46b

    :cond_461
    :goto_461
    move-object v6, v12

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move-object v12, v10

    move-wide/from16 v10, v18

    goto/16 :goto_151

    :cond_46b
    throw v0
    :try_end_46c
    .catchall {:try_start_453 .. :try_end_46c} :catchall_441

    :goto_46c
    invoke-interface/range {v16 .. v16}, Labcd/aE;->j6()V

    goto :goto_471

    :goto_470
    throw v0

    :goto_471
    goto :goto_470
.end method

.method private DW(Labcd/OH;)V
    .registers 4

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Labcd/TH;->j6(Labcd/OH;Ljava/util/List;)V

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Labcd/TH;->j6(Labcd/OH;Ljava/util/List;)V

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Labcd/TH;->j6(Labcd/OH;Ljava/util/List;)V

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Labcd/TH;->j6(Labcd/OH;Ljava/util/List;)V

    return-void
.end method

.method private DW(Labcd/OH;Labcd/MH;)V
    .registers 4

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Labcd/MH;->nw()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p2}, Labcd/MH;->P8()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0, p1, p2}, Labcd/TH;->Hw(Labcd/OH;Labcd/MH;)V

    :cond_11
    return-void
.end method

.method private DW(Labcd/MH;)Z
    .registers 4

    invoke-virtual {p1}, Labcd/MH;->yS()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v1, 0x2

    if-eq p1, v1, :cond_13

    const/4 v1, 0x3

    if-eq p1, v1, :cond_13

    const/4 v1, 0x4

    if-eq p1, v1, :cond_11

    return v0

    :cond_11
    const/4 p1, 0x0

    return p1

    :cond_13
    return v0

    :cond_14
    iget-boolean p1, p0, Labcd/TH;->lg:Z

    return p1
.end method

.method private DW(Labcd/YD;)[B
    .registers 4

    iget-object v0, p0, Labcd/TH;->J8:Labcd/NH;

    iget-object v1, p0, Labcd/TH;->we:Labcd/IE;

    invoke-static {v0, v1, p1}, Labcd/TH;->j6(Labcd/NH;Labcd/IE;Labcd/YD;)[B

    move-result-object p1

    return-object p1
.end method

.method private FH(Labcd/LE;)V
    .registers 13

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Labcd/lK;->size()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    add-long/2addr v2, v4

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-virtual {v0}, Labcd/lK;->size()I

    move-result v0

    int-to-long v5, v0

    add-long/2addr v2, v5

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v5, 0x3

    aget-object v0, v0, v5

    invoke-virtual {v0}, Labcd/lK;->size()I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v2, v6

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v6, 0x4

    aget-object v0, v0, v6

    invoke-virtual {v0}, Labcd/lK;->size()I

    move-result v0

    int-to-long v7, v0

    add-long/2addr v2, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-object v0, Labcd/TH$b;->FH:Labcd/TH$b;

    invoke-direct {p0, v0, p1, v2, v3}, Labcd/TH;->j6(Labcd/TH$b;Labcd/LE;J)V

    const-wide/16 v9, 0x1000

    cmp-long v0, v2, v9

    if-gtz v0, :cond_83

    new-instance v0, Labcd/lK;

    long-to-int v3, v2

    invoke-direct {v0, v3}, Labcd/lK;-><init>(I)V

    iget-object v2, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v2, v2, v6

    invoke-virtual {v0, v2}, Labcd/lK;->FH(Labcd/lK;)V

    iget-object v2, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Labcd/lK;->FH(Labcd/lK;)V

    iget-object v2, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Labcd/lK;->FH(Labcd/lK;)V

    iget-object v2, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v2, v2, v5

    invoke-virtual {v0, v2}, Labcd/lK;->FH(Labcd/lK;)V

    invoke-direct {p0, p1, v0}, Labcd/TH;->j6(Labcd/LE;Ljava/util/List;)V

    iget-boolean v0, p0, Labcd/TH;->BT:Z

    if-eqz v0, :cond_9f

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v1

    invoke-static {v0}, Labcd/TH;->j6(Ljava/util/List;)V

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v4

    invoke-static {v0}, Labcd/TH;->j6(Ljava/util/List;)V

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v5

    invoke-static {v0}, Labcd/TH;->j6(Ljava/util/List;)V

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v6

    invoke-static {v0}, Labcd/TH;->j6(Ljava/util/List;)V

    goto :goto_9f

    :cond_83
    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v6

    invoke-direct {p0, p1, v0}, Labcd/TH;->j6(Labcd/LE;Ljava/util/List;)V

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Labcd/TH;->j6(Labcd/LE;Ljava/util/List;)V

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v4

    invoke-direct {p0, p1, v0}, Labcd/TH;->j6(Labcd/LE;Ljava/util/List;)V

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v5

    invoke-direct {p0, p1, v0}, Labcd/TH;->j6(Labcd/LE;Ljava/util/List;)V

    :cond_9f
    :goto_9f
    invoke-direct {p0, p1}, Labcd/TH;->j6(Labcd/LE;)V

    iget-object p1, p0, Labcd/TH;->Ws:Labcd/TH$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v7

    iput-wide v0, p1, Labcd/TH$c;->J8:J

    return-void
.end method

.method private FH(Labcd/OH;Labcd/MH;)V
    .registers 8

    invoke-virtual {p2}, Labcd/MH;->a8()Labcd/MH;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/TH;->DW(Labcd/OH;Labcd/MH;)V

    invoke-virtual {p1}, Labcd/OH;->Zo()V

    invoke-virtual {p1}, Labcd/OH;->v5()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Labcd/CI;->j6(J)V

    invoke-virtual {p2}, Labcd/MH;->KD()Labcd/CH$a;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_2b

    invoke-virtual {p2}, Labcd/MH;->U2()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, p2, v1, v2}, Labcd/OH;->j6(Labcd/MH;J)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_2b
    invoke-direct {p0, p2}, Labcd/TH;->j6(Labcd/MH;)Labcd/RK$c;

    move-result-object v0

    invoke-virtual {v0}, Labcd/RK;->DW()J

    move-result-wide v1

    invoke-virtual {p1, p2, v1, v2}, Labcd/OH;->j6(Labcd/MH;J)V

    invoke-direct {p0}, Labcd/TH;->gn()Ljava/util/zip/Deflater;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->reset()V

    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, p1, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Labcd/RK;->j6(Ljava/io/OutputStream;Labcd/LE;)V

    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    iget-object v0, p0, Labcd/TH;->aM:Labcd/TH$c$a;

    iget-wide v1, v0, Labcd/TH$c$a;->DW:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Labcd/TH$c$a;->DW:J

    iget-wide v1, v0, Labcd/TH$c$a;->Zo:J

    invoke-virtual {p1}, Labcd/OH;->v5()J

    move-result-wide v3

    invoke-virtual {p2}, Labcd/CI;->getOffset()J

    move-result-wide p1

    sub-long/2addr v3, p1

    add-long/2addr v1, v3

    iput-wide v1, v0, Labcd/TH$c$a;->Zo:J

    return-void
.end method

.method private FH(Labcd/YD;)Z
    .registers 9

    iget-object v0, p0, Labcd/TH;->u7:[Labcd/bH;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Labcd/TH;->tp:Labcd/bH;

    invoke-virtual {v0, p1}, Labcd/bH;->FH(Labcd/YD;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    return v2

    :cond_10
    iget-object v0, p0, Labcd/TH;->u7:[Labcd/bH;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_14
    if-lt v4, v3, :cond_17

    return v1

    :cond_17
    aget-object v5, v0, v4

    invoke-virtual {v5, p1}, Labcd/bH;->FH(Labcd/YD;)Z

    move-result v6

    if-eqz v6, :cond_22

    iput-object v5, p0, Labcd/TH;->tp:Labcd/bH;

    return v2

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_14
.end method

.method private Hw(Labcd/OH;Labcd/MH;)V
    .registers 10

    invoke-virtual {p2}, Labcd/MH;->sh()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/TH;->a8:Z

    invoke-virtual {p2}, Labcd/MH;->j3()V

    invoke-virtual {p2}, Labcd/MH;->Mr()V

    iget-object v0, p0, Labcd/TH;->J0:Labcd/LH;

    sget-object v1, Labcd/vE;->j6:Labcd/vE;

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Labcd/LH;->j6(Labcd/TH;Labcd/LE;Ljava/lang/Iterable;)V

    :cond_1a
    invoke-virtual {p2}, Labcd/MH;->SI()V

    :goto_1d
    invoke-virtual {p2}, Labcd/MH;->ei()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p2}, Labcd/MH;->BT()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-direct {p0, p1, p2}, Labcd/TH;->FH(Labcd/OH;Labcd/MH;)V

    goto :goto_30

    :cond_2d
    invoke-direct {p0, p1, p2}, Labcd/TH;->v5(Labcd/OH;Labcd/MH;)V

    :goto_30
    invoke-virtual {p1}, Labcd/OH;->j6()V

    invoke-virtual {p1}, Labcd/OH;->DW()I

    move-result p1

    invoke-virtual {p2, p1}, Labcd/CI;->DW(I)V

    return-void

    :cond_3b
    invoke-virtual {p2}, Labcd/MH;->a8()Labcd/MH;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/TH;->DW(Labcd/OH;Labcd/MH;)V

    invoke-virtual {p2}, Labcd/MH;->nw()Z

    move-result v0

    if-eqz v0, :cond_49

    return-void

    :cond_49
    invoke-virtual {p1}, Labcd/OH;->Zo()V

    invoke-virtual {p1}, Labcd/OH;->v5()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Labcd/CI;->j6(J)V

    :try_start_53
    iget-object v0, p0, Labcd/TH;->J0:Labcd/LH;

    iget-boolean v1, p0, Labcd/TH;->rN:Z

    invoke-interface {v0, p1, p2, v1}, Labcd/LH;->j6(Labcd/OH;Labcd/MH;Z)V

    invoke-virtual {p1}, Labcd/OH;->j6()V

    invoke-virtual {p1}, Labcd/OH;->DW()I

    move-result v0

    invoke-virtual {p2, v0}, Labcd/CI;->DW(I)V

    iget-object v0, p0, Labcd/TH;->aM:Labcd/TH$c$a;

    iget-wide v1, v0, Labcd/TH$c$a;->FH:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Labcd/TH$c$a;->FH:J

    invoke-virtual {p2}, Labcd/MH;->BT()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v0, p0, Labcd/TH;->aM:Labcd/TH$c$a;

    iget-wide v1, v0, Labcd/TH$c$a;->Hw:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Labcd/TH$c$a;->Hw:J

    iget-object v0, p0, Labcd/TH;->aM:Labcd/TH$c$a;

    iget-wide v1, v0, Labcd/TH$c$a;->Zo:J

    invoke-virtual {p1}, Labcd/OH;->v5()J

    move-result-wide v3

    invoke-virtual {p2}, Labcd/CI;->getOffset()J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Labcd/TH$c$a;->Zo:J
    :try_end_8a
    .catch Labcd/tD; {:try_start_53 .. :try_end_8a} :catch_8b

    :cond_8a
    return-void

    :catch_8b
    move-exception v0

    invoke-virtual {p2}, Labcd/CI;->getOffset()J

    move-result-wide v1

    invoke-virtual {p1}, Labcd/OH;->v5()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_b0

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Labcd/CI;->j6(J)V

    invoke-virtual {p2}, Labcd/MH;->j3()V

    invoke-virtual {p2}, Labcd/MH;->Mr()V

    iget-object v0, p0, Labcd/TH;->J0:Labcd/LH;

    sget-object v1, Labcd/vE;->j6:Labcd/vE;

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Labcd/LH;->j6(Labcd/TH;Labcd/LE;Ljava/lang/Iterable;)V

    goto/16 :goto_1d

    :cond_b0
    new-instance p1, Labcd/YC;

    const-string v1, ""

    invoke-direct {p1, p2, v1}, Labcd/YC;-><init>(Labcd/yE;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_bc

    :goto_bb
    throw p1

    :goto_bc
    goto :goto_bb
.end method

.method private gn()Ljava/util/zip/Deflater;
    .registers 3

    iget-object v0, p0, Labcd/TH;->EQ:Ljava/util/zip/Deflater;

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/zip/Deflater;

    iget-object v1, p0, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v1}, Labcd/NH;->DW()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    iput-object v0, p0, Labcd/TH;->EQ:Ljava/util/zip/Deflater;

    :cond_11
    iget-object v0, p0, Labcd/TH;->EQ:Ljava/util/zip/Deflater;

    return-object v0
.end method

.method private j6([Labcd/MH;II)I
    .registers 6

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object p3, v0, p3

    invoke-virtual {p3}, Labcd/lK;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    return p2

    :cond_f
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/MH;

    invoke-virtual {v0}, Labcd/MH;->vy()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_8

    :cond_1c
    invoke-virtual {v0}, Labcd/MH;->BT()Z

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_8

    :cond_23
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/MH;->Zo(I)V

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_8
.end method

.method static synthetic j6(Labcd/TH;)Labcd/NH;
    .registers 1

    iget-object p0, p0, Labcd/TH;->J8:Labcd/NH;

    return-object p0
.end method

.method private j6(Labcd/MH;)Labcd/RK$c;
    .registers 5

    new-instance v0, Labcd/EH;

    invoke-virtual {p1}, Labcd/MH;->lg()Labcd/yE;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/TH;->DW(Labcd/YD;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/EH;-><init>([B)V

    invoke-direct {p0, p1}, Labcd/TH;->DW(Labcd/YD;)[B

    move-result-object p1

    new-instance v1, Labcd/RK$c;

    array-length v2, p1

    invoke-direct {v1, v2}, Labcd/RK$c;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Labcd/EH;->j6(Ljava/io/OutputStream;[B)V

    return-object v1
.end method

.method private j6(Labcd/LE;)V
    .registers 2

    invoke-interface {p1}, Labcd/LE;->j6()V

    return-void
.end method

.method private j6(Labcd/LE;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/List<",
            "Labcd/MH;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/TH;->BT:Z

    iget-object v0, p0, Labcd/TH;->J0:Labcd/LH;

    invoke-interface {v0, p0, p1, p2}, Labcd/LH;->j6(Labcd/TH;Labcd/LE;Ljava/lang/Iterable;)V

    iget-boolean p1, p0, Labcd/TH;->BT:Z

    if-eqz p1, :cond_f

    invoke-static {p2}, Labcd/TH;->j6(Ljava/util/List;)V

    :cond_f
    return-void
.end method

.method private j6(Labcd/LE;[Labcd/MH;I)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    iget-object v2, v1, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v2}, Labcd/NH;->tp()I

    move-result v2

    if-nez v2, :cond_18

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    :cond_18
    move v12, v2

    const/4 v13, 0x0

    const/4 v2, 0x1

    if-le v12, v2, :cond_151

    iget-object v2, v1, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v2}, Labcd/NH;->Zo()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-gt v11, v2, :cond_29

    goto/16 :goto_151

    :cond_29
    new-instance v14, Labcd/VH;

    iget-object v2, v1, Labcd/TH;->J8:Labcd/NH;

    invoke-direct {v14, v2}, Labcd/VH;-><init>(Labcd/NH;)V

    new-instance v15, Labcd/lF;

    invoke-direct {v15, v0}, Labcd/lF;-><init>(Labcd/LE;)V

    mul-int/lit8 v0, v12, 0x2

    div-int v2, v11, v0

    iget-object v3, v1, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v3}, Labcd/NH;->Zo()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_4b

    iget-object v2, v1, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v2}, Labcd/NH;->Zo()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    :cond_4b
    move v9, v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_52
    if-lt v0, v11, :cond_10c

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v15, v0}, Labcd/lF;->j6(I)V

    iget-object v0, v1, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v0}, Labcd/NH;->VH()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    instance-of v0, v2, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_74

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2, v15, v8, v3}, Labcd/TH;->j6(Ljava/util/concurrent/ExecutorService;Labcd/lF;Ljava/util/List;Ljava/util/List;)V

    goto :goto_c1

    :cond_74
    if-nez v2, :cond_b4

    invoke-static {v12}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const-wide/16 v4, 0x3c

    :try_start_7c
    invoke-direct {v1, v2, v15, v8, v3}, Labcd/TH;->j6(Ljava/util/concurrent/ExecutorService;Labcd/lF;Ljava/util/List;Ljava/util/List;)V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_98

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_82
    :try_start_82
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_88
    .catch Ljava/lang/InterruptedException; {:try_start_82 .. :try_end_88} :catch_8b

    if-eqz v0, :cond_82

    goto :goto_c1

    :catch_8b
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->packingCancelledDuringObjectsWriting:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_98
    move-exception v0

    move-object v3, v0

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :goto_9d
    :try_start_9d
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_a3
    .catch Ljava/lang/InterruptedException; {:try_start_9d .. :try_end_a3} :catch_a7

    if-nez v0, :cond_a6

    goto :goto_9d

    :cond_a6
    throw v3

    :catch_a7
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->packingCancelledDuringObjectsWriting:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_fd

    :try_start_be
    invoke-virtual {v15}, Labcd/lF;->FH()V
    :try_end_c1
    .catch Ljava/lang/InterruptedException; {:try_start_be .. :try_end_c1} :catch_f0

    :goto_c1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ef

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    instance-of v2, v0, Ljava/lang/Error;

    if-nez v2, :cond_ec

    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_e9

    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_dc

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_dc
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :cond_e9
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_ec
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_ef
    return-void

    :catch_f0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->packingCancelledDuringObjectsWriting:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_fd
    new-instance v0, Labcd/SH;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/HH;

    invoke-direct {v0, v1, v5, v3}, Labcd/SH;-><init>(Labcd/TH;Labcd/HH;Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_b8

    :cond_10c
    sub-int v2, v11, v0

    if-ge v2, v9, :cond_113

    :goto_110
    move/from16 v16, v2

    goto :goto_12d

    :cond_113
    add-int v2, v0, v9

    :goto_115
    if-lt v2, v11, :cond_118

    goto :goto_12b

    :cond_118
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v10, v3

    aget-object v4, v10, v2

    invoke-virtual {v3}, Labcd/MH;->er()I

    move-result v3

    invoke-virtual {v4}, Labcd/MH;->er()I

    move-result v4

    if-ne v3, v4, :cond_12b

    add-int/lit8 v2, v2, 0x1

    goto :goto_115

    :cond_12b
    :goto_12b
    sub-int/2addr v2, v0

    goto :goto_110

    :goto_12d
    new-instance v7, Labcd/HH;

    iget-object v3, v1, Labcd/TH;->J8:Labcd/NH;

    iget-object v4, v1, Labcd/TH;->we:Labcd/IE;

    move-object v2, v7

    move-object v5, v14

    move-object v6, v15

    move-object v13, v7

    move/from16 v7, v16

    move/from16 v17, v12

    move-object v12, v8

    move v8, v0

    move/from16 v18, v9

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Labcd/HH;-><init>(Labcd/NH;Labcd/IE;Labcd/CH;Labcd/lF;II[Labcd/MH;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v0, v0, v16

    move-object v8, v12

    move/from16 v12, v17

    move/from16 v9, v18

    const/4 v13, 0x0

    goto/16 :goto_52

    :cond_151
    :goto_151
    new-instance v2, Labcd/CH;

    iget-object v3, v1, Labcd/TH;->J8:Labcd/NH;

    invoke-direct {v2, v3}, Labcd/CH;-><init>(Labcd/NH;)V

    new-instance v3, Labcd/IH;

    iget-object v4, v1, Labcd/TH;->J8:Labcd/NH;

    iget-object v5, v1, Labcd/TH;->we:Labcd/IE;

    invoke-direct {v3, v4, v2, v5}, Labcd/IH;-><init>(Labcd/NH;Labcd/CH;Labcd/IE;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v10, v2, v11}, Labcd/IH;->j6(Labcd/LE;[Labcd/MH;II)V

    return-void
.end method

.method private j6(Labcd/OH;)V
    .registers 3

    invoke-virtual {p1}, Labcd/OH;->Hw()[B

    move-result-object v0

    iput-object v0, p0, Labcd/TH;->Mr:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private j6(Labcd/OH;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/OH;",
            "Ljava/util/List<",
            "Labcd/MH;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Labcd/TH;->Ws:Labcd/TH$c;

    iget-object v0, v0, Labcd/TH$c;->aM:[Labcd/TH$c$a;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/MH;

    invoke-virtual {v1}, Labcd/MH;->yS()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Labcd/TH;->aM:Labcd/TH$c$a;

    invoke-virtual {p1}, Labcd/OH;->v5()J

    move-result-wide v0

    iget-object v2, p0, Labcd/TH;->J0:Labcd/LH;

    if-eqz v2, :cond_26

    invoke-interface {v2, p1, p2}, Labcd/LH;->j6(Labcd/OH;Ljava/util/List;)V

    goto :goto_30

    :cond_26
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_46

    :goto_30
    iget-object v2, p0, Labcd/TH;->aM:Labcd/TH$c$a;

    iget-wide v3, v2, Labcd/TH$c$a;->v5:J

    invoke-virtual {p1}, Labcd/OH;->v5()J

    move-result-wide v5

    sub-long/2addr v5, v0

    add-long/2addr v3, v5

    iput-wide v3, v2, Labcd/TH$c$a;->v5:J

    iget-object p1, p0, Labcd/TH;->aM:Labcd/TH$c$a;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p1, Labcd/TH$c$a;->j6:J

    return-void

    :cond_46
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/MH;

    invoke-virtual {p1, v3}, Labcd/OH;->j6(Labcd/MH;)V

    goto :goto_2a
.end method

.method private j6(Labcd/TH$b;Labcd/LE;J)V
    .registers 8

    iget-object v0, p0, Labcd/TH;->QX:Labcd/TH$a;

    invoke-static {v0, p1}, Labcd/TH$a;->j6(Labcd/TH$a;Labcd/TH$b;)V

    invoke-static {}, Labcd/TH;->j6()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_48

    const/4 v2, 0x3

    if-eq v0, v2, :cond_41

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3a

    const/4 v2, 0x5

    if-ne v0, v2, :cond_25

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->writingObjects:Ljava/lang/String;

    goto :goto_55

    :cond_25
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p3

    iget-object p3, p3, Lorg/eclipse/jgit/JGitText;->illegalPackingPhase:Ljava/lang/String;

    new-array p4, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p4, v0

    invoke-static {p3, p4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3a
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->compressingObjects:Ljava/lang/String;

    goto :goto_55

    :cond_41
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->searchForReuse:Ljava/lang/String;

    goto :goto_55

    :cond_48
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->searchForSizes:Ljava/lang/String;

    goto :goto_55

    :cond_4f
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->countingObjects:Ljava/lang/String;

    :goto_55
    long-to-int p4, p3

    invoke-interface {p2, p1, p4}, Labcd/LE;->j6(Ljava/lang/String;I)V

    return-void
.end method

.method private j6(Labcd/_F;Labcd/hG;Ljava/util/List;Ljava/util/List;Labcd/BH;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/_F;",
            "Labcd/hG;",
            "Ljava/util/List<",
            "Labcd/iG;",
            ">;",
            "Ljava/util/List<",
            "Labcd/iG;",
            ">;",
            "Labcd/BH;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Labcd/TH;->VH:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p5}, Labcd/BH;->FH()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_d
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4d

    const/4 p5, 0x1

    invoke-virtual {p0, p5}, Labcd/TH;->Hw(Z)V

    invoke-virtual {p1, p2}, Labcd/qG;->j6(Labcd/hG;)V

    sget-object p2, Labcd/kG;->FH:Labcd/kG;

    invoke-virtual {p1, p2}, Labcd/_F;->DW(Labcd/kG;)V

    sget-object p2, Labcd/kG;->v5:Labcd/kG;

    invoke-virtual {p1, p2, p5}, Labcd/_F;->j6(Labcd/kG;Z)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_43

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_32
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_39

    return-void

    :cond_39
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Labcd/iG;

    invoke-virtual {p1, p3}, Labcd/_F;->v5(Labcd/iG;)V

    goto :goto_32

    :cond_43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/iG;

    invoke-virtual {p1, p2}, Labcd/_F;->Hw(Labcd/iG;)V

    goto :goto_28

    :cond_4d
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    invoke-virtual {p1, v0}, Labcd/qG;->Hw(Labcd/YD;)Labcd/iG;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method private j6(Labcd/iG;I)V
    .registers 4

    iget-object v0, p0, Labcd/TH;->J0:Labcd/LH;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Labcd/LH;->j6(Labcd/iG;)Labcd/MH;

    move-result-object v0

    goto :goto_e

    :cond_9
    new-instance v0, Labcd/MH;

    invoke-direct {v0, p1}, Labcd/MH;-><init>(Labcd/iG;)V

    :goto_e
    invoke-virtual {v0, p2}, Labcd/MH;->v5(I)V

    iget-object p2, p0, Labcd/TH;->Hw:[Labcd/lK;

    invoke-virtual {p1}, Labcd/iG;->aM()I

    move-result p1

    aget-object p1, p2, p1

    invoke-virtual {p1, v0}, Labcd/lK;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Labcd/TH;->v5:Labcd/AE;

    invoke-virtual {p1, v0}, Labcd/AE;->j6(Labcd/AE$a;)V

    return-void
.end method

.method private static j6(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labcd/MH;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-lt v1, v0, :cond_19

    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_f

    return-void

    :cond_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8

    :cond_19
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/MH;

    invoke-virtual {v3}, Labcd/MH;->P8()Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_2d

    :cond_26
    if-eq v2, v1, :cond_2b

    invoke-interface {p0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private j6(Ljava/util/concurrent/ExecutorService;Labcd/lF;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Labcd/lF;",
            "Ljava/util/List<",
            "Labcd/HH;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_56

    :try_start_13
    invoke-virtual {p2}, Labcd/lF;->FH()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_21

    return-void

    :cond_21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Future;
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_27} :catch_34

    :try_start_27
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_27 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_34

    goto :goto_1a

    :catch_2b
    move-exception p2

    :try_start_2c
    invoke-virtual {p2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_33} :catch_34

    goto :goto_1a

    :catch_34
    move-exception p1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Future;

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_39

    :cond_4a
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->packingCancelledDuringObjectsWriting:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_56
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/HH;

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method private static j6(Labcd/BH;Labcd/fG;Labcd/_F;)Z
    .registers 4

    invoke-virtual {p0}, Labcd/BH;->FH()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    invoke-virtual {p2, v0}, Labcd/qG;->Hw(Labcd/YD;)Labcd/iG;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0
.end method

.method static j6(Labcd/NH;Labcd/IE;Labcd/YD;)[B
    .registers 3

    invoke-virtual {p1, p2}, Labcd/IE;->FH(Labcd/YD;)Labcd/FE;

    move-result-object p1

    invoke-virtual {p0}, Labcd/NH;->j6()I

    move-result p0

    invoke-virtual {p1, p0}, Labcd/FE;->DW(I)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/TH;->FH:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/TH$b;->values()[Labcd/TH$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/TH$b;->Hw:Labcd/TH$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/TH$b;->j6:Labcd/TH$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v1, Labcd/TH$b;->FH:Labcd/TH$b;

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
    sget-object v1, Labcd/TH$b;->DW:Labcd/TH$b;

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
    sget-object v1, Labcd/TH$b;->v5:Labcd/TH$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_41} :catch_42

    goto :goto_43

    :catch_42
    move-exception v1

    :goto_43
    sput-object v0, Labcd/TH;->FH:[I

    return-object v0
.end method

.method private u7()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Labcd/MH;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/TH;->j3:Ljava/util/List;

    if-nez v0, :cond_5b

    new-instance v0, Labcd/lK;

    iget-object v1, p0, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Labcd/lK;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    iget-object v3, p0, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Labcd/lK;->size()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v5, 0x3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Labcd/lK;->size()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v6, 0x4

    aget-object v3, v3, v6

    invoke-virtual {v3}, Labcd/lK;->size()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {v0, v1}, Labcd/lK;-><init>(I)V

    iput-object v0, p0, Labcd/TH;->j3:Ljava/util/List;

    iget-object v1, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Labcd/TH;->j3:Ljava/util/List;

    iget-object v1, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v1, v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Labcd/TH;->j3:Ljava/util/List;

    iget-object v1, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v1, v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Labcd/TH;->j3:Ljava/util/List;

    iget-object v1, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v1, v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Labcd/TH;->j3:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_5b
    iget-object v0, p0, Labcd/TH;->j3:Ljava/util/List;

    return-object v0
.end method

.method private v5(Labcd/OH;Labcd/MH;)V
    .registers 7

    invoke-direct {p0}, Labcd/TH;->gn()Ljava/util/zip/Deflater;

    move-result-object v0

    iget-object v1, p0, Labcd/TH;->we:Labcd/IE;

    invoke-virtual {p2}, Labcd/MH;->yS()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;

    move-result-object v1

    invoke-virtual {p1}, Labcd/OH;->Zo()V

    invoke-virtual {p1}, Labcd/OH;->v5()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Labcd/CI;->j6(J)V

    invoke-virtual {v1}, Labcd/FE;->DW()J

    move-result-wide v2

    invoke-virtual {p1, p2, v2, v3}, Labcd/OH;->j6(Labcd/MH;J)V

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    new-instance p2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {p2, p1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    invoke-virtual {v1, p2}, Labcd/FE;->j6(Ljava/io/OutputStream;)V

    invoke-virtual {p2}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    return-void
.end method


# virtual methods
.method public DW(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/TH;->lg:Z

    return-void
.end method

.method public FH()Labcd/yE;
    .registers 7

    const/16 v0, 0x14

    new-array v1, v0, [B

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v2

    invoke-direct {p0}, Labcd/TH;->u7()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Labcd/yE;->j6([B)Labcd/yE;

    move-result-object v0

    return-object v0

    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/MH;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Labcd/YD;->DW([BI)V

    invoke-virtual {v2, v1, v5, v0}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_10
.end method

.method public FH(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/TH;->rN:Z

    return-void
.end method

.method public Hw()J
    .registers 6

    iget-object v0, p0, Labcd/TH;->Ws:Labcd/TH$c;

    iget-wide v0, v0, Labcd/TH$c;->VH:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_4f

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Labcd/lK;->size()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    iget-object v2, p0, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Labcd/lK;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Labcd/lK;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v2}, Labcd/lK;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Labcd/TH;->VH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_43

    return-wide v0

    :cond_43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/BH;

    invoke-virtual {v3}, Labcd/BH;->DW()J

    move-result-wide v3

    add-long/2addr v0, v3

    goto :goto_3c

    :cond_4f
    return-wide v0
.end method

.method public Hw(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/TH;->er:Z

    return-void
.end method

.method public VH()V
    .registers 3

    iget-object v0, p0, Labcd/TH;->we:Labcd/IE;

    invoke-virtual {v0}, Labcd/IE;->FH()V

    iget-object v0, p0, Labcd/TH;->EQ:Ljava/util/zip/Deflater;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/TH;->EQ:Ljava/util/zip/Deflater;

    :cond_f
    sget-object v0, Labcd/TH;->j6:Ljava/util/Map;

    iget-object v1, p0, Labcd/TH;->XL:Ljava/lang/ref/WeakReference;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public Zo()Z
    .registers 2

    iget-boolean v0, p0, Labcd/TH;->U2:Z

    return v0
.end method

.method public j6(ILjava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/TH;->vy:Z

    iput p1, p0, Labcd/TH;->P8:I

    iput-object p2, p0, Labcd/TH;->ei:Ljava/util/Collection;

    return-void
.end method

.method public j6(Labcd/LE;Labcd/LE;Ljava/io/OutputStream;)V
    .registers 16

    if-nez p1, :cond_4

    sget-object p1, Labcd/vE;->j6:Labcd/vE;

    :cond_4
    if-nez p2, :cond_8

    sget-object p2, Labcd/vE;->j6:Labcd/vE;

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/TH;->u7:[Labcd/bH;

    iput-object v0, p0, Labcd/TH;->tp:Labcd/bH;

    iget-object v0, p0, Labcd/TH;->J0:Labcd/LH;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Labcd/TH;->a8:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v0}, Labcd/NH;->J8()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Labcd/TH;->VH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    instance-of v2, p1, Labcd/eE;

    if-eqz v2, :cond_44

    if-eqz v0, :cond_3a

    iget-object v2, p0, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v2}, Labcd/NH;->we()Z

    move-result v2

    if-eqz v2, :cond_3a

    const-wide/16 v2, 0x1f4

    goto :goto_3c

    :cond_3a
    const-wide/16 v2, 0x3e8

    :goto_3c
    move-object v4, p1

    check-cast v4, Labcd/eE;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3, v5}, Labcd/eE;->j6(JLjava/util/concurrent/TimeUnit;)V

    :cond_44
    if-eqz v0, :cond_49

    invoke-direct {p0, p1}, Labcd/TH;->FH(Labcd/LE;)V

    :cond_49
    iget-object v0, p0, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v0}, Labcd/NH;->we()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-direct {p0, p1}, Labcd/TH;->DW(Labcd/LE;)V

    :cond_54
    new-instance p1, Labcd/OH;

    invoke-direct {p1, p2, p3, p0}, Labcd/OH;-><init>(Labcd/LE;Ljava/io/OutputStream;Labcd/TH;)V

    invoke-virtual {p0}, Labcd/TH;->Hw()J

    move-result-wide v2

    iget-object p3, p0, Labcd/TH;->Ws:Labcd/TH$c;

    iput-wide v2, p3, Labcd/TH$c;->VH:J

    sget-object p3, Labcd/TH$b;->v5:Labcd/TH$b;

    invoke-direct {p0, p3, p2, v2, v3}, Labcd/TH;->j6(Labcd/TH$b;Labcd/LE;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 p3, 0x2

    invoke-virtual {p1, p3, v2, v3}, Labcd/OH;->j6(IJ)V

    invoke-virtual {p1}, Labcd/OH;->flush()V

    invoke-direct {p0, p1}, Labcd/TH;->DW(Labcd/OH;)V

    iget-object p3, p0, Labcd/TH;->Zo:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_84

    iget-object p3, p0, Labcd/TH;->VH:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8c

    :cond_84
    iget-object p3, p0, Labcd/TH;->Ws:Labcd/TH$c;

    iget-object p3, p3, Labcd/TH$c;->aM:[Labcd/TH$c$a;

    array-length v0, p3

    const/4 v2, 0x0

    :goto_8a
    if-lt v2, v0, :cond_11b

    :cond_8c
    iget-object p3, p0, Labcd/TH;->VH:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_92
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_f1

    invoke-direct {p0, p1}, Labcd/TH;->j6(Labcd/OH;)V

    invoke-virtual {p1}, Labcd/OH;->flush()V

    iget-object p3, p0, Labcd/TH;->Ws:Labcd/TH$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    iput-wide v2, p3, Labcd/TH$c;->XL:J

    iget-object p3, p0, Labcd/TH;->Ws:Labcd/TH$c;

    invoke-virtual {p1}, Labcd/OH;->v5()J

    move-result-wide v2

    iput-wide v2, p3, Labcd/TH$c;->EQ:J

    iget-object p1, p0, Labcd/TH;->Ws:Labcd/TH$c;

    iget-object p3, p0, Labcd/TH;->VH:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p1, Labcd/TH$c;->FH:Ljava/util/Collection;

    iget-object p1, p0, Labcd/TH;->Ws:Labcd/TH$c;

    iget p3, p0, Labcd/TH;->P8:I

    iput p3, p1, Labcd/TH$c;->Hw:I

    iget-object p3, p1, Labcd/TH$c;->aM:[Labcd/TH$c$a;

    array-length v0, p3

    :goto_c2
    if-lt v1, v0, :cond_cd

    iget-object p1, p0, Labcd/TH;->we:Labcd/IE;

    invoke-virtual {p1}, Labcd/IE;->FH()V

    invoke-direct {p0, p2}, Labcd/TH;->j6(Labcd/LE;)V

    return-void

    :cond_cd
    aget-object p1, p3, v1

    if-nez p1, :cond_d2

    goto :goto_ee

    :cond_d2
    iget-wide v2, p1, Labcd/TH$c$a;->DW:J

    iget-wide v4, p1, Labcd/TH$c$a;->Hw:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Labcd/TH$c$a;->DW:J

    iget-object v2, p0, Labcd/TH;->Ws:Labcd/TH$c;

    iget-wide v6, v2, Labcd/TH$c;->u7:J

    iget-wide v8, p1, Labcd/TH$c$a;->FH:J

    add-long/2addr v6, v8

    iput-wide v6, v2, Labcd/TH$c;->u7:J

    iget-wide v6, v2, Labcd/TH$c;->tp:J

    add-long/2addr v6, v4

    iput-wide v6, v2, Labcd/TH$c;->tp:J

    iget-wide v3, v2, Labcd/TH$c;->gn:J

    iget-wide v5, p1, Labcd/TH$c$a;->DW:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Labcd/TH$c;->gn:J

    :goto_ee
    add-int/lit8 v1, v1, 0x1

    goto :goto_c2

    :cond_f1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Labcd/BH;

    invoke-virtual {p3}, Labcd/BH;->j6()J

    move-result-wide v6

    iget-object v0, p0, Labcd/TH;->Ws:Labcd/TH$c;

    iget-wide v8, v0, Labcd/TH$c;->u7:J

    invoke-virtual {p3}, Labcd/BH;->DW()J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, v0, Labcd/TH$c;->u7:J

    iget-object v0, p0, Labcd/TH;->Ws:Labcd/TH$c;

    iget-wide v8, v0, Labcd/TH$c;->tp:J

    add-long/2addr v8, v6

    iput-wide v8, v0, Labcd/TH$c;->tp:J

    iget-wide v8, v0, Labcd/TH$c;->gn:J

    add-long/2addr v8, v6

    iput-wide v8, v0, Labcd/TH$c;->gn:J

    iget-object v0, p0, Labcd/TH;->J0:Labcd/LH;

    iget-boolean v2, p0, Labcd/TH;->rN:Z

    invoke-interface {v0, p1, p3, v2}, Labcd/LH;->j6(Labcd/OH;Labcd/BH;Z)V

    goto/16 :goto_92

    :cond_11b
    aget-object v3, p3, v2

    if-nez v3, :cond_120

    goto :goto_129

    :cond_120
    iget-object v6, p0, Labcd/TH;->Ws:Labcd/TH$c;

    iget-wide v7, v6, Labcd/TH$c;->we:J

    iget-wide v9, v3, Labcd/TH$c$a;->v5:J

    add-long/2addr v7, v9

    iput-wide v7, v6, Labcd/TH$c;->we:J

    :goto_129
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8a
.end method

.method public j6(Labcd/LE;Labcd/_F;Ljava/util/Set;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Labcd/_F;",
            "Ljava/util/Set<",
            "+",
            "Labcd/yE;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_4

    sget-object p1, Labcd/vE;->j6:Labcd/vE;

    :cond_4
    iget-boolean v0, p0, Labcd/TH;->vy:Z

    if-eqz v0, :cond_15

    instance-of v0, p2, Labcd/TF$b;

    if-nez v0, :cond_15

    new-instance p2, Labcd/TF$b;

    iget-object v0, p0, Labcd/TH;->we:Labcd/IE;

    iget v1, p0, Labcd/TH;->P8:I

    invoke-direct {p2, v0, v1}, Labcd/TF$b;-><init>(Labcd/IE;I)V

    :cond_15
    invoke-direct {p0, p1, p2, p3, p4}, Labcd/TH;->DW(Labcd/LE;Labcd/_F;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public j6(Labcd/LE;Ljava/util/Set;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Set<",
            "+",
            "Labcd/yE;",
            ">;",
            "Ljava/util/Set<",
            "+",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Labcd/TH;->vy:Z

    if-eqz v0, :cond_e

    new-instance v0, Labcd/TF$b;

    iget-object v1, p0, Labcd/TH;->we:Labcd/IE;

    iget v2, p0, Labcd/TH;->P8:I

    invoke-direct {v0, v1, v2}, Labcd/TF$b;-><init>(Labcd/IE;I)V

    goto :goto_15

    :cond_e
    new-instance v0, Labcd/_F;

    iget-object v1, p0, Labcd/TH;->we:Labcd/IE;

    invoke-direct {v0, v1}, Labcd/_F;-><init>(Labcd/IE;)V

    :goto_15
    invoke-virtual {p0, p1, v0, p2, p3}, Labcd/TH;->j6(Labcd/LE;Labcd/_F;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public j6(Labcd/MH;Labcd/UH;)V
    .registers 7

    invoke-virtual {p2}, Labcd/UH;->DW()I

    move-result v0

    iget-object v1, p0, Labcd/TH;->VH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_45

    invoke-virtual {p1}, Labcd/MH;->P8()Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    :cond_14
    const/4 v1, 0x0

    if-ne v0, v2, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    if-nez v0, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    or-int/2addr v1, v3

    if-eqz v1, :cond_45

    iget-object v1, p0, Labcd/TH;->VH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_45

    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/BH;

    invoke-virtual {v3, p1, p2}, Labcd/BH;->j6(Labcd/MH;Labcd/UH;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {p1}, Labcd/MH;->ro()V

    invoke-virtual {p1}, Labcd/MH;->j3()V

    invoke-virtual {p1}, Labcd/MH;->Mr()V

    iput-boolean v2, p0, Labcd/TH;->BT:Z

    return-void

    :cond_45
    :goto_45
    if-nez v0, :cond_7c

    iget-boolean v1, p0, Labcd/TH;->a8:Z

    if-eqz v1, :cond_7c

    invoke-direct {p0, p1}, Labcd/TH;->DW(Labcd/MH;)Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-virtual {p2}, Labcd/UH;->j6()Labcd/yE;

    move-result-object v0

    iget-object v1, p0, Labcd/TH;->v5:Labcd/AE;

    invoke-virtual {v1, v0}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v1

    check-cast v1, Labcd/MH;

    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Labcd/MH;->P8()Z

    move-result v2

    if-nez v2, :cond_6c

    invoke-virtual {p1, v1}, Labcd/MH;->DW(Labcd/yE;)V

    :goto_68
    invoke-virtual {p1}, Labcd/MH;->cn()V

    goto :goto_ad

    :cond_6c
    iget-boolean v2, p0, Labcd/TH;->er:Z

    if-eqz v2, :cond_a7

    if-eqz v1, :cond_a7

    invoke-virtual {v1}, Labcd/MH;->P8()Z

    move-result v1

    if-eqz v1, :cond_a7

    invoke-virtual {p1, v0}, Labcd/MH;->DW(Labcd/yE;)V

    goto :goto_68

    :cond_7c
    if-ne v0, v2, :cond_a7

    iget-object v0, p0, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v0}, Labcd/NH;->J8()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-virtual {p2}, Labcd/UH;->FH()I

    move-result v0

    invoke-virtual {p1}, Labcd/MH;->ei()Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-virtual {p1}, Labcd/MH;->BT()Z

    move-result v1

    if-nez v1, :cond_9d

    invoke-virtual {p1}, Labcd/MH;->gW()I

    move-result v1

    if-gt v1, v0, :cond_9d

    return-void

    :cond_9d
    invoke-virtual {p1}, Labcd/MH;->j3()V

    invoke-virtual {p1}, Labcd/MH;->cn()V

    invoke-virtual {p1, v0}, Labcd/MH;->Zo(I)V

    goto :goto_ad

    :cond_a7
    invoke-virtual {p1}, Labcd/MH;->j3()V

    invoke-virtual {p1}, Labcd/MH;->Mr()V

    :goto_ad
    invoke-virtual {p1, p2}, Labcd/MH;->j6(Labcd/UH;)V

    return-void
.end method

.method j6(Labcd/OH;Labcd/MH;)V
    .registers 4

    invoke-virtual {p2}, Labcd/MH;->nw()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, p1, p2}, Labcd/TH;->Hw(Labcd/OH;Labcd/MH;)V

    :cond_9
    return-void
.end method

.method public j6(Labcd/iG;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/TH;->FH(Labcd/YD;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/TH;->j6(Labcd/iG;I)V

    :cond_a
    return-void
.end method

.method public j6(Ljava/io/OutputStream;)V
    .registers 8

    iget-object v0, p0, Labcd/TH;->VH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Labcd/TH;->u7()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v3}, Labcd/NH;->gn()I

    move-result v3

    if-gtz v3, :cond_1d

    invoke-static {p1, v2}, Labcd/gH;->j6(Ljava/io/OutputStream;Ljava/util/List;)Labcd/gH;

    move-result-object p1

    goto :goto_21

    :cond_1d
    invoke-static {p1, v3}, Labcd/gH;->j6(Ljava/io/OutputStream;I)Labcd/gH;

    move-result-object p1

    :goto_21
    iget-object v3, p0, Labcd/TH;->Mr:[B

    invoke-virtual {p1, v2, v3}, Labcd/gH;->j6(Ljava/util/List;[B)V

    iget-object p1, p0, Labcd/TH;->Ws:Labcd/TH$c;

    iget-wide v2, p1, Labcd/TH$c;->XL:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p1, Labcd/TH$c;->XL:J

    return-void

    :cond_33
    new-instance p1, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->cachedPacksPreventsIndexCreation:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Labcd/TH;->gn:Ljava/util/Set;

    return-void
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/TH;->U2:Z

    return-void
.end method

.method public j6(Labcd/YD;)Z
    .registers 3

    iget-object v0, p0, Labcd/TH;->v5:Labcd/AE;

    invoke-virtual {v0, p1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object p1

    check-cast p1, Labcd/MH;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Labcd/MH;->P8()Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public v5()Labcd/TH$c;
    .registers 2

    iget-object v0, p0, Labcd/TH;->Ws:Labcd/TH$c;

    return-object v0
.end method

.method public v5(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/TH;->yS:Z

    return-void
.end method
