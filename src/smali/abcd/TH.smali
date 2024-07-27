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
            "Ljava/lang/Iterable",
            "<",
            "Labcd/TH;",
            ">;"
        }
    .end annotation
.end field

.field private static FH:[I

.field private static final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
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
            "LlK",
            "<",
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
            "Ljava/util/List",
            "<",
            "Labcd/BH;",
            ">;"
        }
    .end annotation
.end field

.field private final Ws:Labcd/TH$c;

.field private final XL:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Labcd/TH;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
            "Ljava/util/Collection",
            "<+",
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
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field

.field private j3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
            "LAE",
            "<",
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

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Labcd/lK;

    iput-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    new-instance v1, Labcd/lK;

    invoke-direct {v1}, Labcd/lK;-><init>()V

    aput-object v1, v0, v3

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    new-instance v1, Labcd/lK;

    invoke-direct {v1}, Labcd/lK;-><init>()V

    aput-object v1, v0, v4

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v1, 0x3

    new-instance v2, Labcd/lK;

    invoke-direct {v2}, Labcd/lK;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v1, 0x4

    new-instance v2, Labcd/lK;

    invoke-direct {v2}, Labcd/lK;-><init>()V

    aput-object v2, v0, v1

    new-instance v0, Labcd/AE;

    invoke-direct {v0}, Labcd/AE;-><init>()V

    iput-object v0, p0, Labcd/TH;->v5:Labcd/AE;

    new-instance v0, Labcd/lK;

    invoke-direct {v0}, Labcd/lK;-><init>()V

    iput-object v0, p0, Labcd/TH;->Zo:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/TH;->VH:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Labcd/TH;->gn:Ljava/util/Set;

    iput-boolean v3, p0, Labcd/TH;->gW:Z

    iput-object p1, p0, Labcd/TH;->J8:Labcd/NH;

    iput-object p2, p0, Labcd/TH;->we:Labcd/IE;

    instance-of v0, p2, Labcd/LH;

    if-eqz v0, :cond_0

    check-cast p2, Labcd/LH;

    iput-object p2, p0, Labcd/TH;->J0:Labcd/LH;

    :goto_0
    invoke-virtual {p1}, Labcd/NH;->EQ()Z

    move-result v0

    iput-boolean v0, p0, Labcd/TH;->U2:Z

    invoke-virtual {p1}, Labcd/NH;->J0()Z

    move-result v0

    iput-boolean v0, p0, Labcd/TH;->a8:Z

    iput-boolean v3, p0, Labcd/TH;->rN:Z

    new-instance v0, Labcd/TH$c;

    invoke-direct {v0}, Labcd/TH$c;-><init>()V

    iput-object v0, p0, Labcd/TH;->Ws:Labcd/TH$c;

    new-instance v0, Labcd/TH$a;

    invoke-direct {v0, p0}, Labcd/TH$a;-><init>(Labcd/TH;)V

    iput-object v0, p0, Labcd/TH;->QX:Labcd/TH$a;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Labcd/TH;->XL:Ljava/lang/ref/WeakReference;

    sget-object v0, Labcd/TH;->j6:Ljava/util/Map;

    iget-object v1, p0, Labcd/TH;->XL:Ljava/lang/ref/WeakReference;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Labcd/TH;->J0:Labcd/LH;

    goto :goto_0
.end method

.method static synthetic DW()Ljava/util/Map;
    .registers 1

    sget-object v0, Labcd/TH;->j6:Ljava/util/Map;

    return-object v0
.end method

.method private DW(Labcd/LE;)V
    .registers 16

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Labcd/lK;->size()I

    move-result v0

    iget-object v1, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Labcd/lK;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Labcd/TH;->Zo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v4, v0, [Labcd/MH;

    invoke-direct {p0, v4, v3, v2}, Labcd/TH;->j6([Labcd/MH;II)I

    move-result v0

    invoke-direct {p0, v4, v0, v5}, Labcd/TH;->j6([Labcd/MH;II)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/TH;->Zo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v0, Labcd/TH$b;->DW:Labcd/TH$b;

    int-to-long v8, v1

    invoke-direct {p0, v0, p1, v8, v9}, Labcd/TH;->j6(Labcd/TH$b;Labcd/LE;J)V

    iget-object v0, p0, Labcd/TH;->we:Labcd/IE;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Labcd/IE;->j6(Ljava/lang/Iterable;Z)Labcd/_D;

    move-result-object v5

    :try_start_0
    iget-object v0, p0, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v0}, Labcd/NH;->j6()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v8, v0

    :goto_1
    :try_start_1
    invoke-interface {v5}, Labcd/_D;->next()Z
    :try_end_1
    .catch Labcd/fD; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {v5}, Labcd/aE;->j6()V

    invoke-direct {p0, p1}, Labcd/TH;->j6(Labcd/LE;)V

    iget-object v0, p0, Labcd/TH;->Ws:Labcd/TH$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    iput-wide v6, v0, Labcd/TH$c;->Ws:J

    new-instance v0, Labcd/RH;

    invoke-direct {v0, p0}, Labcd/RH;-><init>(Labcd/TH;)V

    invoke-static {v4, v3, v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move v0, v2

    :goto_2
    if-lez v1, :cond_2

    add-int/lit8 v2, v1, -0x1

    aget-object v5, v4, v2

    invoke-virtual {v5}, Labcd/MH;->vy()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_2
    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v2, Labcd/TH$b;->Hw:Labcd/TH$b;

    int-to-long v8, v0

    invoke-direct {p0, v2, p1, v8, v9}, Labcd/TH;->j6(Labcd/TH$b;Labcd/LE;J)V

    invoke-direct {p0, p1, v4, v1}, Labcd/TH;->j6(Labcd/LE;[Labcd/MH;I)V

    invoke-direct {p0, p1}, Labcd/TH;->j6(Labcd/LE;)V

    iget-object v2, p0, Labcd/TH;->Ws:Labcd/TH$c;

    iput v0, v2, Labcd/TH$c;->v5:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    iput-wide v6, v2, Labcd/TH$c;->QX:J

    move v0, v3

    :goto_3
    if-ge v0, v1, :cond_0

    aget-object v2, v4, v0

    invoke-virtual {v2}, Labcd/MH;->P8()Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, v4, v0

    invoke-virtual {v2}, Labcd/MH;->BT()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Labcd/TH;->Ws:Labcd/TH$c;

    iget v3, v2, Labcd/TH$c;->Zo:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Labcd/TH$c;->Zo:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    aget-object v2, v4, v2

    invoke-virtual {v2}, Labcd/MH;->P8()Z

    move-result v2

    if-nez v2, :cond_5

    add-int/lit8 v0, v0, -0x1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    :try_start_2
    invoke-interface {v5}, Labcd/_D;->Hw()Labcd/yE;

    move-result-object v0

    check-cast v0, Labcd/MH;

    if-nez v0, :cond_7

    iget-object v0, p0, Labcd/TH;->v5:Labcd/AE;

    invoke-interface {v5}, Labcd/_D;->DW()Labcd/yE;

    move-result-object v10

    invoke-virtual {v0, v10}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/MH;

    :cond_7
    invoke-interface {v5}, Labcd/_D;->v5()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-lez v12, :cond_8

    const-wide/32 v12, 0x7fffffff

    cmp-long v12, v12, v10

    if-gtz v12, :cond_9

    :cond_8
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Labcd/MH;->j6(Z)V

    :goto_4
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Labcd/LE;->update(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v5}, Labcd/aE;->j6()V

    throw v0

    :cond_9
    const-wide/16 v12, 0x10

    cmp-long v12, v10, v12

    if-gtz v12, :cond_a

    const/4 v10, 0x1

    :try_start_3
    invoke-virtual {v0, v10}, Labcd/MH;->j6(Z)V

    goto :goto_4

    :cond_a
    long-to-int v10, v10

    invoke-virtual {v0, v10}, Labcd/MH;->Zo(I)V

    goto :goto_4

    :catch_0
    move-exception v10

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Labcd/LE;->update(I)V

    iget-boolean v0, p0, Labcd/TH;->gW:Z

    if-eqz v0, :cond_c

    invoke-interface {v5}, Labcd/_D;->Hw()Labcd/yE;

    move-result-object v0

    check-cast v0, Labcd/MH;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Labcd/MH;->P8()Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Labcd/MH;->j6(Z)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Labcd/TH;->v5:Labcd/AE;

    invoke-virtual {v10}, Labcd/fD;->j6()Labcd/yE;

    move-result-object v11

    invoke-virtual {v0, v11}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/MH;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Labcd/MH;->P8()Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Labcd/MH;->j6(Z)V

    goto/16 :goto_1

    :cond_c
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/MH;

    invoke-virtual {v0, v3}, Labcd/MH;->Zo(I)V

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method

.method private DW(Labcd/LE;Labcd/_F;Ljava/util/Set;Ljava/util/Set;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Labcd/_F;",
            "Ljava/util/Set",
            "<+",
            "Labcd/yE;",
            ">;",
            "Ljava/util/Set",
            "<+",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sget-object v4, Labcd/TH$b;->j6:Labcd/TH$b;

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1, v6, v7}, Labcd/TH;->j6(Labcd/TH$b;Labcd/LE;J)V

    if-nez p4, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p4

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->Ws:Labcd/TH$c;

    new-instance v5, Ljava/util/HashSet;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, v4, Labcd/TH$c;->j6:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->Ws:Labcd/TH$c;

    new-instance v5, Ljava/util/HashSet;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, v4, Labcd/TH$c;->DW:Ljava/util/Set;

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p3

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p4

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const-string v4, "inCachedPack"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v16

    const-string v4, "include"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v9

    const-string v4, "added"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v11

    new-instance v12, Labcd/hG;

    invoke-direct {v12}, Labcd/hG;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Labcd/hG;->j6(Labcd/fG;)Z

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Labcd/qG;->j6(Z)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Labcd/qG;->j6(Labcd/fG;)V

    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Labcd/kG;->DW:Labcd/kG;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Labcd/_F;->DW(Labcd/kG;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Labcd/TH;->yS:Z

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->J0:Labcd/LH;

    if-eqz v4, :cond_28

    new-instance v7, Ljava/util/HashSet;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->J0:Labcd/LH;

    invoke-interface {v4}, Labcd/LH;->j6()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->VH:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct/range {p0 .. p1}, Labcd/TH;->j6(Labcd/LE;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->Ws:Labcd/TH$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v14

    iput-wide v6, v4, Labcd/TH$c;->J0:J

    :goto_1
    return-void

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/BH;

    invoke-virtual {v4}, Labcd/BH;->DW()J

    move-result-wide v6

    long-to-int v4, v6

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Labcd/LE;->update(I)V

    goto :goto_0

    :cond_3
    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v4

    add-int/2addr v4, v6

    :goto_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v4}, Labcd/qG;->j6(Ljava/lang/Iterable;Z)Labcd/MF;

    move-result-object v6

    :cond_4
    :goto_3
    :try_start_0
    invoke-interface {v6}, Labcd/MF;->next()Labcd/iG;
    :try_end_0
    .catch Labcd/fD; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    if-nez v4, :cond_23

    invoke-interface {v6}, Labcd/aE;->j6()V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v4}, Labcd/qG;->j6(Ljava/lang/Iterable;Z)Labcd/MF;

    move-result-object v4

    :cond_5
    :try_start_1
    invoke-interface {v4}, Labcd/MF;->next()Labcd/iG;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    if-nez v5, :cond_5

    invoke-interface {v4}, Labcd/aE;->j6()V

    :cond_6
    move-object/from16 v0, p2

    instance-of v4, v0, Labcd/TF$b;

    if-eqz v4, :cond_10

    move-object/from16 v4, p2

    check-cast v4, Labcd/TF$b;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/TH;->ei:Ljava/util/Collection;

    if-eqz v5, :cond_27

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_e

    move-object v10, v9

    move-object v6, v12

    :goto_7
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v4}, Labcd/NH;->Zo()I

    move-result v12

    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Labcd/lK;

    invoke-direct {v4}, Labcd/lK;-><init>()V

    :cond_7
    :goto_9
    invoke-virtual/range {p2 .. p2}, Labcd/_F;->tp()Labcd/dG;

    move-result-object v5

    if-nez v5, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v5, v0, Labcd/TH;->vy:Z

    if-eqz v5, :cond_12

    invoke-virtual {v4}, Labcd/lK;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_11

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Labcd/TH;->er:Z

    if-eqz v4, :cond_18

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    new-instance v4, Labcd/zH;

    move-object/from16 v0, p0

    iget-object v7, v0, Labcd/TH;->v5:Labcd/AE;

    move-object/from16 v0, p0

    iget-object v8, v0, Labcd/TH;->Zo:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v9, v0, Labcd/TH;->we:Labcd/IE;

    move-object/from16 v5, p1

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Labcd/zH;-><init>(Labcd/LE;Ljava/util/Set;Labcd/AE;Ljava/util/List;Labcd/IE;)V

    :cond_9
    :goto_b
    invoke-virtual/range {p2 .. p2}, Labcd/_F;->yS()Labcd/iG;

    move-result-object v5

    if-nez v5, :cond_16

    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->VH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_19

    invoke-direct/range {p0 .. p1}, Labcd/TH;->j6(Labcd/LE;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->Ws:Labcd/TH$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v14

    iput-wide v6, v4, Labcd/TH$c;->J0:J

    goto/16 :goto_1

    :cond_a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/BH;

    invoke-virtual {v4}, Labcd/BH;->FH()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Labcd/BH;->FH()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {v4}, Labcd/BH;->FH()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_e
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/yE;

    invoke-interface {v13, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_c
    sget-object v4, Labcd/kG;->FH:Labcd/kG;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Labcd/_F;->DW(Labcd/kG;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Labcd/TH;->er:Z

    if-eqz v4, :cond_28

    sget-object v4, Labcd/kG;->v5:Labcd/kG;

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Labcd/_F;->j6(Labcd/kG;Z)V

    move v4, v6

    goto/16 :goto_2

    :catchall_0
    move-exception v5

    invoke-interface {v4}, Labcd/aE;->j6()V

    throw v5

    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/lG;

    invoke-virtual {v4}, Labcd/lG;->j3()Labcd/iG;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/yE;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v5

    invoke-virtual {v4, v5}, Labcd/TF$b;->VH(Labcd/iG;)V

    goto/16 :goto_6

    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/iG;

    invoke-virtual {v4, v5}, Labcd/TF$b;->Zo(Labcd/iG;)V

    goto/16 :goto_5

    :cond_10
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_22

    move-object v10, v9

    move-object v6, v12

    goto/16 :goto_7

    :cond_11
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/dG;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Labcd/TH;->j6(Labcd/iG;I)V

    goto/16 :goto_a

    :cond_12
    invoke-virtual {v4}, Labcd/lK;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v5, v4

    :cond_13
    :goto_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/dG;

    invoke-virtual {v4, v11}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v7

    if-nez v7, :cond_14

    invoke-virtual {v4, v11}, Labcd/iG;->j6(Labcd/fG;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Labcd/TH;->j6(Labcd/iG;I)V

    add-int/lit8 v6, v6, 0x1

    :cond_14
    const/4 v7, 0x0

    :goto_11
    invoke-virtual {v4}, Labcd/dG;->lg()I

    move-result v9

    if-lt v7, v9, :cond_1c

    if-nez v5, :cond_13

    const/16 v4, 0x1000

    if-ge v4, v6, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->gn:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_15
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1b

    const/4 v4, 0x1

    move v5, v4

    goto :goto_10

    :cond_16
    sget-object v6, Labcd/fG;->j6:Labcd/fG;

    invoke-virtual {v5, v6}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v6

    if-nez v6, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Labcd/TH;->FH(Labcd/YD;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual/range {p2 .. p2}, Labcd/_F;->QX()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Labcd/_F;->Ws()[B

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Labcd/_F;->XL()I

    move-result v8

    invoke-virtual {v5}, Labcd/iG;->aM()I

    move-result v9

    invoke-virtual {v4, v9, v7, v8, v6}, Labcd/zH;->j6(I[BII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Labcd/TH;->j6(Labcd/iG;I)V

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Labcd/LE;->update(I)V

    goto/16 :goto_b

    :cond_17
    sget-object v5, Labcd/fG;->j6:Labcd/fG;

    invoke-virtual {v4, v5}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v5

    if-eqz v5, :cond_1a

    :cond_18
    :goto_13
    invoke-virtual/range {p2 .. p2}, Labcd/_F;->yS()Labcd/iG;

    move-result-object v4

    if-nez v4, :cond_17

    goto/16 :goto_c

    :cond_19
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/BH;

    invoke-virtual {v4}, Labcd/BH;->DW()J

    move-result-wide v6

    long-to-int v4, v6

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Labcd/LE;->update(I)V

    goto/16 :goto_d

    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Labcd/TH;->FH(Labcd/YD;)Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual/range {p2 .. p2}, Labcd/_F;->QX()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Labcd/TH;->j6(Labcd/iG;I)V

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Labcd/LE;->update(I)V

    goto :goto_13

    :cond_1b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/yE;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Labcd/qG;->Hw(Labcd/YD;)Labcd/iG;

    move-result-object v4

    instance-of v7, v4, Labcd/dG;

    if-eqz v7, :cond_15

    invoke-virtual {v4, v10}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v7

    if-eqz v7, :cond_15

    sget-object v7, Labcd/fG;->j6:Labcd/fG;

    invoke-virtual {v4, v7}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v7

    if-nez v7, :cond_15

    invoke-virtual {v4, v11}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v7

    if-nez v7, :cond_15

    invoke-virtual {v4, v11}, Labcd/iG;->j6(Labcd/fG;)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Labcd/TH;->j6(Labcd/iG;I)V

    goto/16 :goto_12

    :cond_1c
    invoke-virtual {v4, v7}, Labcd/dG;->DW(I)Labcd/dG;

    move-result-object v9

    invoke-virtual {v9, v11}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v12

    if-nez v12, :cond_1d

    sget-object v12, Labcd/fG;->j6:Labcd/fG;

    invoke-virtual {v9, v12}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v12

    if-nez v12, :cond_1d

    invoke-virtual {v9, v11}, Labcd/iG;->j6(Labcd/fG;)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Labcd/TH;->j6(Labcd/iG;I)V

    add-int/lit8 v6, v6, 0x1

    :cond_1d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_11

    :cond_1e
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Labcd/TH;->FH(Labcd/YD;)Z

    move-result v9

    if-nez v9, :cond_7

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v9

    if-eqz v9, :cond_1f

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Labcd/BH;

    move-object/from16 v0, p2

    invoke-static {v9, v10, v0}, Labcd/TH;->j6(Labcd/BH;Labcd/fG;Labcd/_F;)Z

    move-result v18

    if-eqz v18, :cond_1f

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v9}, Labcd/TH;->j6(Labcd/_F;Labcd/hG;Ljava/util/List;Ljava/util/List;Labcd/BH;)V

    new-instance v4, Labcd/lK;

    invoke-direct {v4}, Labcd/lK;-><init>()V

    invoke-direct/range {p0 .. p1}, Labcd/TH;->j6(Labcd/LE;)V

    sget-object v5, Labcd/TH$b;->j6:Labcd/TH$b;

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-direct {v0, v5, v1, v2, v3}, Labcd/TH;->j6(Labcd/TH$b;Labcd/LE;J)V

    goto/16 :goto_9

    :cond_1f
    sget-object v9, Labcd/fG;->j6:Labcd/fG;

    invoke-virtual {v5, v9}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v9

    if-eqz v9, :cond_20

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v9

    if-gt v9, v12, :cond_7

    invoke-virtual {v5}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_20
    invoke-virtual {v4, v5}, Labcd/lK;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Labcd/LE;->update(I)V

    goto/16 :goto_9

    :cond_21
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/iG;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Labcd/_F;->v5(Labcd/iG;)V

    goto/16 :goto_8

    :cond_22
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/iG;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Labcd/_F;->Hw(Labcd/iG;)V

    goto/16 :goto_f

    :cond_23
    :try_start_2
    invoke-interface {v13, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Labcd/iG;->j6(Labcd/fG;)V

    :cond_24
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Labcd/fD; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_25
    :try_start_3
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v4, v9}, Labcd/iG;->j6(Labcd/fG;)V
    :try_end_3
    .catch Labcd/fD; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v10, v4, Labcd/lG;

    if-eqz v10, :cond_4

    check-cast v4, Labcd/lG;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Labcd/fD; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_3

    :catch_0
    move-exception v4

    :goto_14
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v10, v0, Labcd/TH;->gW:Z

    if-eqz v10, :cond_26

    invoke-virtual {v4}, Labcd/fD;->j6()Labcd/yE;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    :cond_26
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    invoke-interface {v6}, Labcd/aE;->j6()V

    throw v4

    :catch_1
    move-exception v4

    goto :goto_14

    :catch_2
    move-exception v4

    goto :goto_14

    :catch_3
    move-exception v4

    goto :goto_14

    :cond_27
    move-object v10, v9

    move-object v6, v12

    goto/16 :goto_7

    :cond_28
    move v4, v6

    goto/16 :goto_2
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

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Labcd/MH;->nw()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Labcd/MH;->P8()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Labcd/TH;->Hw(Labcd/OH;Labcd/MH;)V

    :cond_0
    return-void
.end method

.method private DW(Labcd/MH;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Labcd/MH;->yS()I

    move-result v1

    if-eq v1, v0, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Labcd/TH;->lg:Z

    goto :goto_0
.end method

.method private DW(Labcd/YD;)[B
    .registers 4

    iget-object v0, p0, Labcd/TH;->J8:Labcd/NH;

    iget-object v1, p0, Labcd/TH;->we:Labcd/IE;

    invoke-static {v0, v1, p1}, Labcd/TH;->j6(Labcd/NH;Labcd/IE;Labcd/YD;)[B

    move-result-object v0

    return-object v0
.end method

.method private FH(Labcd/LE;)V
    .registers 12

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Labcd/lK;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    add-long/2addr v0, v2

    iget-object v2, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Labcd/lK;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Labcd/lK;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Labcd/lK;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Labcd/TH$b;->FH:Labcd/TH$b;

    invoke-direct {p0, v4, p1, v0, v1}, Labcd/TH;->j6(Labcd/TH$b;Labcd/LE;J)V

    const-wide/16 v4, 0x1000

    cmp-long v4, v0, v4

    if-gtz v4, :cond_1

    new-instance v4, Labcd/lK;

    long-to-int v0, v0

    invoke-direct {v4, v0}, Labcd/lK;-><init>(I)V

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v9

    invoke-virtual {v4, v0}, Labcd/lK;->FH(Labcd/lK;)V

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v6

    invoke-virtual {v4, v0}, Labcd/lK;->FH(Labcd/lK;)V

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v7

    invoke-virtual {v4, v0}, Labcd/lK;->FH(Labcd/lK;)V

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v8

    invoke-virtual {v4, v0}, Labcd/lK;->FH(Labcd/lK;)V

    invoke-direct {p0, p1, v4}, Labcd/TH;->j6(Labcd/LE;Ljava/util/List;)V

    iget-boolean v0, p0, Labcd/TH;->BT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v6

    invoke-static {v0}, Labcd/TH;->j6(Ljava/util/List;)V

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v7

    invoke-static {v0}, Labcd/TH;->j6(Ljava/util/List;)V

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v8

    invoke-static {v0}, Labcd/TH;->j6(Ljava/util/List;)V

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v9

    invoke-static {v0}, Labcd/TH;->j6(Ljava/util/List;)V

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Labcd/TH;->j6(Labcd/LE;)V

    iget-object v0, p0, Labcd/TH;->Ws:Labcd/TH$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    iput-wide v2, v0, Labcd/TH$c;->J8:J

    return-void

    :cond_1
    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v9

    invoke-direct {p0, p1, v0}, Labcd/TH;->j6(Labcd/LE;Ljava/util/List;)V

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v6

    invoke-direct {p0, p1, v0}, Labcd/TH;->j6(Labcd/LE;Ljava/util/List;)V

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v7

    invoke-direct {p0, p1, v0}, Labcd/TH;->j6(Labcd/LE;Ljava/util/List;)V

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, v8

    invoke-direct {p0, p1, v0}, Labcd/TH;->j6(Labcd/LE;Ljava/util/List;)V

    goto :goto_0
.end method

.method private FH(Labcd/OH;Labcd/MH;)V
    .registers 11

    invoke-virtual {p2}, Labcd/MH;->a8()Labcd/MH;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/TH;->DW(Labcd/OH;Labcd/MH;)V

    invoke-virtual {p1}, Labcd/OH;->Zo()V

    invoke-virtual {p1}, Labcd/OH;->v5()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Labcd/CI;->j6(J)V

    invoke-virtual {p2}, Labcd/MH;->KD()Labcd/CH$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Labcd/MH;->U2()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, p2, v2, v3}, Labcd/OH;->j6(Labcd/MH;J)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Labcd/TH;->j6(Labcd/MH;)Labcd/RK$c;

    move-result-object v0

    invoke-virtual {v0}, Labcd/RK;->DW()J

    move-result-wide v2

    invoke-virtual {p1, p2, v2, v3}, Labcd/OH;->j6(Labcd/MH;J)V

    invoke-direct {p0}, Labcd/TH;->gn()Ljava/util/zip/Deflater;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->reset()V

    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, p1, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Labcd/RK;->j6(Ljava/io/OutputStream;Labcd/LE;)V

    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    iget-object v0, p0, Labcd/TH;->aM:Labcd/TH$c$a;

    iget-wide v2, v0, Labcd/TH$c$a;->DW:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Labcd/TH$c$a;->DW:J

    iget-wide v2, v0, Labcd/TH$c$a;->Zo:J

    invoke-virtual {p1}, Labcd/OH;->v5()J

    move-result-wide v4

    invoke-virtual {p2}, Labcd/CI;->getOffset()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Labcd/TH$c$a;->Zo:J

    goto :goto_0
.end method

.method private FH(Labcd/YD;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Labcd/TH;->u7:[Labcd/bH;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Labcd/TH;->tp:Labcd/bH;

    invoke-virtual {v2, p1}, Labcd/bH;->FH(Labcd/YD;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Labcd/TH;->u7:[Labcd/bH;

    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {v5, p1}, Labcd/bH;->FH(Labcd/YD;)Z

    move-result v6

    if-eqz v6, :cond_3

    iput-object v5, p0, Labcd/TH;->tp:Labcd/bH;

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private Hw(Labcd/OH;Labcd/MH;)V
    .registers 13

    const-wide/16 v8, 0x1

    invoke-virtual {p2}, Labcd/MH;->sh()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/TH;->a8:Z

    invoke-virtual {p2}, Labcd/MH;->j3()V

    invoke-virtual {p2}, Labcd/MH;->Mr()V

    iget-object v0, p0, Labcd/TH;->J0:Labcd/LH;

    sget-object v1, Labcd/vE;->j6:Labcd/vE;

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Labcd/LH;->j6(Labcd/TH;Labcd/LE;Ljava/lang/Iterable;)V

    :cond_0
    invoke-virtual {p2}, Labcd/MH;->SI()V

    :goto_0
    invoke-virtual {p2}, Labcd/MH;->ei()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Labcd/MH;->BT()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Labcd/TH;->FH(Labcd/OH;Labcd/MH;)V

    :goto_1
    invoke-virtual {p1}, Labcd/OH;->j6()V

    invoke-virtual {p1}, Labcd/OH;->DW()I

    move-result v0

    invoke-virtual {p2, v0}, Labcd/CI;->DW(I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Labcd/TH;->v5(Labcd/OH;Labcd/MH;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Labcd/MH;->a8()Labcd/MH;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/TH;->DW(Labcd/OH;Labcd/MH;)V

    invoke-virtual {p2}, Labcd/MH;->nw()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Labcd/OH;->Zo()V

    invoke-virtual {p1}, Labcd/OH;->v5()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Labcd/CI;->j6(J)V

    :try_start_0
    iget-object v0, p0, Labcd/TH;->J0:Labcd/LH;

    iget-boolean v1, p0, Labcd/TH;->rN:Z

    invoke-interface {v0, p1, p2, v1}, Labcd/LH;->j6(Labcd/OH;Labcd/MH;Z)V

    invoke-virtual {p1}, Labcd/OH;->j6()V

    invoke-virtual {p1}, Labcd/OH;->DW()I

    move-result v0

    invoke-virtual {p2, v0}, Labcd/CI;->DW(I)V

    iget-object v0, p0, Labcd/TH;->aM:Labcd/TH$c$a;

    iget-wide v2, v0, Labcd/TH$c$a;->FH:J

    add-long/2addr v2, v8

    iput-wide v2, v0, Labcd/TH$c$a;->FH:J

    invoke-virtual {p2}, Labcd/MH;->BT()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/TH;->aM:Labcd/TH$c$a;

    iget-wide v2, v0, Labcd/TH$c$a;->Hw:J

    add-long/2addr v2, v8

    iput-wide v2, v0, Labcd/TH$c$a;->Hw:J

    iget-object v0, p0, Labcd/TH;->aM:Labcd/TH$c$a;

    iget-wide v2, v0, Labcd/TH$c$a;->Zo:J

    invoke-virtual {p1}, Labcd/OH;->v5()J

    move-result-wide v4

    invoke-virtual {p2}, Labcd/CI;->getOffset()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Labcd/TH$c$a;->Zo:J
    :try_end_0
    .catch Labcd/tD; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {p2}, Labcd/CI;->getOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Labcd/OH;->v5()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Labcd/CI;->j6(J)V

    invoke-virtual {p2}, Labcd/MH;->j3()V

    invoke-virtual {p2}, Labcd/MH;->Mr()V

    iget-object v0, p0, Labcd/TH;->J0:Labcd/LH;

    sget-object v1, Labcd/vE;->j6:Labcd/vE;

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Labcd/LH;->j6(Labcd/TH;Labcd/LE;Ljava/lang/Iterable;)V

    goto/16 :goto_0

    :cond_4
    new-instance v1, Labcd/YC;

    const-string v2, ""

    invoke-direct {v1, p2, v2}, Labcd/YC;-><init>(Labcd/yE;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method private gn()Ljava/util/zip/Deflater;
    .registers 3

    iget-object v0, p0, Labcd/TH;->EQ:Ljava/util/zip/Deflater;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/zip/Deflater;

    iget-object v1, p0, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v1}, Labcd/NH;->DW()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    iput-object v0, p0, Labcd/TH;->EQ:Ljava/util/zip/Deflater;

    :cond_0
    iget-object v0, p0, Labcd/TH;->EQ:Ljava/util/zip/Deflater;

    return-object v0
.end method

.method private j6([Labcd/MH;II)I
    .registers 7

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Labcd/lK;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return p2

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/MH;

    invoke-virtual {v0}, Labcd/MH;->vy()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Labcd/MH;->BT()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Labcd/MH;->Zo(I)V

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method static synthetic j6(Labcd/TH;)Labcd/NH;
    .registers 2

    iget-object v0, p0, Labcd/TH;->J8:Labcd/NH;

    return-object v0
.end method

.method private j6(Labcd/MH;)Labcd/RK$c;
    .registers 6

    new-instance v0, Labcd/EH;

    invoke-virtual {p1}, Labcd/MH;->lg()Labcd/yE;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/TH;->DW(Labcd/YD;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/EH;-><init>([B)V

    invoke-direct {p0, p1}, Labcd/TH;->DW(Labcd/YD;)[B

    move-result-object v1

    new-instance v2, Labcd/RK$c;

    array-length v3, v1

    invoke-direct {v2, v3}, Labcd/RK$c;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Labcd/EH;->j6(Ljava/io/OutputStream;[B)V

    return-object v2
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
            "Ljava/util/List",
            "<",
            "Labcd/MH;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/TH;->BT:Z

    iget-object v0, p0, Labcd/TH;->J0:Labcd/LH;

    invoke-interface {v0, p0, p1, p2}, Labcd/LH;->j6(Labcd/TH;Labcd/LE;Ljava/lang/Iterable;)V

    iget-boolean v0, p0, Labcd/TH;->BT:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Labcd/TH;->j6(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private j6(Labcd/LE;[Labcd/MH;I)V
    .registers 16

    const/4 v9, 0x0

    iget-object v0, p0, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v0}, Labcd/NH;->tp()I

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    move v10, v0

    :goto_0
    const/4 v0, 0x1

    if-le v10, v0, :cond_0

    iget-object v0, p0, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v0}, Labcd/NH;->Zo()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-gt p3, v0, :cond_2

    :cond_0
    new-instance v0, Labcd/CH;

    iget-object v1, p0, Labcd/TH;->J8:Labcd/NH;

    invoke-direct {v0, v1}, Labcd/CH;-><init>(Labcd/NH;)V

    new-instance v1, Labcd/IH;

    iget-object v2, p0, Labcd/TH;->J8:Labcd/NH;

    iget-object v3, p0, Labcd/TH;->we:Labcd/IE;

    invoke-direct {v1, v2, v0, v3}, Labcd/IH;-><init>(Labcd/NH;Labcd/CH;Labcd/IE;)V

    invoke-virtual {v1, p1, p2, v9, p3}, Labcd/IH;->j6(Labcd/LE;[Labcd/MH;II)V

    :cond_1
    return-void

    :cond_2
    new-instance v3, Labcd/VH;

    iget-object v0, p0, Labcd/TH;->J8:Labcd/NH;

    invoke-direct {v3, v0}, Labcd/VH;-><init>(Labcd/NH;)V

    new-instance v4, Labcd/lF;

    invoke-direct {v4, p1}, Labcd/lF;-><init>(Labcd/LE;)V

    mul-int/lit8 v1, v10, 0x2

    div-int v0, p3, v1

    iget-object v2, p0, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v2}, Labcd/NH;->Zo()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_f

    iget-object v0, p0, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v0}, Labcd/NH;->Zo()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    move v8, v0

    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v9

    :goto_2
    if-lt v6, p3, :cond_b

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Labcd/lF;->j6(I)V

    iget-object v0, p0, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v0}, Labcd/NH;->VH()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v0, v4, v11, v2}, Labcd/TH;->j6(Ljava/util/concurrent/ExecutorService;Labcd/lF;Ljava/util/List;Ljava/util/List;)V

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_9

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_8

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_7

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_3
    if-nez v0, :cond_6

    invoke-static {v10}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0, v4, v11, v2}, Labcd/TH;->j6(Ljava/util/concurrent/ExecutorService;Labcd/lF;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_4
    const-wide/16 v4, 0x3c

    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packingCancelledDuringObjectsWriting:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_5
    const-wide/16 v2, 0x3c

    :try_start_2
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-eqz v2, :cond_5

    throw v1

    :catch_1
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packingCancelledDuringObjectsWriting:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a

    :try_start_3
    invoke-virtual {v4}, Labcd/lF;->FH()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packingCancelledDuringObjectsWriting:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_8
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_9
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_a
    new-instance v5, Labcd/SH;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/HH;

    invoke-direct {v5, p0, v1, v2}, Labcd/SH;-><init>(Labcd/TH;Labcd/HH;Ljava/util/List;)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_b
    sub-int v5, p3, v6

    if-ge v5, v8, :cond_c

    :goto_5
    new-instance v0, Labcd/HH;

    iget-object v1, p0, Labcd/TH;->J8:Labcd/NH;

    iget-object v2, p0, Labcd/TH;->we:Labcd/IE;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Labcd/HH;-><init>(Labcd/NH;Labcd/IE;Labcd/CH;Labcd/lF;II[Labcd/MH;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v5

    goto/16 :goto_2

    :cond_c
    add-int v0, v6, v8

    :goto_6
    if-lt v0, p3, :cond_e

    :cond_d
    sub-int v5, v0, v6

    goto :goto_5

    :cond_e
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p2, v1

    aget-object v2, p2, v0

    invoke-virtual {v1}, Labcd/MH;->er()I

    move-result v1

    invoke-virtual {v2}, Labcd/MH;->er()I

    move-result v2

    if-ne v1, v2, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    move v8, v0

    goto/16 :goto_1

    :cond_10
    move v10, v0

    goto/16 :goto_0
.end method

.method private j6(Labcd/OH;)V
    .registers 3

    invoke-virtual {p1}, Labcd/OH;->Hw()[B

    move-result-object v0

    iput-object v0, p0, Labcd/TH;->Mr:[B

    iget-object v0, p0, Labcd/TH;->Mr:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private j6(Labcd/OH;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/OH;",
            "Ljava/util/List",
            "<",
            "Labcd/MH;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Labcd/TH;->Ws:Labcd/TH$c;

    iget-object v1, v0, Labcd/TH$c;->aM:[Labcd/TH$c$a;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/MH;

    invoke-virtual {v0}, Labcd/MH;->yS()I

    move-result v0

    aget-object v0, v1, v0

    iput-object v0, p0, Labcd/TH;->aM:Labcd/TH$c$a;

    invoke-virtual {p1}, Labcd/OH;->v5()J

    move-result-wide v2

    iget-object v0, p0, Labcd/TH;->J0:Labcd/LH;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Labcd/LH;->j6(Labcd/OH;Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Labcd/TH;->aM:Labcd/TH$c$a;

    iget-wide v4, v0, Labcd/TH$c$a;->v5:J

    invoke-virtual {p1}, Labcd/OH;->v5()J

    move-result-wide v6

    sub-long v2, v6, v2

    add-long/2addr v2, v4

    iput-wide v2, v0, Labcd/TH$c$a;->v5:J

    iget-object v0, p0, Labcd/TH;->aM:Labcd/TH$c$a;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Labcd/TH$c$a;->j6:J

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/MH;

    invoke-virtual {p1, v0}, Labcd/OH;->j6(Labcd/MH;)V

    goto :goto_1
.end method

.method private j6(Labcd/TH$b;Labcd/LE;J)V
    .registers 10

    const/4 v2, 0x1

    iget-object v0, p0, Labcd/TH;->QX:Labcd/TH$a;

    invoke-static {v0, p1}, Labcd/TH$a;->j6(Labcd/TH$a;Labcd/TH$b;)V

    invoke-static {}, Labcd/TH;->j6()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->writingObjects:Ljava/lang/String;

    :goto_0
    long-to-int v1, p3

    invoke-interface {p2, v0, v1}, Labcd/LE;->j6(Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->illegalPackingPhase:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->compressingObjects:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->searchForReuse:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->searchForSizes:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->countingObjects:Ljava/lang/String;

    goto :goto_0
.end method

.method private j6(Labcd/_F;Labcd/hG;Ljava/util/List;Ljava/util/List;Labcd/BH;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/_F;",
            "Labcd/hG;",
            "Ljava/util/List",
            "<",
            "Labcd/iG;",
            ">;",
            "Ljava/util/List",
            "<",
            "Labcd/iG;",
            ">;",
            "Labcd/BH;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Labcd/TH;->VH:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p5}, Labcd/BH;->FH()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Labcd/TH;->Hw(Z)V

    invoke-virtual {p1, p2}, Labcd/qG;->j6(Labcd/hG;)V

    sget-object v0, Labcd/kG;->FH:Labcd/kG;

    invoke-virtual {p1, v0}, Labcd/_F;->DW(Labcd/kG;)V

    sget-object v0, Labcd/kG;->v5:Labcd/kG;

    invoke-virtual {p1, v0, v2}, Labcd/_F;->j6(Labcd/kG;Z)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iG;

    invoke-virtual {p1, v0}, Labcd/_F;->v5(Labcd/iG;)V

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iG;

    invoke-virtual {p1, v0}, Labcd/_F;->Hw(Labcd/iG;)V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    invoke-virtual {p1, v0}, Labcd/qG;->Hw(Labcd/YD;)Labcd/iG;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private j6(Labcd/iG;I)V
    .registers 6

    iget-object v0, p0, Labcd/TH;->J0:Labcd/LH;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Labcd/LH;->j6(Labcd/iG;)Labcd/MH;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p2}, Labcd/MH;->v5(I)V

    iget-object v1, p0, Labcd/TH;->Hw:[Labcd/lK;

    invoke-virtual {p1}, Labcd/iG;->aM()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Labcd/lK;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Labcd/TH;->v5:Labcd/AE;

    invoke-virtual {v1, v0}, Labcd/AE;->j6(Labcd/AE$a;)V

    return-void

    :cond_0
    new-instance v0, Labcd/MH;

    invoke-direct {v0, p1}, Labcd/MH;-><init>(Labcd/iG;)V

    goto :goto_0
.end method

.method private static j6(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/MH;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_1

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/MH;

    invoke-virtual {v0}, Labcd/MH;->P8()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    if-eq v1, v2, :cond_3

    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v1, 0x1

    goto :goto_2
.end method

.method private j6(Ljava/util/concurrent/ExecutorService;Labcd/lF;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Labcd/lF;",
            "Ljava/util/List",
            "<",
            "Labcd/HH;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p2}, Labcd/lF;->FH()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->packingCancelledDuringObjectsWriting:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/HH;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static j6(Labcd/BH;Labcd/fG;Labcd/_F;)Z
    .registers 5

    invoke-virtual {p0}, Labcd/BH;->FH()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    invoke-virtual {p2, v0}, Labcd/qG;->Hw(Labcd/YD;)Labcd/iG;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static j6(Labcd/NH;Labcd/IE;Labcd/YD;)[B
    .registers 5

    invoke-virtual {p1, p2}, Labcd/IE;->FH(Labcd/YD;)Labcd/FE;

    move-result-object v0

    invoke-virtual {p0}, Labcd/NH;->j6()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/FE;->DW(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/TH;->FH:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/TH$b;->values()[Labcd/TH$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/TH$b;->Hw:Labcd/TH$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Labcd/TH$b;->j6:Labcd/TH$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Labcd/TH$b;->FH:Labcd/TH$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Labcd/TH$b;->DW:Labcd/TH$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Labcd/TH$b;->v5:Labcd/TH$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Labcd/TH;->FH:[I

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

.method private u7()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Labcd/MH;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Labcd/TH;->j3:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Labcd/lK;

    iget-object v1, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Labcd/lK;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Labcd/lK;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Labcd/lK;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Labcd/lK;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Labcd/lK;-><init>(I)V

    iput-object v0, p0, Labcd/TH;->j3:Ljava/util/List;

    iget-object v0, p0, Labcd/TH;->j3:Ljava/util/List;

    iget-object v1, p0, Labcd/TH;->Hw:[Labcd/lK;

    aget-object v1, v1, v3

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

    :cond_0
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

    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, p1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    invoke-virtual {v1, v2}, Labcd/FE;->j6(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->finish()V

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

    const/16 v5, 0x14

    const/4 v4, 0x0

    new-array v1, v5, [B

    invoke-static {}, Labcd/hE;->j6()Ljava/security/MessageDigest;

    move-result-object v2

    invoke-direct {p0}, Labcd/TH;->u7()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Labcd/yE;->j6([B)Labcd/yE;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/MH;

    invoke-virtual {v0, v1, v4}, Labcd/YD;->DW([BI)V

    invoke-virtual {v2, v1, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0
.end method

.method public FH(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/TH;->rN:Z

    return-void
.end method

.method public Hw()J
    .registers 7

    const-wide/16 v4, 0x0

    iget-object v0, p0, Labcd/TH;->Ws:Labcd/TH$c;

    iget-wide v2, v0, Labcd/TH$c;->VH:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/TH;->Hw:[Labcd/lK;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Labcd/lK;->size()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v4

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

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-wide v2

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/BH;

    invoke-virtual {v0}, Labcd/BH;->DW()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0
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

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/TH;->EQ:Ljava/util/zip/Deflater;

    :cond_0
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
            "Ljava/util/Collection",
            "<+",
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
    .registers 22

    if-nez p1, :cond_e

    sget-object v5, Labcd/vE;->j6:Labcd/vE;

    :goto_0
    if-nez p2, :cond_0

    sget-object p2, Labcd/vE;->j6:Labcd/vE;

    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Labcd/TH;->u7:[Labcd/bH;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Labcd/TH;->tp:Labcd/bH;

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->J0:Labcd/LH;

    const/4 v7, 0x0

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Labcd/TH;->a8:Z

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v4}, Labcd/NH;->J8()Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->VH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    :cond_1
    const/4 v4, 0x1

    move v6, v4

    :goto_1
    instance-of v4, v5, Labcd/eE;

    if-eqz v4, :cond_3

    const-wide/16 v8, 0x3e8

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v4}, Labcd/NH;->we()Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide/16 v8, 0x1f4

    :cond_2
    move-object v4, v5

    check-cast v4, Labcd/eE;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v8, v9, v10}, Labcd/eE;->j6(JLjava/util/concurrent/TimeUnit;)V

    :cond_3
    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Labcd/TH;->FH(Labcd/LE;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v4}, Labcd/NH;->we()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Labcd/TH;->DW(Labcd/LE;)V

    :cond_5
    new-instance v5, Labcd/OH;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    invoke-direct {v5, v0, v1, v2}, Labcd/OH;-><init>(Labcd/LE;Ljava/io/OutputStream;Labcd/TH;)V

    invoke-virtual/range {p0 .. p0}, Labcd/TH;->Hw()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->Ws:Labcd/TH$c;

    iput-wide v8, v4, Labcd/TH$c;->VH:J

    sget-object v4, Labcd/TH$b;->v5:Labcd/TH$b;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1, v8, v9}, Labcd/TH;->j6(Labcd/TH$b;Labcd/LE;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v4, 0x2

    invoke-virtual {v5, v4, v8, v9}, Labcd/OH;->j6(IJ)V

    invoke-virtual {v5}, Labcd/OH;->flush()V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Labcd/TH;->DW(Labcd/OH;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->Zo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->VH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->Ws:Labcd/TH$c;

    iget-object v6, v4, Labcd/TH$c;->aM:[Labcd/TH$c$a;

    array-length v8, v6

    const/4 v4, 0x0

    :goto_2
    if-lt v4, v8, :cond_c

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->VH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Labcd/TH;->j6(Labcd/OH;)V

    invoke-virtual {v5}, Labcd/OH;->flush()V

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->Ws:Labcd/TH$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v10

    iput-wide v8, v4, Labcd/TH$c;->XL:J

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->Ws:Labcd/TH$c;

    invoke-virtual {v5}, Labcd/OH;->v5()J

    move-result-wide v8

    iput-wide v8, v4, Labcd/TH$c;->EQ:J

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->Ws:Labcd/TH$c;

    move-object/from16 v0, p0

    iget-object v5, v0, Labcd/TH;->VH:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Labcd/TH$c;->FH:Ljava/util/Collection;

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->Ws:Labcd/TH$c;

    move-object/from16 v0, p0

    iget v5, v0, Labcd/TH;->P8:I

    iput v5, v4, Labcd/TH$c;->Hw:I

    iget-object v5, v4, Labcd/TH$c;->aM:[Labcd/TH$c$a;

    array-length v6, v5

    move v4, v7

    :goto_4
    if-lt v4, v6, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/TH;->we:Labcd/IE;

    invoke-virtual {v4}, Labcd/IE;->FH()V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Labcd/TH;->j6(Labcd/LE;)V

    return-void

    :cond_8
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_1

    :cond_9
    aget-object v7, v5, v4

    if-nez v7, :cond_a

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    iget-wide v8, v7, Labcd/TH$c$a;->DW:J

    iget-wide v10, v7, Labcd/TH$c$a;->Hw:J

    add-long/2addr v8, v10

    iput-wide v8, v7, Labcd/TH$c$a;->DW:J

    move-object/from16 v0, p0

    iget-object v8, v0, Labcd/TH;->Ws:Labcd/TH$c;

    iget-wide v12, v8, Labcd/TH$c;->u7:J

    iget-wide v14, v7, Labcd/TH$c$a;->FH:J

    add-long/2addr v12, v14

    iput-wide v12, v8, Labcd/TH$c;->u7:J

    iget-wide v12, v8, Labcd/TH$c;->tp:J

    add-long/2addr v10, v12

    iput-wide v10, v8, Labcd/TH$c;->tp:J

    iget-wide v10, v8, Labcd/TH$c;->gn:J

    iget-wide v12, v7, Labcd/TH$c$a;->DW:J

    add-long/2addr v10, v12

    iput-wide v10, v8, Labcd/TH$c;->gn:J

    goto :goto_5

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/BH;

    invoke-virtual {v4}, Labcd/BH;->j6()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v12, v0, Labcd/TH;->Ws:Labcd/TH$c;

    iget-wide v14, v12, Labcd/TH$c;->u7:J

    invoke-virtual {v4}, Labcd/BH;->DW()J

    move-result-wide v16

    add-long v14, v14, v16

    iput-wide v14, v12, Labcd/TH$c;->u7:J

    move-object/from16 v0, p0

    iget-object v12, v0, Labcd/TH;->Ws:Labcd/TH$c;

    iget-wide v14, v12, Labcd/TH$c;->tp:J

    add-long/2addr v14, v8

    iput-wide v14, v12, Labcd/TH$c;->tp:J

    iget-wide v14, v12, Labcd/TH$c;->gn:J

    add-long/2addr v8, v14

    iput-wide v8, v12, Labcd/TH$c;->gn:J

    move-object/from16 v0, p0

    iget-object v8, v0, Labcd/TH;->J0:Labcd/LH;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Labcd/TH;->rN:Z

    invoke-interface {v8, v5, v4, v9}, Labcd/LH;->j6(Labcd/OH;Labcd/BH;Z)V

    goto/16 :goto_3

    :cond_c
    aget-object v9, v6, v4

    if-nez v9, :cond_d

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Labcd/TH;->Ws:Labcd/TH$c;

    iget-wide v14, v12, Labcd/TH$c;->we:J

    iget-wide v0, v9, Labcd/TH$c$a;->v5:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    iput-wide v14, v12, Labcd/TH$c;->we:J

    goto :goto_6

    :cond_e
    move-object/from16 v5, p1

    goto/16 :goto_0
.end method

.method public j6(Labcd/LE;Labcd/_F;Ljava/util/Set;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Labcd/_F;",
            "Ljava/util/Set",
            "<+",
            "Labcd/yE;",
            ">;",
            "Ljava/util/Set",
            "<+",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Labcd/vE;->j6:Labcd/vE;

    :cond_0
    iget-boolean v0, p0, Labcd/TH;->vy:Z

    if-eqz v0, :cond_1

    instance-of v0, p2, Labcd/TF$b;

    if-nez v0, :cond_1

    new-instance p2, Labcd/TF$b;

    iget-object v0, p0, Labcd/TH;->we:Labcd/IE;

    iget v1, p0, Labcd/TH;->P8:I

    invoke-direct {p2, v0, v1}, Labcd/TF$b;-><init>(Labcd/IE;I)V

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Labcd/TH;->DW(Labcd/LE;Labcd/_F;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public j6(Labcd/LE;Ljava/util/Set;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Set",
            "<+",
            "Labcd/yE;",
            ">;",
            "Ljava/util/Set",
            "<+",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Labcd/TH;->vy:Z

    if-eqz v0, :cond_0

    new-instance v0, Labcd/TF$b;

    iget-object v1, p0, Labcd/TH;->we:Labcd/IE;

    iget v2, p0, Labcd/TH;->P8:I

    invoke-direct {v0, v1, v2}, Labcd/TF$b;-><init>(Labcd/IE;I)V

    :goto_0
    invoke-virtual {p0, p1, v0, p2, p3}, Labcd/TH;->j6(Labcd/LE;Labcd/_F;Ljava/util/Set;Ljava/util/Set;)V

    return-void

    :cond_0
    new-instance v0, Labcd/_F;

    iget-object v1, p0, Labcd/TH;->we:Labcd/IE;

    invoke-direct {v0, v1}, Labcd/_F;-><init>(Labcd/IE;)V

    goto :goto_0
.end method

.method public j6(Labcd/MH;Labcd/UH;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Labcd/UH;->DW()I

    move-result v3

    iget-object v2, p0, Labcd/TH;->VH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Labcd/MH;->P8()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v3, v1, :cond_5

    move v2, v1

    :goto_1
    if-nez v3, :cond_2

    move v0, v1

    :cond_2
    or-int/2addr v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/TH;->VH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    if-nez v3, :cond_9

    iget-boolean v0, p0, Labcd/TH;->a8:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Labcd/TH;->DW(Labcd/MH;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Labcd/UH;->j6()Labcd/yE;

    move-result-object v1

    iget-object v0, p0, Labcd/TH;->v5:Labcd/AE;

    invoke-virtual {v0, v1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/MH;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Labcd/MH;->P8()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1, v0}, Labcd/MH;->DW(Labcd/yE;)V

    invoke-virtual {p1}, Labcd/MH;->cn()V

    :goto_2
    invoke-virtual {p1, p2}, Labcd/MH;->j6(Labcd/UH;)V

    goto :goto_0

    :cond_5
    move v2, v0

    goto :goto_1

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/BH;

    invoke-virtual {v0, p1, p2}, Labcd/BH;->j6(Labcd/MH;Labcd/UH;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Labcd/MH;->ro()V

    invoke-virtual {p1}, Labcd/MH;->j3()V

    invoke-virtual {p1}, Labcd/MH;->Mr()V

    iput-boolean v1, p0, Labcd/TH;->BT:Z

    goto :goto_0

    :cond_7
    iget-boolean v2, p0, Labcd/TH;->er:Z

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Labcd/MH;->P8()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1, v1}, Labcd/MH;->DW(Labcd/yE;)V

    invoke-virtual {p1}, Labcd/MH;->cn()V

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Labcd/MH;->j3()V

    invoke-virtual {p1}, Labcd/MH;->Mr()V

    goto :goto_2

    :cond_9
    if-ne v3, v1, :cond_b

    iget-object v0, p0, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v0}, Labcd/NH;->J8()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Labcd/UH;->FH()I

    move-result v0

    invoke-virtual {p1}, Labcd/MH;->ei()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Labcd/MH;->BT()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Labcd/MH;->gW()I

    move-result v1

    if-le v1, v0, :cond_0

    :cond_a
    invoke-virtual {p1}, Labcd/MH;->j3()V

    invoke-virtual {p1}, Labcd/MH;->cn()V

    invoke-virtual {p1, v0}, Labcd/MH;->Zo(I)V

    goto :goto_2

    :cond_b
    invoke-virtual {p1}, Labcd/MH;->j3()V

    invoke-virtual {p1}, Labcd/MH;->Mr()V

    goto :goto_2
.end method

.method j6(Labcd/OH;Labcd/MH;)V
    .registers 4

    invoke-virtual {p2}, Labcd/MH;->nw()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Labcd/TH;->Hw(Labcd/OH;Labcd/MH;)V

    :cond_0
    return-void
.end method

.method public j6(Labcd/iG;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/TH;->FH(Labcd/YD;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/TH;->j6(Labcd/iG;I)V

    :cond_0
    return-void
.end method

.method public j6(Ljava/io/OutputStream;)V
    .registers 10

    iget-object v0, p0, Labcd/TH;->VH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Labcd/TH;->u7()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Labcd/TH;->J8:Labcd/NH;

    invoke-virtual {v0}, Labcd/NH;->gn()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {p1, v1}, Labcd/gH;->j6(Ljava/io/OutputStream;Ljava/util/List;)Labcd/gH;

    move-result-object v0

    :goto_0
    iget-object v4, p0, Labcd/TH;->Mr:[B

    invoke-virtual {v0, v1, v4}, Labcd/gH;->j6(Ljava/util/List;[B)V

    iget-object v0, p0, Labcd/TH;->Ws:Labcd/TH$c;

    iget-wide v4, v0, Labcd/TH$c;->XL:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    add-long/2addr v2, v4

    iput-wide v2, v0, Labcd/TH$c;->XL:J

    return-void

    :cond_0
    invoke-static {p1, v0}, Labcd/gH;->j6(Ljava/io/OutputStream;I)Labcd/gH;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cachedPacksPreventsIndexCreation:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
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

    move-result-object v0

    check-cast v0, Labcd/MH;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/MH;->P8()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
