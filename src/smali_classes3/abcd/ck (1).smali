.class public Labcd/ck;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = 0x43d3c3027d1afcf8L
    .end annotation
.end field

.field private FH:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = -0x1ee45e603dc0c63dL
    .end annotation
.end field

.field private Hw:Ljava/util/HashSet;
    .annotation runtime Labcd/ru;
        field = -0x437ff3697e274f68L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J0:Ljava/util/HashMap;
    .annotation runtime Labcd/ru;
        field = -0x642c1d5a15353a40L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;"
        }
    .end annotation
.end field

.field private J8:I
    .annotation runtime Labcd/ru;
        field = 0x9534739617501e0L
    .end annotation
.end field

.field private QX:Landroid/widget/Toast;
    .annotation runtime Labcd/ru;
        field = -0x9882fccf1928fbdL
    .end annotation
.end field

.field private VH:Ljava/util/HashMap;
    .annotation runtime Labcd/ru;
        field = 0x234cd586c0ac68b3L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Lcom/aide/engine/SyntaxError;",
            ">;"
        }
    .end annotation
.end field

.field private Ws:Ljava/util/Set;
    .annotation runtime Labcd/ru;
        field = 0x362dfecb15383a45L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Labcd/ck$a;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/util/HashSet;
    .annotation runtime Labcd/ru;
        field = 0x2780509cf98e1b03L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = -0x179702f46293701bL
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0x69342e665f239010L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = -0x50ddb5b46d911245L
    .end annotation
.end field

.field private v5:Ljava/util/HashMap;
    .annotation runtime Labcd/ru;
        field = -0x3879f8d068d9e294L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private we:Z
    .annotation runtime Labcd/ru;
        field = -0x369e64c96c4f14c8L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/ck;

    const-wide v1, 0x650845e636406143L  # 4.91803584000971E178

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x3ded30fecfad91a5L  # -2.019559323660777E10

    :try_start_6
    sget-boolean v3, Labcd/ck;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Labcd/ck;->FH:Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Labcd/ck;->Hw:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Labcd/ck;->v5:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Labcd/ck;->Zo:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Labcd/ck;->VH:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Labcd/ck;->J0:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Labcd/ck;->Ws:Ljava/util/Set;
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_42

    return-void

    :catchall_42
    move-exception v3

    sget-boolean v4, Labcd/ck;->DW:Z

    if-eqz v4, :cond_4a

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4a
    throw v3
.end method

.method private DW(Ljava/util/List;II)Lcom/aide/engine/SyntaxError;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x1e4b6c946032280L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;II)",
            "Lcom/aide/engine/SyntaxError;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ck;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x6a1caf193aaf3799L  # -3.080424796820981E-203

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    new-instance v0, Labcd/ak;

    invoke-direct {v0, p0}, Labcd/ak;-><init>(Labcd/ck;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/engine/SyntaxError;

    iget v2, v1, Lcom/aide/engine/SyntaxError;->v5:I

    iget v3, v1, Lcom/aide/engine/SyntaxError;->Zo:I

    invoke-direct {p0, p2, p3, v2, v3}, Labcd/ck;->j6(IIII)I

    move-result v2
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_40

    if-lez v2, :cond_27

    return-object v1

    :cond_3e
    const/4 p1, 0x0

    return-object p1

    :catchall_40
    move-exception v0

    sget-boolean v1, Labcd/ck;->DW:Z

    if-eqz v1, :cond_5a

    const-wide v2, -0x6a1caf193aaf3799L  # -3.080424796820981E-203

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    goto :goto_5c

    :goto_5b
    throw v0

    :goto_5c
    goto :goto_5b
.end method

.method static synthetic DW(Labcd/ck;)V
    .registers 1

    invoke-direct {p0}, Labcd/ck;->EQ()V

    return-void
.end method

.method static synthetic DW(Labcd/ck;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/ck;->v5(Ljava/lang/String;)V

    return-void
.end method

.method private DW(Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1f3602d034ad8000L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ck;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x227459f96ff7d47fL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/SyntaxError;

    invoke-direct {p0, v2, v3}, Labcd/ck;->j6(Ljava/lang/String;Lcom/aide/engine/SyntaxError;)V
    :try_end_3f
    .catchall {:try_start_0 .. :try_end_3f} :catchall_41

    goto :goto_30

    :cond_40
    return-void

    :catchall_41
    move-exception v0

    sget-boolean v1, Labcd/ck;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, 0x227459f96ff7d47fL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    goto :goto_54

    :goto_53
    throw v0

    :goto_54
    goto :goto_53
.end method

.method private DW(Ljava/lang/String;[Lcom/aide/engine/SyntaxError;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1876c6243bdd59bL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ck;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x6369e3a909e9274L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Labcd/Zj;

    invoke-direct {v0, p0, p1}, Labcd/Zj;-><init>(Labcd/ck;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Labcd/ck;->DW:Z

    if-eqz v1, :cond_26

    const-wide v2, -0x6369e3a909e9274L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v0
.end method

.method private DW(Ljava/lang/String;Lcom/aide/engine/SyntaxError;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1da1412202b0d690L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ck;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0xf841e2d12312b71L  # -6.926000505193555E233

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v0

    sget-boolean v1, Labcd/ck;->DW:Z

    if-eqz v1, :cond_1f

    const-wide v2, -0xf841e2d12312b71L  # -6.926000505193555E233

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v0
.end method

.method private EQ()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x3f1580d304866bacL
    .end annotation

    const-wide v0, -0x27ef4ad2a5727667L  # -1.645794541784266E116

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ck;->FH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_ac

    :try_start_f
    iget-object v3, p0, Labcd/ck;->v5:Ljava/util/HashMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Labcd/ck;->v5:Ljava/util/HashMap;

    const/4 v4, 0x0

    iput-boolean v4, p0, Labcd/ck;->we:Z

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_a9

    :try_start_1c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v5, p0, Labcd/ck;->VH:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :cond_2c
    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_63

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Labcd/ck;->Zo:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_49

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_49
    iget-object v8, p0, Labcd/ck;->Hw:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    iget-object v8, p0, Labcd/ck;->VH:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/aide/engine/SyntaxError;

    invoke-direct {p0, v7, v8}, Labcd/ck;->j6(Ljava/lang/String;[Lcom/aide/engine/SyntaxError;)I

    move-result v7

    if-eqz v7, :cond_2c

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v4, v7

    goto :goto_2c

    :cond_63
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Labcd/ck;->FH:Ljava/lang/Object;

    monitor-enter v7
    :try_end_76
    .catchall {:try_start_1c .. :try_end_76} :catchall_ac

    :try_start_76
    iget-object v8, p0, Labcd/ck;->VH:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v7

    goto :goto_67

    :catchall_7d
    move-exception v2

    monitor-exit v7
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw v2

    :cond_80
    iget-object v2, p0, Labcd/ck;->FH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_ac

    :try_start_83
    iput v6, p0, Labcd/ck;->u7:I

    iput v4, p0, Labcd/ck;->gn:I

    monitor-exit v2
    :try_end_88
    .catchall {:try_start_83 .. :try_end_88} :catchall_a6

    :try_start_88
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_90
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_90

    :cond_a2
    invoke-direct {p0}, Labcd/ck;->J8()V
    :try_end_a5
    .catchall {:try_start_88 .. :try_end_a5} :catchall_ac

    return-void

    :catchall_a6
    move-exception v3

    :try_start_a7
    monitor-exit v2
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    :try_start_a8
    throw v3
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_ac

    :catchall_a9
    move-exception v3

    :try_start_aa
    monitor-exit v2
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    :try_start_ab
    throw v3
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_ac

    :catchall_ac
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_b4

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_b4
    goto :goto_b6

    :goto_b5
    throw v2

    :goto_b6
    goto :goto_b5
.end method

.method static synthetic FH(Labcd/ck;)V
    .registers 1

    invoke-direct {p0}, Labcd/ck;->J0()V

    return-void
.end method

.method static synthetic FH(Labcd/ck;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/ck;->VH(Ljava/lang/String;)V

    return-void
.end method

.method private J0()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xf16f3de02ba8959L
    .end annotation

    const-wide v0, 0x7dcce643bb20048L

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ck;->Ws:Ljava/util/Set;

    if-eqz v2, :cond_24

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/ck$a;

    invoke-interface {v3}, Labcd/ck$a;->j6()V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_25

    goto :goto_14

    :cond_24
    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    goto :goto_2f

    :goto_2e
    throw v2

    :goto_2f
    goto :goto_2e
.end method

.method private J8()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x33c6bce337b51220L
    .end annotation

    const-wide v0, 0x267fb1395b5289e3L

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/_j;

    invoke-direct {v2, p0}, Labcd/_j;-><init>(Labcd/ck;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method private VH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xebd0b21d46d150fL
    .end annotation

    const-wide v0, -0x1be44ba5bd95352cL  # -1.713041416013068E174

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ck;->Ws:Ljava/util/Set;

    if-eqz v2, :cond_24

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/ck$a;

    invoke-interface {v3, p1}, Labcd/ck$a;->j6(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_25

    goto :goto_14

    :cond_24
    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    goto :goto_2f

    :goto_2e
    throw v2

    :goto_2f
    goto :goto_2e
.end method

.method private Zo(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2099c03cb5e88520L
    .end annotation

    const-wide v0, -0x1d09e5d9dc566ad5L  # -5.21329141866406E168

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ck;->FH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_29

    :try_start_f
    iget-object v3, p0, Labcd/ck;->v5:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    iget-object v3, p0, Labcd/ck;->v5:Ljava/util/HashMap;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    iget v3, p0, Labcd/ck;->EQ:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/ck;->EQ:I

    monitor-exit v2

    return-void

    :catchall_26
    move-exception v3

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_26

    :try_start_28
    throw v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method private j6(IIII)I
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x3bc133f5b1e9cca0L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ck;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x203a3ce38630705dL  # -2.279552898486179E153

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_2b

    :cond_21
    if-ge p1, p3, :cond_25

    const/4 p1, -0x1

    return p1

    :cond_25
    if-le p1, p3, :cond_29

    const/4 p1, 0x1

    return p1

    :cond_29
    sub-int/2addr p2, p4

    return p2

    :catchall_2b
    move-exception v0

    sget-boolean v1, Labcd/ck;->DW:Z

    if-eqz v1, :cond_4e

    const-wide v2, -0x203a3ce38630705dL  # -2.279552898486179E153

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    throw v0
.end method

.method static synthetic j6(Labcd/ck;IIII)I
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/ck;->j6(IIII)I

    move-result p0

    return p0
.end method

.method private j6(Ljava/lang/String;[Lcom/aide/engine/SyntaxError;)I
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2e6937a7f43aebc3L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ck;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x76ea51cd2b591dcL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v0, 0x0

    if-nez p2, :cond_10

    return v0

    :cond_10
    const/4 v1, 0x0

    :goto_11
    array-length v2, p2
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_29

    if-ge v0, v2, :cond_28

    aget-object v2, p2, v0

    :try_start_16
    invoke-direct {p0, p1, v2}, Labcd/ck;->DW(Ljava/lang/String;Lcom/aide/engine/SyntaxError;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_25

    :cond_1d
    invoke-virtual {v2}, Lcom/aide/engine/SyntaxError;->Hw()Z

    move-result v2
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_29

    if-eqz v2, :cond_25

    add-int/lit8 v1, v1, 0x1

    :cond_25
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_28
    return v1

    :catchall_29
    move-exception v0

    sget-boolean v1, Labcd/ck;->DW:Z

    if-eqz v1, :cond_3a

    const-wide v2, 0x76ea51cd2b591dcL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    goto :goto_3c

    :goto_3b
    throw v0

    :goto_3c
    goto :goto_3b
.end method

.method private j6(Ljava/util/List;II)Lcom/aide/engine/SyntaxError;
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x91a828b6523810L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;II)",
            "Lcom/aide/engine/SyntaxError;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ck;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2fad4a22f6836bfdL  # 4.940427498027282E-79

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    new-instance v0, Labcd/bk;

    invoke-direct {v0, p0}, Labcd/bk;-><init>(Labcd/ck;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/engine/SyntaxError;

    iget v2, v1, Lcom/aide/engine/SyntaxError;->v5:I

    iget v3, v1, Lcom/aide/engine/SyntaxError;->Zo:I

    invoke-direct {p0, p2, p3, v2, v3}, Labcd/ck;->j6(IIII)I

    move-result v2
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_3d

    if-gez v2, :cond_24

    return-object v1

    :cond_3b
    const/4 p1, 0x0

    return-object p1

    :catchall_3d
    move-exception v0

    sget-boolean v1, Labcd/ck;->DW:Z

    if-eqz v1, :cond_57

    const-wide v2, 0x2fad4a22f6836bfdL  # 4.940427498027282E-79

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_57
    goto :goto_59

    :goto_58
    throw v0

    :goto_59
    goto :goto_58
.end method

.method static synthetic j6(Labcd/ck;)V
    .registers 1

    invoke-direct {p0}, Labcd/ck;->we()V

    return-void
.end method

.method static synthetic j6(Labcd/ck;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/ck;->Zo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Labcd/ck;Ljava/lang/String;[Lcom/aide/engine/SyntaxError;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Labcd/ck;->j6(Ljava/lang/String;[Lcom/aide/engine/SyntaxError;Z)V

    return-void
.end method

.method private j6(Ljava/lang/String;Lcom/aide/engine/SyntaxError;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x3ba132c446151acL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ck;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x3c246bffb23df5abL  # 5.535359054059091E-19

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/ck;->J8:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/ck;->J8:I

    iget-object v0, p0, Labcd/ck;->J0:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Labcd/ck;->J0:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    iget-object v0, p0, Labcd/ck;->J0:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v0

    sget-boolean v1, Labcd/ck;->DW:Z

    if-eqz v1, :cond_41

    const-wide v2, 0x3c246bffb23df5abL  # 5.535359054059091E-19

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    throw v0
.end method

.method private j6(Ljava/lang/String;[Lcom/aide/engine/SyntaxError;Z)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x771c65dfe234f7cL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ck;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x496750bf6f1535dL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    iget-object v0, p0, Labcd/ck;->FH:Ljava/lang/Object;

    monitor-enter v0
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_8b

    if-eqz p3, :cond_54

    :try_start_19
    iget-object v1, p0, Labcd/ck;->Hw:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Labcd/ck;->VH:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/aide/engine/SyntaxError;

    invoke-direct {p0, p1, v1}, Labcd/ck;->j6(Ljava/lang/String;[Lcom/aide/engine/SyntaxError;)I

    move-result v2

    invoke-direct {p0, p1, p2}, Labcd/ck;->j6(Ljava/lang/String;[Lcom/aide/engine/SyntaxError;)I

    move-result v3

    if-eq v2, v3, :cond_49

    iget v1, p0, Labcd/ck;->gn:I

    sub-int v4, v3, v2

    add-int/2addr v1, v4

    iput v1, p0, Labcd/ck;->gn:I

    if-nez v3, :cond_40

    iget v1, p0, Labcd/ck;->u7:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Labcd/ck;->u7:I

    goto :goto_59

    :cond_40
    if-nez v2, :cond_59

    iget v1, p0, Labcd/ck;->u7:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/ck;->u7:I

    goto :goto_59

    :cond_49
    if-nez v2, :cond_59

    if-nez v3, :cond_59

    array-length v2, p2

    if-nez v2, :cond_59

    if-eqz v1, :cond_59

    array-length v1, v1

    goto :goto_59

    :cond_54
    iget-object v1, p0, Labcd/ck;->Hw:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_59
    :goto_59
    array-length v1, p2

    if-nez v1, :cond_62

    iget-object v1, p0, Labcd/ck;->VH:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    :cond_62
    iget-object v1, p0, Labcd/ck;->VH:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_67
    iget-object v1, p0, Labcd/ck;->v5:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    iget-object v1, p0, Labcd/ck;->v5:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_74
    iget v1, p0, Labcd/ck;->tp:I

    iget v2, p0, Labcd/ck;->EQ:I

    if-ge v1, v2, :cond_7e

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/ck;->tp:I

    :cond_7e
    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_19 .. :try_end_7f} :catchall_88

    :try_start_7f
    iget-object v0, p0, Labcd/ck;->Zo:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p2}, Labcd/ck;->DW(Ljava/lang/String;[Lcom/aide/engine/SyntaxError;)V
    :try_end_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_8b

    return-void

    :catchall_88
    move-exception v1

    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    :try_start_8a
    throw v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8b

    :catchall_8b
    move-exception v0

    sget-boolean v1, Labcd/ck;->DW:Z

    if-eqz v1, :cond_a1

    const-wide v2, 0x496750bf6f1535dL

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a1
    throw v0
.end method

.method private j6(Ljava/util/HashSet;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xa890b1a725f1c48L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x34604df99244f20dL  # 2.0779767598656497E-56

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Labcd/ck;->VH(Ljava/lang/String;)V

    goto :goto_10

    :cond_20
    invoke-direct {p0}, Labcd/ck;->J0()V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    goto :goto_2e

    :goto_2d
    throw v2

    :goto_2e
    goto :goto_2d
.end method

.method private j6(IIIIII)Z
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x36d81ec56124230L
    .end annotation

    sget-boolean v0, Labcd/ck;->j6:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x2

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x4

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const-wide v3, 0x613f7948ba3216bL  # 2.199982626286114E-279

    invoke-static {v3, v4, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_3f
    if-ne p1, p3, :cond_49

    if-ne p5, p1, :cond_48

    if-gt p2, p6, :cond_48

    if-lt p4, p6, :cond_48

    const/4 v1, 0x1

    :cond_48
    return v1

    :cond_49
    if-ge p1, p5, :cond_4d

    if-gt p3, p5, :cond_55

    :cond_4d
    if-ne p1, p5, :cond_51

    if-le p2, p6, :cond_55

    :cond_51
    if-ne p3, p5, :cond_56

    if-lt p4, p6, :cond_56

    :cond_55
    const/4 v1, 0x1

    :cond_56
    return v1
.end method

.method private j6(IIIIIIII)Z
    .registers 23
    .annotation runtime Labcd/su;
        method = -0xc8210d7a74b75d5L
    .end annotation

    sget-boolean v0, Labcd/ck;->j6:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_61

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    move v5, p1

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v1

    new-instance v3, Ljava/lang/Integer;

    move/from16 v6, p2

    invoke-direct {v3, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v2

    new-instance v3, Ljava/lang/Integer;

    move/from16 v7, p3

    invoke-direct {v3, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x2

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Integer;

    move/from16 v8, p4

    invoke-direct {v3, v8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Integer;

    move/from16 v4, p5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v9, 0x4

    aput-object v3, v0, v9

    new-instance v3, Ljava/lang/Integer;

    move/from16 v9, p6

    invoke-direct {v3, v9}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x5

    aput-object v3, v0, v10

    new-instance v3, Ljava/lang/Integer;

    move/from16 v10, p7

    invoke-direct {v3, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v11, 0x6

    aput-object v3, v0, v11

    new-instance v3, Ljava/lang/Integer;

    move/from16 v11, p8

    invoke-direct {v3, v11}, Ljava/lang/Integer;-><init>(I)V

    const/4 v12, 0x7

    aput-object v3, v0, v12

    const-wide v12, -0x4c3f8692af91bc78L  # -2.0503994302591814E-59

    move-object v3, p0

    invoke-static {v12, v13, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_71

    :cond_61
    move-object v3, p0

    move v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v4, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    :goto_71
    invoke-direct/range {p0 .. p6}, Labcd/ck;->j6(IIIIII)Z

    move-result v0

    if-nez v0, :cond_89

    move-object v4, p0

    move v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v4 .. v10}, Labcd/ck;->j6(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_8a

    :cond_89
    const/4 v1, 0x1

    :cond_8a
    return v1
.end method

.method private v5(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x401adb24745a0fd1L
    .end annotation

    const-wide v0, 0x10515812ea444b00L

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ck;->Zo:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method private we()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x201e64f08128d280L
    .end annotation

    const-wide v0, 0xc96f89998befc49L

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ck;->Zo:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, p0, Labcd/ck;->FH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_24

    const/4 v3, 0x1

    :try_start_15
    iput-boolean v3, p0, Labcd/ck;->we:Z

    const/4 v3, 0x0

    iput v3, p0, Labcd/ck;->tp:I

    iput v3, p0, Labcd/ck;->EQ:I

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_21

    :try_start_1d
    invoke-direct {p0}, Labcd/ck;->J8()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_24

    return-void

    :catchall_21
    move-exception v3

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method


# virtual methods
.method public DW(Ljava/lang/String;II)Landroid/util/Pair;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Landroid/util/Pair<",
            "Labcd/Tl;",
            "Lcom/aide/engine/SyntaxError;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    :try_start_4
    sget-boolean v0, Labcd/ck;->j6:Z

    if-eqz v0, :cond_28

    new-instance v5, Ljava/lang/Integer;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_a2

    move/from16 v9, p2

    :try_start_c
    invoke-direct {v5, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_23

    move/from16 v10, p3

    :try_start_13
    invoke-direct {v6, v10}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x33da38c13f828621L  # 6.527121272771486E-59

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2c

    :catchall_23
    move-exception v0

    :goto_24
    move/from16 v10, p3

    goto/16 :goto_a7

    :cond_28
    move/from16 v9, p2

    move/from16 v10, p3

    :goto_2c
    invoke-virtual/range {p0 .. p0}, Labcd/ck;->Hw()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_39
    const v3, 0xf4240

    if-ltz v1, :cond_5b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    goto :goto_5b

    :cond_4b
    invoke-virtual {v4, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_58

    const v9, 0xf4240

    const v10, 0xf4240

    goto :goto_5b

    :cond_58
    add-int/lit8 v1, v1, -0x1

    goto :goto_39

    :cond_5b
    :goto_5b
    const/4 v4, 0x0

    move v5, v1

    const/4 v6, 0x0

    :goto_5e
    if-gez v5, :cond_65

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    :cond_65
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v8, v13}, Labcd/ck;->DW(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v8, v11, v9, v10}, Labcd/ck;->DW(Ljava/util/List;II)Lcom/aide/engine/SyntaxError;

    move-result-object v11

    if-eqz v11, :cond_8e

    new-instance v0, Labcd/Tl;

    iget v14, v11, Lcom/aide/engine/SyntaxError;->v5:I

    iget v15, v11, Lcom/aide/engine/SyntaxError;->Zo:I

    iget v1, v11, Lcom/aide/engine/SyntaxError;->VH:I

    iget v2, v11, Lcom/aide/engine/SyntaxError;->gn:I

    move-object v12, v0

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-direct/range {v12 .. v17}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8d
    .catchall {:try_start_13 .. :try_end_8d} :catchall_a0

    return-object v1

    :cond_8e
    add-int/lit8 v5, v5, -0x1

    if-eqz v6, :cond_94

    const/4 v0, 0x0

    return-object v0

    :cond_94
    if-ne v5, v1, :cond_98

    const/4 v6, 0x1

    goto :goto_99

    :cond_98
    const/4 v6, 0x0

    :goto_99
    const v9, 0xf4240

    const v10, 0xf4240

    goto :goto_5e

    :catchall_a0
    move-exception v0

    goto :goto_a7

    :catchall_a2
    move-exception v0

    move/from16 v9, p2

    goto/16 :goto_24

    :goto_a7
    sget-boolean v1, Labcd/ck;->DW:Z

    if-eqz v1, :cond_c3

    const-wide v2, 0x33da38c13f828621L  # 6.527121272771486E-59

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v7, v9

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c3
    goto :goto_c5

    :goto_c4
    throw v0

    :goto_c5
    goto :goto_c4
.end method

.method public DW(Ljava/lang/String;IIII)Lcom/aide/engine/SyntaxError;
    .registers 22

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    :try_start_8
    sget-boolean v0, Labcd/ck;->j6:Z

    if-eqz v0, :cond_2c

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v11}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v12}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v13}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1a13f02857d6e40bL  # -9.315458101044278E182

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    invoke-virtual/range {p0 .. p1}, Labcd/ck;->FH(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v14, v1

    :cond_36
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/aide/engine/SyntaxError;

    iget v2, v15, Lcom/aide/engine/SyntaxError;->v5:I

    iget v3, v15, Lcom/aide/engine/SyntaxError;->Zo:I

    iget v4, v15, Lcom/aide/engine/SyntaxError;->VH:I

    iget v5, v15, Lcom/aide/engine/SyntaxError;->gn:I

    move-object/from16 v1, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Labcd/ck;->j6(IIIIIIII)Z

    move-result v1

    if-eqz v1, :cond_36

    if-eqz v14, :cond_61

    iget-object v1, v14, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;

    if-nez v1, :cond_36

    :cond_61
    move-object v14, v15

    goto :goto_36

    :cond_63
    if-nez v14, :cond_9a

    invoke-virtual/range {p0 .. p1}, Labcd/ck;->FH(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6d
    :goto_6d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/aide/engine/SyntaxError;

    iget v2, v15, Lcom/aide/engine/SyntaxError;->v5:I

    const/4 v3, 0x1

    iget v4, v15, Lcom/aide/engine/SyntaxError;->VH:I

    const v5, 0x7fffffff

    const/4 v7, 0x1

    const v9, 0x7fffffff

    move-object/from16 v1, p0

    move/from16 v6, p2

    move/from16 v8, p4

    invoke-direct/range {v1 .. v9}, Labcd/ck;->j6(IIIIIIII)Z

    move-result v1

    if-eqz v1, :cond_6d

    if-eqz v14, :cond_98

    iget-object v1, v14, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;
    :try_end_96
    .catchall {:try_start_8 .. :try_end_96} :catchall_9b

    if-nez v1, :cond_6d

    :cond_98
    move-object v14, v15

    goto :goto_6d

    :cond_9a
    return-object v14

    :catchall_9b
    move-exception v0

    move-object v9, v0

    sget-boolean v0, Labcd/ck;->DW:Z

    if-eqz v0, :cond_c2

    const-wide v1, -0x1a13f02857d6e40bL  # -9.315458101044278E182

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v11}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v12}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v13}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v9

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static/range {v0 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c2
    goto :goto_c4

    :goto_c3
    throw v9

    :goto_c4
    goto :goto_c3
.end method

.method public DW(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;"
        }
    .end annotation

    const-wide v0, -0xc3c07355e75ffa7L  # -4.468528604374119E249

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ck;->FH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_52

    :try_start_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_38

    iget-object v4, p0, Labcd/ck;->VH:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    iget-object v4, p0, Labcd/ck;->VH:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/aide/engine/SyntaxError;

    array-length v5, v4
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_4f

    const/4 v6, 0x0

    :goto_28
    if-ge v6, v5, :cond_38

    aget-object v7, v4, v6

    :try_start_2c
    invoke-virtual {v7}, Lcom/aide/engine/SyntaxError;->Hw()Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_38
    if-eqz p1, :cond_4d

    iget-object v4, p0, Labcd/ck;->J0:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    iget-object v4, p0, Labcd/ck;->J0:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4d
    monitor-exit v2

    return-object v3

    :catchall_4f
    move-exception v3

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_2c .. :try_end_51} :catchall_4f

    :try_start_51
    throw v3
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_5a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    goto :goto_5c

    :goto_5b
    throw v2

    :goto_5c
    goto :goto_5b
.end method

.method public DW()V
    .registers 5

    const-wide v0, 0x3e99d5336ef68d67L  # 3.8493895623323405E-7

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Labcd/ck;->J0:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Labcd/ck;->J0:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    iput v3, p0, Labcd/ck;->J8:I

    invoke-direct {p0, v2}, Labcd/ck;->j6(Ljava/util/HashSet;)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public DW(Labcd/ck$a;)V
    .registers 6

    const-wide v0, 0x8c035fd138d8064L

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ck;->Ws:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public FH()I
    .registers 6

    const-wide v0, -0x4300e72807dd244bL  # -6.90493116677713E-15

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ck;->FH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_19

    :try_start_f
    iget v3, p0, Labcd/ck;->gn:I

    iget v4, p0, Labcd/ck;->J8:I

    monitor-exit v2

    add-int/2addr v3, v4

    return v3

    :catchall_16
    move-exception v3

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    :try_start_18
    throw v3
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public FH(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x2097c2db34b58db3L  # 1.134200367579122E-151

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ck;->FH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_58

    :try_start_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3e

    iget-object v4, p0, Labcd/ck;->VH:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, p0, Labcd/ck;->VH:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/aide/engine/SyntaxError;

    array-length v5, v4
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_55

    const/4 v6, 0x0

    :goto_28
    if-ge v6, v5, :cond_3e

    aget-object v7, v4, v6

    :try_start_2c
    invoke-virtual {v7}, Lcom/aide/engine/SyntaxError;->Hw()Z

    move-result v8

    if-nez v8, :cond_38

    invoke-virtual {v7}, Lcom/aide/engine/SyntaxError;->Zo()Z

    move-result v8

    if-eqz v8, :cond_3b

    :cond_38
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_3e
    if-eqz p1, :cond_53

    iget-object v4, p0, Labcd/ck;->J0:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    iget-object v4, p0, Labcd/ck;->J0:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_53
    monitor-exit v2

    return-object v3

    :catchall_55
    move-exception v3

    monitor-exit v2
    :try_end_57
    .catchall {:try_start_2c .. :try_end_57} :catchall_55

    :try_start_57
    throw v3
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_60

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_60
    goto :goto_62

    :goto_61
    throw v2

    :goto_62
    goto :goto_61
.end method

.method public Hw()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x694dc485364ed2cL

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ck;->FH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_2d

    :try_start_f
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Labcd/ck;->VH:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v4, p0, Labcd/ck;->J0:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2

    return-object v4

    :catchall_2a
    move-exception v3

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v2
.end method

.method public Hw(Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;"
        }
    .end annotation

    const-wide v0, 0xe7ee431b246e2bcL  # 7.412433459524709E-239

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ck;->FH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_5e

    :try_start_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_44

    iget-object v4, p0, Labcd/ck;->VH:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    iget-object v4, p0, Labcd/ck;->VH:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/aide/engine/SyntaxError;

    array-length v5, v4
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_5b

    const/4 v6, 0x0

    :goto_28
    if-ge v6, v5, :cond_44

    aget-object v7, v4, v6

    :try_start_2c
    invoke-virtual {v7}, Lcom/aide/engine/SyntaxError;->Hw()Z

    move-result v8

    if-nez v8, :cond_3e

    invoke-virtual {v7}, Lcom/aide/engine/SyntaxError;->Zo()Z

    move-result v8

    if-nez v8, :cond_3e

    invoke-virtual {v7}, Lcom/aide/engine/SyntaxError;->FH()Z

    move-result v8

    if-eqz v8, :cond_41

    :cond_3e
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_44
    if-eqz p1, :cond_59

    iget-object v4, p0, Labcd/ck;->J0:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    iget-object v4, p0, Labcd/ck;->J0:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_59
    monitor-exit v2

    return-object v3

    :catchall_5b
    move-exception v3

    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_2c .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw v3
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_66

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_66
    goto :goto_68

    :goto_67
    throw v2

    :goto_68
    goto :goto_67
.end method

.method public VH()I
    .registers 5

    const-wide v0, -0x15865873f2366d5fL  # -8.04341170212978E204

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ck;->FH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_16

    :try_start_f
    iget v3, p0, Labcd/ck;->EQ:I

    monitor-exit v2

    return v3

    :catchall_13
    move-exception v3

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    :try_start_15
    throw v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public Zo()I
    .registers 5

    const-wide v0, -0x1f16b2aed0b228f4L

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ck;->FH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_16

    :try_start_f
    iget v3, p0, Labcd/ck;->tp:I

    monitor-exit v2

    return v3

    :catchall_13
    move-exception v3

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    :try_start_15
    throw v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public gn()V
    .registers 5

    const-wide v0, 0x251c80da64128828L

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    new-instance v3, Labcd/Yj;

    invoke-direct {v3, p0}, Labcd/Yj;-><init>(Labcd/ck;)V

    invoke-virtual {v2, v3}, Labcd/Xj;->j6(Lcom/aide/engine/service/p;)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public j6(Ljava/lang/String;II)Landroid/util/Pair;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Landroid/util/Pair<",
            "Labcd/Tl;",
            "Lcom/aide/engine/SyntaxError;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v7, p1

    :try_start_4
    sget-boolean v0, Labcd/ck;->j6:Z

    if-eqz v0, :cond_28

    new-instance v5, Ljava/lang/Integer;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_95

    move/from16 v9, p2

    :try_start_c
    invoke-direct {v5, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_23

    move/from16 v10, p3

    :try_start_13
    invoke-direct {v6, v10}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x18fca3bda8b4fed3L

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2c

    :catchall_23
    move-exception v0

    :goto_24
    move/from16 v10, p3

    goto/16 :goto_99

    :cond_28
    move/from16 v9, p2

    move/from16 v10, p3

    :goto_2c
    invoke-virtual/range {p0 .. p0}, Labcd/ck;->Hw()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_55

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    goto :goto_55

    :cond_49
    invoke-virtual {v3, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_52

    const/4 v9, 0x1

    const/4 v10, 0x1

    goto :goto_55

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_55
    :goto_55
    move v3, v2

    const/4 v5, 0x0

    :goto_57
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_5e

    const/4 v3, 0x0

    :cond_5e
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v8, v12}, Labcd/ck;->DW(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v8, v6, v9, v10}, Labcd/ck;->j6(Ljava/util/List;II)Lcom/aide/engine/SyntaxError;

    move-result-object v6

    if-eqz v6, :cond_85

    new-instance v0, Labcd/Tl;

    iget v13, v6, Lcom/aide/engine/SyntaxError;->v5:I

    iget v14, v6, Lcom/aide/engine/SyntaxError;->Zo:I

    iget v15, v6, Lcom/aide/engine/SyntaxError;->VH:I

    iget v1, v6, Lcom/aide/engine/SyntaxError;->gn:I

    move-object v11, v0

    move/from16 v16, v1

    invoke-direct/range {v11 .. v16}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_84
    .catchall {:try_start_13 .. :try_end_84} :catchall_93

    return-object v1

    :cond_85
    add-int/lit8 v3, v3, 0x1

    if-eqz v5, :cond_8b

    const/4 v0, 0x0

    return-object v0

    :cond_8b
    if-ne v3, v2, :cond_8f

    const/4 v5, 0x1

    goto :goto_90

    :cond_8f
    const/4 v5, 0x0

    :goto_90
    const/4 v9, 0x1

    const/4 v10, 0x1

    goto :goto_57

    :catchall_93
    move-exception v0

    goto :goto_99

    :catchall_95
    move-exception v0

    move/from16 v9, p2

    goto :goto_24

    :goto_99
    sget-boolean v1, Labcd/ck;->DW:Z

    if-eqz v1, :cond_b5

    const-wide v2, 0x18fca3bda8b4fed3L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v7, v9

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b5
    goto :goto_b7

    :goto_b6
    throw v0

    :goto_b7
    goto :goto_b6
.end method

.method public j6(Ljava/lang/String;IIII)Lcom/aide/engine/SyntaxError;
    .registers 22

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    :try_start_8
    sget-boolean v0, Labcd/ck;->j6:Z

    if-eqz v0, :cond_2c

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v11}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v12}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v13}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x20452e9569bf8L

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    invoke-virtual/range {p0 .. p1}, Labcd/ck;->FH(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v14, v1

    :cond_36
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/aide/engine/SyntaxError;

    iget v2, v15, Lcom/aide/engine/SyntaxError;->v5:I

    iget v3, v15, Lcom/aide/engine/SyntaxError;->Zo:I

    iget v4, v15, Lcom/aide/engine/SyntaxError;->VH:I

    iget v5, v15, Lcom/aide/engine/SyntaxError;->gn:I

    move-object/from16 v1, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Labcd/ck;->j6(IIIIIIII)Z

    move-result v1

    if-eqz v1, :cond_36

    if-eqz v14, :cond_61

    iget-object v1, v14, Lcom/aide/engine/SyntaxError;->tp:[Ljava/lang/String;
    :try_end_5f
    .catchall {:try_start_8 .. :try_end_5f} :catchall_64

    if-nez v1, :cond_36

    :cond_61
    move-object v14, v15

    goto :goto_36

    :cond_63
    return-object v14

    :catchall_64
    move-exception v0

    sget-boolean v1, Labcd/ck;->DW:Z

    if-eqz v1, :cond_8a

    const-wide v3, -0x20452e9569bf8L

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v11}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v12}, Ljava/lang/Integer;-><init>(I)V

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v13}, Ljava/lang/Integer;-><init>(I)V

    move-object v2, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-static/range {v2 .. v10}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8a
    goto :goto_8c

    :goto_8b
    throw v0

    :goto_8c
    goto :goto_8b
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0x9986d706d5ee30fL

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/ck;->DW()V

    iget-object v2, p0, Labcd/ck;->Hw:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, p0, Labcd/ck;->v5:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Labcd/ck;->Zo:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, p0, Labcd/ck;->VH:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    const/4 v2, 0x0

    iput v2, p0, Labcd/ck;->gn:I

    iput v2, p0, Labcd/ck;->u7:I

    invoke-direct {p0}, Labcd/ck;->J8()V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method public j6(Labcd/ck$a;)V
    .registers 6

    const-wide v0, -0x55cb7597ad4ac71L  # -5.600649047388739E282

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ck;->Ws:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Lcom/aide/engine/SyntaxError;)V
    .registers 7

    const-wide v0, -0x3498b57b09c65a5fL  # -1.784674680740592E55

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0a0017

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f080099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/aide/engine/SyntaxError;->j6()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Labcd/ck;->QX:Landroid/widget/Toast;

    if-eqz v3, :cond_33

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    :cond_33
    new-instance v3, Landroid/widget/Toast;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Labcd/ck;->QX:Landroid/widget/Toast;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setDuration(I)V

    iget-object v3, p0, Labcd/ck;->QX:Landroid/widget/Toast;

    invoke-virtual {v3, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object v2, p0, Labcd/ck;->QX:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_4d

    return-void

    :catchall_4d
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_55

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    throw v2
.end method

.method public j6(Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/engine/SyntaxError;",
            ">;>;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/ck;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x36eee91c125cb100L  # -9.527667465944802E43

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1, p2}, Labcd/ck;->DW(Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Labcd/ck;->J0:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Labcd/ck;->j6(Ljava/util/HashSet;)V
    :try_end_20
    .catchall {:try_start_0 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v0

    sget-boolean v1, Labcd/ck;->DW:Z

    if-eqz v1, :cond_32

    const-wide v2, -0x36eee91c125cb100L  # -9.527667465944802E43

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method

.method public j6(Ljava/lang/String;)Z
    .registers 9

    const-wide v0, -0xfc799435f0928L

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ck;->VH:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/aide/engine/SyntaxError;

    array-length v5, v3

    :goto_36
    if-ge v4, v5, :cond_16

    aget-object v6, v3, v4

    invoke-virtual {v6}, Lcom/aide/engine/SyntaxError;->Hw()Z

    move-result v6
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_46

    if-eqz v6, :cond_42

    const/4 p1, 0x1

    return p1

    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_45
    return v4

    :catchall_46
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_4e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    goto :goto_50

    :goto_4f
    throw v2

    :goto_50
    goto :goto_4f
.end method

.method public tp()V
    .registers 5

    const-wide v0, 0x57c521fe51083c0L

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-object v2, p0, Labcd/ck;->Ws:Ljava/util/Set;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public u7()Z
    .registers 5

    const-wide v0, -0x1aeb27a47f5be960L  # -8.446997926242063E178

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/ck;->FH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_16

    :try_start_f
    iget-boolean v3, p0, Labcd/ck;->we:Z

    monitor-exit v2

    return v3

    :catchall_13
    move-exception v3

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    :try_start_15
    throw v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public v5()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x29fa65ac225289a3L  # -2.4773044334982257E106

    :try_start_5
    sget-boolean v2, Labcd/ck;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Labcd/ck;->VH:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ".java"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/aide/engine/SyntaxError;

    array-length v5, v4
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_52

    const/4 v6, 0x0

    :goto_3d
    if-ge v6, v5, :cond_1b

    aget-object v7, v4, v6

    :try_start_41
    invoke-virtual {v7}, Lcom/aide/engine/SyntaxError;->v5()Z

    move-result v8

    if-eqz v8, :cond_4e

    invoke-virtual {v7}, Lcom/aide/engine/SyntaxError;->DW()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_52

    :cond_4e
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    :cond_51
    return-object v2

    :catchall_52
    move-exception v2

    sget-boolean v3, Labcd/ck;->DW:Z

    if-eqz v3, :cond_5a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5a
    goto :goto_5c

    :goto_5b
    throw v2

    :goto_5c
    goto :goto_5b
.end method
