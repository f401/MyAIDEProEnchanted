.class public Labcd/Va;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Va$a;,
        Labcd/Va$b;
    }
.end annotation


# static fields
.field private static final DW:J
    .annotation runtime Labcd/ru;
        field = 0x4bf56be632e3e400L
    .end annotation
.end field

.field private static final FH:J
    .annotation runtime Labcd/ru;
        field = -0xddecf2104506b47L
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static final j6:J
    .annotation runtime Labcd/ru;
        field = -0x1487f6a96c512b17L
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private EQ:Labcd/wb;
    .annotation runtime Labcd/ru;
        field = -0x2e692056c7343711L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwb<",
            "Labcd/Sa;",
            ">;"
        }
    .end annotation
.end field

.field private J0:Labcd/sb;
    .annotation runtime Labcd/ru;
        field = -0x3afe3a94a384e185L
    .end annotation
.end field

.field private J8:[I
    .annotation runtime Labcd/ru;
        field = -0x2abdfbfe7f9de9ddL
    .end annotation
.end field

.field private final VH:Labcd/Va$b;
    .annotation runtime Labcd/ru;
        field = -0x5ed011507ad545cL
    .end annotation
.end field

.field private Ws:[J
    .annotation runtime Labcd/ru;
        field = -0x40b575925a6b8bb1L
    .end annotation
.end field

.field private final Zo:Labcd/Sa;
    .annotation runtime Labcd/ru;
        field = -0xe1a7f849f813df0L
    .end annotation
.end field

.field private final gn:Labcd/Va$a;
    .annotation runtime Labcd/ru;
        field = 0x37144de9317dd2d1L
    .end annotation
.end field

.field private tp:Labcd/wb;
    .annotation runtime Labcd/ru;
        field = 0x1ec25ebbdaaeea99L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwb<",
            "Labcd/Sa;",
            ">;"
        }
    .end annotation
.end field

.field private final u7:Labcd/La;
    .annotation runtime Labcd/ru;
        field = 0x1d0b7f3c186c4f79L
    .end annotation
.end field

.field private we:Labcd/qb;
    .annotation runtime Labcd/ru;
        field = -0x2a8244879f006918L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2b042ea2645e013cL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x2617444e999570d8L  # 3.437153466138072E-125

    :try_start_6
    const-class v3, Labcd/Va;

    const-wide v4, 0x6403fc4d4597831L

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/Va;->Hw:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const-wide/32 v3, 0x989680

    sput-wide v3, Labcd/Va;->j6:J

    const-wide/32 v3, 0x4c4b40

    sput-wide v3, Labcd/Va;->DW:J

    sput-wide v3, Labcd/Va;->FH:J
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v3

    sget-boolean v4, Labcd/Va;->v5:Z

    if-eqz v4, :cond_2c

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v3
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 7

    const-wide v0, -0xc635297cfb16ec0L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Va;->Hw:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/Va$b;

    invoke-direct {v3, p0, v2}, Labcd/Va$b;-><init>(Labcd/Va;Labcd/Ua;)V

    iput-object v3, p0, Labcd/Va;->VH:Labcd/Va$b;

    new-instance v3, Labcd/Va$a;

    invoke-direct {v3, v2}, Labcd/Va$a;-><init>(Labcd/Ua;)V

    iput-object v3, p0, Labcd/Va;->gn:Labcd/Va$a;

    iput-object p1, p0, Labcd/Va;->u7:Labcd/La;

    new-instance v3, Labcd/wb;

    invoke-direct {v3}, Labcd/wb;-><init>()V

    iput-object v3, p0, Labcd/Va;->tp:Labcd/wb;

    new-instance v3, Labcd/wb;

    invoke-direct {v3}, Labcd/wb;-><init>()V

    iput-object v3, p0, Labcd/Va;->EQ:Labcd/wb;

    new-instance v3, Labcd/qb;

    invoke-direct {v3}, Labcd/qb;-><init>()V

    iput-object v3, p0, Labcd/Va;->we:Labcd/qb;

    new-instance v3, Labcd/sb;

    invoke-direct {v3}, Labcd/sb;-><init>()V

    iput-object v3, p0, Labcd/Va;->J0:Labcd/sb;

    new-instance v3, Labcd/Sa;

    invoke-direct {v3, p1}, Labcd/Sa;-><init>(Labcd/La;)V

    iput-object v3, p0, Labcd/Va;->Zo:Labcd/Sa;
    :try_end_43
    .catchall {:try_start_6 .. :try_end_43} :catchall_44

    return-void

    :catchall_44
    move-exception v3

    sget-boolean v4, Labcd/Va;->v5:Z

    if-eqz v4, :cond_4c

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    throw v3
.end method

.method private DW(J)Labcd/Sa;
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x1580ac7b044d1a7cL
    .end annotation

    const-wide v0, 0x557e4ae677cf8f9bL  # 6.784764490680481E103

    :try_start_5
    sget-boolean v2, Labcd/Va;->Hw:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v2, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v2, v2, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->DW()V

    const/4 v2, 0x0

    move-object v3, v2

    :cond_1a
    :goto_1a
    iget-object v4, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v4, v4, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v4}, Labcd/wb$a;->j6()Z

    move-result v4

    if-eqz v4, :cond_50

    iget-object v4, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v4, v4, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v4}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Sa;

    invoke-virtual {v4}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v5

    invoke-interface {v5}, Labcd/na;->VH()Labcd/oa;

    move-result-object v5

    if-nez v5, :cond_1a

    invoke-virtual {v4}, Labcd/Sa;->U2()J

    move-result-wide v5

    cmp-long v7, p1, v5

    if-gez v7, :cond_1a

    if-eqz v3, :cond_4e

    invoke-virtual {v3}, Labcd/Sa;->U2()J

    move-result-wide v5

    invoke-virtual {v4}, Labcd/Sa;->U2()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_1a

    :cond_4e
    move-object v3, v4

    goto :goto_1a

    :cond_50
    if-nez v3, :cond_85

    iget-object v4, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v4, v4, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v4}, Labcd/wb$a;->DW()V

    :cond_59
    :goto_59
    iget-object v4, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v4, v4, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v4}, Labcd/wb$a;->j6()Z

    move-result v4

    if-eqz v4, :cond_85

    iget-object v4, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v4, v4, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v4}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Sa;

    invoke-virtual {v4}, Labcd/Sa;->U2()J

    move-result-wide v5

    cmp-long v7, p1, v5

    if-gez v7, :cond_59

    if-eqz v3, :cond_83

    invoke-virtual {v3}, Labcd/Sa;->U2()J

    move-result-wide v5

    invoke-virtual {v4}, Labcd/Sa;->U2()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_59

    :cond_83
    move-object v3, v4

    goto :goto_59

    :cond_85
    if-nez v3, :cond_b3

    iget-object v3, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v3, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v3}, Labcd/wb$a;->DW()V

    const-wide/16 v3, 0x0

    :cond_90
    :goto_90
    iget-object v5, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v5, v5, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v5}, Labcd/wb$a;->j6()Z

    move-result v5

    if-eqz v5, :cond_b2

    iget-object v5, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v5, v5, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v5}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Sa;

    invoke-virtual {v5}, Labcd/Sa;->U2()J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-gez v8, :cond_90

    invoke-virtual {v5}, Labcd/Sa;->U2()J

    move-result-wide v3
    :try_end_b0
    .catchall {:try_start_5 .. :try_end_b0} :catchall_b4

    move-object v2, v5

    goto :goto_90

    :cond_b2
    move-object v3, v2

    :cond_b3
    return-object v3

    :catchall_b4
    move-exception v2

    sget-boolean v3, Labcd/Va;->v5:Z

    if-eqz v3, :cond_c1

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c1
    goto :goto_c3

    :goto_c2
    throw v2

    :goto_c3
    goto :goto_c2
.end method

.method static synthetic j6(Labcd/Va;)Labcd/La;
    .registers 1

    iget-object p0, p0, Labcd/Va;->u7:Labcd/La;

    return-object p0
.end method

.method private j6(Labcd/Da;Z)Ljava/util/List;
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x42a79ba370754ebdL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            "Z)",
            "Ljava/util/List<",
            "Labcd/Sa;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x40c1cceec1dc091cL  # 9113.865291122864

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v1

    if-eqz v1, :cond_163

    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v1

    invoke-interface {v1}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v1

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_32
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v11, 0x1

    if-eqz v3, :cond_b4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/na;

    if-eqz p2, :cond_47

    invoke-interface {v3}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v4

    if-eqz v4, :cond_32

    :cond_47
    iget-object v4, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v4, v4, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v4, p1, v3}, Labcd/Ea;->j6(Labcd/Da;Labcd/na;)I

    move-result v4

    iget-object v5, p0, Labcd/Va;->J0:Labcd/sb;

    invoke-static {}, Labcd/yc;->DW()J

    move-result-wide v6

    invoke-virtual {v5, v4, v6, v7}, Labcd/sb;->j6(IJ)V

    iget-object v5, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v5, v4}, Labcd/wb;->j6(I)Z

    move-result v5

    if-eqz v5, :cond_80

    iget-object v5, p0, Labcd/Va;->we:Labcd/qb;

    invoke-virtual {v5, v4}, Labcd/qb;->DW(I)I

    move-result v6

    add-int/2addr v6, v11

    invoke-virtual {v5, v4, v6}, Labcd/qb;->j6(II)V

    iget-object v5, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v5, v4}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Sa;

    invoke-virtual {v4}, Labcd/Sa;->j3()Z

    move-result v5

    if-eqz v5, :cond_7c

    :goto_78
    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_7c
    invoke-interface {v10, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_80
    iget-object v5, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v5, v4}, Labcd/wb;->j6(I)Z

    move-result v5

    if-eqz v5, :cond_ad

    iget-object v5, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v5, v4}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Sa;

    iget-object v6, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v6, v4, v5}, Labcd/wb;->DW(ILjava/lang/Object;)V

    iget-object v6, p0, Labcd/Va;->we:Labcd/qb;

    invoke-virtual {v6, v4, v11}, Labcd/qb;->j6(II)V

    iget-object v6, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v6, v4}, Labcd/wb;->FH(I)V

    invoke-virtual {v5}, Labcd/Sa;->j3()Z

    move-result v4

    if-eqz v4, :cond_a9

    invoke-interface {v9, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_a9
    invoke-interface {v10, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_ad
    iget-object v4, p0, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v4}, Labcd/Va$b;->j6()Labcd/Sa;

    move-result-object v4

    goto :goto_78

    :cond_b4
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v9

    invoke-direct/range {v2 .. v8}, Labcd/Va;->j6(Labcd/Da;Ljava/util/Map;ZLjava/lang/String;II)V

    :cond_c4
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_cc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_145

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Sa;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/na;

    iget-object v5, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v5, v5, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v5, p1, v3}, Labcd/Ea;->j6(Labcd/Da;Labcd/na;)I

    move-result v5

    invoke-virtual {p0}, Labcd/Va;->DW()J

    move-result-wide v6

    sget-wide v8, Labcd/Va;->DW:J

    cmp-long v12, v6, v8

    if-ltz v12, :cond_12b

    invoke-virtual {v4}, Labcd/Sa;->Mr()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Labcd/Va;->DW(J)Labcd/Sa;

    move-result-object v6

    if-eqz v6, :cond_12b

    iget-object v7, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v7, v7, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v6}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v8

    invoke-virtual {v6}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Labcd/Ea;->j6(Labcd/Da;Labcd/na;)I

    move-result v7

    iget-object v8, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v8, v7}, Labcd/wb;->FH(I)V

    iget-object v7, p0, Labcd/Va;->we:Labcd/qb;

    invoke-virtual {v7, v5, v11}, Labcd/qb;->j6(II)V

    iget-object v7, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v7, v5, v6}, Labcd/wb;->DW(ILjava/lang/Object;)V

    invoke-virtual {v4, v6}, Labcd/Sa;->j6(Labcd/Sa;)V

    iget-object v5, p0, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v5, v4}, Labcd/Va$b;->j6(Labcd/Sa;)V

    :goto_127
    invoke-interface {v10, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cc

    :cond_12b
    new-instance v6, Labcd/Sa;

    iget-object v7, p0, Labcd/Va;->u7:Labcd/La;

    invoke-direct {v6, v7}, Labcd/Sa;-><init>(Labcd/La;)V

    iget-object v7, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v7, v5, v6}, Labcd/wb;->DW(ILjava/lang/Object;)V

    iget-object v7, p0, Labcd/Va;->we:Labcd/qb;

    invoke-virtual {v7, v5, v11}, Labcd/qb;->j6(II)V

    invoke-virtual {v4, v6}, Labcd/Sa;->j6(Labcd/Sa;)V

    iget-object v5, p0, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v5, v4}, Labcd/Va$b;->j6(Labcd/Sa;)V

    goto :goto_127

    :cond_145
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_149
    :goto_149
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_163

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/na;

    invoke-interface {v10, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_149

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_162
    .catchall {:try_start_0 .. :try_end_162} :catchall_164

    goto :goto_149

    :cond_163
    return-object v0

    :catchall_164
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_179

    const-wide v2, 0x40c1cceec1dc091cL  # 9113.865291122864

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_179
    goto :goto_17b

    :goto_17a
    throw v0

    :goto_17b
    goto :goto_17a
.end method

.method private j6(II)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x12da2e1bd4ce7c7cL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x4132369da6f5d1bL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    if-ge p1, p2, :cond_5c

    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Va;->Ws:[J

    add-int/2addr v0, p1

    aget-wide v0, v1, v0
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_5d

    move v2, p1

    move v3, p2

    :cond_23
    :goto_23
    if-gt v2, v3, :cond_52

    :goto_25
    :try_start_25
    iget-object v4, p0, Labcd/Va;->Ws:[J

    aget-wide v5, v4, v2

    cmp-long v4, v5, v0

    if-gez v4, :cond_30

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_30
    :goto_30
    iget-object v4, p0, Labcd/Va;->Ws:[J

    aget-wide v5, v4, v3

    cmp-long v7, v0, v5

    if-gez v7, :cond_3b

    add-int/lit8 v3, v3, -0x1

    goto :goto_30

    :cond_3b
    if-gt v2, v3, :cond_23

    iget-object v7, p0, Labcd/Va;->J8:[I

    aget v8, v7, v3

    aget v9, v7, v2

    aput v9, v7, v3

    aput v8, v7, v2

    aget-wide v7, v4, v2

    aput-wide v7, v4, v3

    aput-wide v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    :cond_52
    invoke-direct {p0, p1, v3}, Labcd/Va;->j6(II)V

    invoke-direct {p0, v2, p2}, Labcd/Va;->j6(II)V
    :try_end_58
    .catchall {:try_start_25 .. :try_end_58} :catchall_59

    goto :goto_5c

    :catchall_59
    move-exception p1

    move p2, v3

    goto :goto_60

    :cond_5c
    :goto_5c
    return-void

    :catchall_5d
    move-exception v0

    move v2, p1

    move-object p1, v0

    :goto_60
    sget-boolean v0, Labcd/Va;->v5:Z

    if-eqz v0, :cond_79

    const-wide v3, 0x4132369da6f5d1bL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, p1

    move-wide v2, v3

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_79
    goto :goto_7b

    :goto_7a
    throw p1

    :goto_7b
    goto :goto_7a
.end method

.method private j6(J)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0xadcf9dfc571a7abL
    .end annotation

    const-wide v0, 0x25044fd099751e0L

    :try_start_5
    sget-boolean v2, Labcd/Va;->Hw:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_20

    new-instance v2, Labcd/wb;

    invoke-direct {v2}, Labcd/wb;-><init>()V

    iput-object v2, p0, Labcd/Va;->EQ:Labcd/wb;

    goto/16 :goto_c1

    :cond_20
    iget-object v4, p0, Labcd/Va;->J8:[I

    if-eqz v4, :cond_2d

    array-length v4, v4

    iget-object v5, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v5}, Labcd/wb;->DW()I

    move-result v5

    if-ge v4, v5, :cond_41

    :cond_2d
    iget-object v4, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v4}, Labcd/wb;->DW()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Labcd/Va;->J8:[I

    iget-object v4, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v4}, Labcd/wb;->DW()I

    move-result v4

    new-array v4, v4, [J

    iput-object v4, p0, Labcd/Va;->Ws:[J

    :cond_41
    iget-object v4, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v4, v4, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v4}, Labcd/wb$a;->DW()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_4a
    :goto_4a
    iget-object v6, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v6, v6, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v6}, Labcd/wb$a;->j6()Z

    move-result v6

    if-eqz v6, :cond_94

    iget-object v6, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v6, v6, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v6}, Labcd/wb$a;->FH()I

    move-result v6

    iget-object v7, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v7, v7, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v7}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Labcd/Sa;

    invoke-virtual {v7}, Labcd/Sa;->Mr()J

    move-result-wide v7

    iget-object v9, p0, Labcd/Va;->J0:Labcd/sb;

    invoke-virtual {v9, v6}, Labcd/sb;->DW(I)J

    move-result-wide v9

    cmp-long v11, v7, v2

    if-lez v11, :cond_4a

    cmp-long v7, v9, v2

    if-lez v7, :cond_4a

    iget-object v7, p0, Labcd/Va;->J8:[I

    aput v6, v7, v5

    iget-object v7, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v7, v7, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v7, v6}, Labcd/Ea;->gn(I)Labcd/na;

    move-result-object v6

    invoke-interface {v6}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v6

    if-nez v6, :cond_8d

    const-wide/16 v6, 0x3e8

    add-long/2addr v9, v6

    :cond_8d
    iget-object v6, p0, Labcd/Va;->Ws:[J

    aput-wide v9, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    :cond_94
    add-int/lit8 v2, v5, -0x1

    invoke-direct {p0, v4, v2}, Labcd/Va;->j6(II)V

    invoke-virtual {p0}, Labcd/Va;->DW()J

    move-result-wide v2

    :goto_9d
    if-ge v4, v5, :cond_c1

    cmp-long v6, v2, p1

    if-gtz v6, :cond_a4

    goto :goto_c1

    :cond_a4
    iget-object v6, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v7, p0, Labcd/Va;->J8:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/Sa;

    iget-object v7, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v8, p0, Labcd/Va;->J8:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Labcd/wb;->FH(I)V

    invoke-virtual {v6}, Labcd/Sa;->Mr()J

    move-result-wide v6
    :try_end_bd
    .catchall {:try_start_5 .. :try_end_bd} :catchall_c2

    sub-long/2addr v2, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_9d

    :cond_c1
    :goto_c1
    return-void

    :catchall_c2
    move-exception v2

    sget-boolean v3, Labcd/Va;->v5:Z

    if-eqz v3, :cond_cf

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_cf
    goto :goto_d1

    :goto_d0
    throw v2

    :goto_d1
    goto :goto_d0
.end method

.method private j6(Labcd/Da;Ljava/util/Map;ZLjava/lang/String;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xece83d9ecfd080L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            "Ljava/util/Map<",
            "Labcd/na;",
            "Labcd/Sa;",
            ">;Z",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p4, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-wide v1, 0x6242f1a3c6366a61L  # 2.181811113939881E165

    invoke-static {v1, v2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_30
    :try_start_30
    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3e
    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Sa;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/na;

    invoke-virtual {v2}, Labcd/Sa;->j6()V

    invoke-virtual {v2, p1, v1}, Labcd/Sa;->j6(Labcd/Da;Labcd/na;)V

    invoke-virtual {p1}, Labcd/Da;->v5()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Labcd/Sa;->j6(J)V

    if-eqz p3, :cond_3e

    iget-object v2, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v2, v2, Labcd/La;->rN:Labcd/Ca;

    invoke-virtual {v2, p1, v1}, Labcd/Ca;->DW(Labcd/Da;Labcd/na;)V

    goto :goto_3e

    :cond_6d
    invoke-virtual {p1}, Labcd/Da;->aM()Ljava/io/Reader;

    move-result-object v0
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_71} :catch_89

    if-eqz p4, :cond_79

    :try_start_73
    iget-object v1, p0, Labcd/Va;->gn:Labcd/Va$a;

    invoke-virtual {v1, v0, p4, p5, p6}, Labcd/Va$a;->j6(Ljava/io/Reader;Ljava/lang/String;II)Ljava/io/Reader;

    move-result-object v0

    :cond_79
    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object p4

    invoke-interface {p4, p1, v0, p2, p3}, Labcd/la;->j6(Labcd/Da;Ljava/io/Reader;Ljava/util/Map;Z)V
    :try_end_80
    .catchall {:try_start_73 .. :try_end_80} :catchall_84

    :try_start_80
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    goto :goto_8a

    :catchall_84
    move-exception p1

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    throw p1
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_89} :catch_89

    :catch_89
    move-exception p1

    :cond_8a
    :goto_8a
    return-void
.end method


# virtual methods
.method public DW()J
    .registers 7

    const-wide v0, -0xd05759f88141a00L  # -7.248800442225262E245

    :try_start_5
    sget-boolean v2, Labcd/Va;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v2, v2, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->DW()V

    const-wide/16 v2, 0x0

    :goto_15
    iget-object v4, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v4, v4, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v4}, Labcd/wb$a;->j6()Z

    move-result v4

    if-eqz v4, :cond_2f

    iget-object v4, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v4, v4, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v4}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Sa;

    invoke-virtual {v4}, Labcd/Sa;->Mr()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_15

    :cond_2f
    iget-object v4, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v4, v4, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v4}, Labcd/wb$a;->DW()V

    :goto_36
    iget-object v4, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v4, v4, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v4}, Labcd/wb$a;->j6()Z

    move-result v4

    if-eqz v4, :cond_50

    iget-object v4, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v4, v4, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v4}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Sa;

    invoke-virtual {v4}, Labcd/Sa;->Mr()J

    move-result-wide v4
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_51

    add-long/2addr v2, v4

    goto :goto_36

    :cond_50
    return-wide v2

    :catchall_51
    move-exception v2

    sget-boolean v3, Labcd/Va;->v5:Z

    if-eqz v3, :cond_59

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_59
    goto :goto_5b

    :goto_5a
    throw v2

    :goto_5b
    goto :goto_5a
.end method

.method public DW(Labcd/Da;II)Labcd/Sa;
    .registers 20

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v10, p3

    :try_start_6
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_20

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v10}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1a0477fbf2acacefL  # 2.4085887810001994E-183

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    invoke-virtual/range {p1 .. p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    const/4 v11, 0x0

    if-eqz v0, :cond_105

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p1 .. p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v1

    invoke-interface {v1}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_38
    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/na;

    invoke-interface {v2}, Labcd/na;->u7()Labcd/qa;

    move-result-object v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Labcd/na;->u7()Labcd/qa;

    move-result-object v3

    invoke-interface {v3}, Labcd/qa;->j6()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Labcd/na;->u7()Labcd/qa;

    move-result-object v2

    invoke-interface {v2}, Labcd/qa;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_60
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    move-object v14, v11

    const v13, 0x7fffffff

    :cond_6b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_81
    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ab

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/na;

    invoke-interface {v2}, Labcd/na;->u7()Labcd/qa;

    move-result-object v3

    if-eqz v3, :cond_81

    invoke-interface {v2}, Labcd/na;->u7()Labcd/qa;

    move-result-object v3

    invoke-interface {v3}, Labcd/qa;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    iget-object v3, v8, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v3}, Labcd/Va$b;->j6()Labcd/Sa;

    move-result-object v3

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    :cond_ab
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Labcd/Va;->j6(Labcd/Da;Ljava/util/Map;ZLjava/lang/String;II)V

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c0
    :goto_c0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Sa;

    invoke-virtual {v2, v9, v10}, Labcd/Sa;->J0(II)I

    move-result v3

    if-nez v3, :cond_da

    move-object v14, v2

    goto :goto_e9

    :cond_da
    if-le v3, v13, :cond_e6

    invoke-virtual {v2}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-interface {v4}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v4

    if-eqz v4, :cond_c0

    :cond_e6
    move-object v14, v2

    move v13, v3

    goto :goto_c0

    :cond_e9
    :goto_e9
    if-eqz v14, :cond_105

    invoke-virtual {v14}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v0
    :try_end_ef
    .catchall {:try_start_6 .. :try_end_ef} :catchall_106

    move-object/from16 v5, p1

    :try_start_f1
    invoke-virtual {v8, v5, v0}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Sa;->Zo()J

    move-result-wide v1

    invoke-virtual {v14}, Labcd/Sa;->Zo()J

    move-result-wide v3
    :try_end_fd
    .catchall {:try_start_f1 .. :try_end_fd} :catchall_103

    cmp-long v5, v1, v3

    if-nez v5, :cond_102

    return-object v14

    :cond_102
    return-object v0

    :catchall_103
    move-exception v0

    goto :goto_109

    :cond_105
    return-object v11

    :catchall_106
    move-exception v0

    move-object/from16 v5, p1

    :goto_109
    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_124

    const-wide v2, 0x1a0477fbf2acacefL  # 2.4085887810001994E-183

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v10}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_124
    goto :goto_126

    :goto_125
    throw v0

    :goto_126
    goto :goto_125
.end method

.method public DW(Labcd/Da;Labcd/na;)Labcd/Sa;
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x4287a8b610c7c567L  # -1.383624061202424E-12

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v0, v0, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v0, p1, p2}, Labcd/Ea;->j6(Labcd/Da;Labcd/na;)I

    move-result v0

    iget-object v1, p0, Labcd/Va;->J0:Labcd/sb;

    invoke-static {}, Labcd/yc;->DW()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Labcd/sb;->j6(IJ)V

    iget-object v1, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v1, v0}, Labcd/wb;->j6(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Labcd/Va;->we:Labcd/qb;

    invoke-virtual {v1, v0}, Labcd/qb;->DW(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v0, v3}, Labcd/qb;->j6(II)V

    iget-object v1, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v1, v0}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    invoke-virtual {v0}, Labcd/Sa;->j3()Z

    move-result v1

    if-eqz v1, :cond_49

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    invoke-virtual/range {v1 .. v8}, Labcd/Va;->j6(Labcd/Da;Labcd/na;Labcd/Sa;ZLjava/lang/String;II)V

    :cond_49
    return-object v0

    :cond_4a
    iget-object v1, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v1, v0}, Labcd/wb;->j6(I)Z

    move-result v1

    if-eqz v1, :cond_7b

    iget-object v1, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v1, v0}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Sa;

    iget-object v3, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v3, v0, v1}, Labcd/wb;->DW(ILjava/lang/Object;)V

    iget-object v3, p0, Labcd/Va;->we:Labcd/qb;

    invoke-virtual {v3, v0, v2}, Labcd/qb;->j6(II)V

    iget-object v2, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v2, v0}, Labcd/wb;->FH(I)V

    invoke-virtual {v1}, Labcd/Sa;->j3()Z

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v1

    invoke-virtual/range {v3 .. v10}, Labcd/Va;->j6(Labcd/Da;Labcd/na;Labcd/Sa;ZLjava/lang/String;II)V

    :cond_7a
    return-object v1

    :cond_7b
    invoke-virtual {p0}, Labcd/Va;->DW()J

    move-result-wide v3

    sget-wide v5, Labcd/Va;->DW:J

    cmp-long v1, v3, v5

    if-ltz v1, :cond_cd

    iget-object v1, p0, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v1}, Labcd/Va$b;->j6()Labcd/Sa;

    move-result-object v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v1

    invoke-virtual/range {v3 .. v10}, Labcd/Va;->j6(Labcd/Da;Labcd/na;Labcd/Sa;ZLjava/lang/String;II)V

    invoke-virtual {v1}, Labcd/Sa;->Mr()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Labcd/Va;->DW(J)Labcd/Sa;

    move-result-object v3

    if-eqz v3, :cond_c8

    iget-object v4, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v4, v4, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v3}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v5

    invoke-virtual {v3}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Labcd/Ea;->j6(Labcd/Da;Labcd/na;)I

    move-result v4

    invoke-virtual {v1, v3}, Labcd/Sa;->j6(Labcd/Sa;)V

    iget-object v5, p0, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v5, v1}, Labcd/Va$b;->j6(Labcd/Sa;)V

    iget-object v1, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v1, v4}, Labcd/wb;->FH(I)V

    iget-object v1, p0, Labcd/Va;->we:Labcd/qb;

    invoke-virtual {v1, v0, v2}, Labcd/qb;->j6(II)V

    iget-object v1, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v1, v0, v3}, Labcd/wb;->DW(ILjava/lang/Object;)V

    return-object v3

    :cond_c8
    iget-object v3, p0, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v3, v1}, Labcd/Va$b;->j6(Labcd/Sa;)V

    :cond_cd
    new-instance v9, Labcd/Sa;

    iget-object v1, p0, Labcd/Va;->u7:Labcd/La;

    invoke-direct {v9, v1}, Labcd/Sa;-><init>(Labcd/La;)V

    iget-object v1, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v1, v0, v9}, Labcd/wb;->DW(ILjava/lang/Object;)V

    iget-object v1, p0, Labcd/Va;->we:Labcd/qb;

    invoke-virtual {v1, v0, v2}, Labcd/qb;->j6(II)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v9

    invoke-virtual/range {v1 .. v8}, Labcd/Va;->j6(Labcd/Da;Labcd/na;Labcd/Sa;ZLjava/lang/String;II)V
    :try_end_e9
    .catchall {:try_start_0 .. :try_end_e9} :catchall_ea

    return-object v9

    :catchall_ea
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_fb

    const-wide v2, -0x4287a8b610c7c567L  # -1.383624061202424E-12

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_fb
    throw v0
.end method

.method public DW(Labcd/Da;Labcd/na;IILjava/lang/String;)Labcd/Sa;
    .registers 16

    const-string v0, ";"

    :try_start_2
    sget-boolean v1, Labcd/Va;->Hw:Z

    if-eqz v1, :cond_1c

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x23bbae2f4f3157adL

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, p5

    invoke-static/range {v2 .. v9}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual {p0, p1, p2}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v1

    iget-object v5, p0, Labcd/Va;->Zo:Labcd/Sa;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v2 .. v9}, Labcd/Va;->j6(Labcd/Da;Labcd/na;Labcd/Sa;ZLjava/lang/String;II)V

    invoke-virtual {v1}, Labcd/Sa;->Zo()J

    move-result-wide v2

    iget-object v0, p0, Labcd/Va;->Zo:Labcd/Sa;

    invoke-virtual {v0}, Labcd/Sa;->Zo()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_4e

    iget-object p1, p0, Labcd/Va;->Zo:Labcd/Sa;
    :try_end_4d
    .catchall {:try_start_2 .. :try_end_4d} :catchall_4f

    return-object p1

    :cond_4e
    return-object v1

    :catchall_4f
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_6b

    const-wide v2, 0x23bbae2f4f3157adL

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6b
    throw v0
.end method

.method public DW(Labcd/Da;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            ")",
            "Ljava/util/List<",
            "Labcd/Sa;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x1615b4d866704cbdL  # 2.769308027433077E-202

    :try_start_5
    sget-boolean v2, Labcd/Va;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Labcd/Va;->j6(Labcd/Da;Z)Ljava/util/List;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object p1

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Va;->v5:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public FH(Labcd/Da;II)Labcd/Sa;
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xbf74c2c147957bdL

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    invoke-virtual {p0, p1}, Labcd/Va;->DW(Labcd/Da;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const v3, 0x7fffffff

    move-object v3, v1

    const v4, 0x7fffffff

    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Sa;

    if-nez v1, :cond_3d

    move-object v1, v5

    :cond_3d
    invoke-virtual {v5, p2, p3}, Labcd/Sa;->J0(II)I

    move-result v6

    if-nez v6, :cond_45

    move-object v3, v5

    goto :goto_4a

    :cond_45
    if-ge v6, v4, :cond_2e

    move-object v3, v5

    move v4, v6

    goto :goto_2e

    :cond_4a
    :goto_4a
    if-nez v3, :cond_4d

    goto :goto_4e

    :cond_4d
    move-object v1, v3

    :goto_4e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_52
    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Sa;

    if-eq v2, v1, :cond_52

    invoke-virtual {p0, v2}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_63
    .catchall {:try_start_0 .. :try_end_63} :catchall_65

    goto :goto_52

    :cond_64
    return-object v1

    :catchall_65
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_7f

    const-wide v2, 0xbf74c2c147957bdL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7f
    goto :goto_81

    :goto_80
    throw v0

    :goto_81
    goto :goto_80
.end method

.method protected FH()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x4552aa16b2b4ebc9L
    .end annotation

    const-wide v0, -0x3c95383cbb855a3cL

    :try_start_5
    sget-boolean v2, Labcd/Va;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v2, v2, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->DW()V

    :goto_13
    iget-object v2, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v2, v2, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->j6()Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v2, v2, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->FH()I

    move-result v2

    iget-object v3, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v3, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v3}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Sa;

    iget-object v4, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v4, v2, v3}, Labcd/wb;->DW(ILjava/lang/Object;)V

    goto :goto_13

    :cond_35
    iget-object v2, p0, Labcd/Va;->we:Labcd/qb;

    invoke-virtual {v2}, Labcd/qb;->j6()V

    iget-object v2, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v2}, Labcd/wb;->j6()V

    iget-object v2, p0, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v2}, Labcd/Va$b;->DW()V
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_45

    return-void

    :catchall_45
    move-exception v2

    sget-boolean v3, Labcd/Va;->v5:Z

    if-eqz v3, :cond_4d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4d
    goto :goto_4f

    :goto_4e
    throw v2

    :goto_4f
    goto :goto_4e
.end method

.method protected Hw()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x14138d80f3844ae8L
    .end annotation

    const-wide v0, 0xe9817da823f8e3bL

    :try_start_5
    sget-boolean v2, Labcd/Va;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Labcd/Va;->j6(J)V

    iget-object v2, p0, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v2}, Labcd/Va$b;->FH()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Labcd/Va;->v5:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public j6(Labcd/Da;II)Labcd/Sa;
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x23ba54a10f50ab60L  # -3.1500343430629335E136

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    invoke-virtual {p0, p1}, Labcd/Va;->j6(Labcd/Da;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const v3, 0x7fffffff

    move-object v3, v1

    const v4, 0x7fffffff

    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Sa;

    if-nez v1, :cond_3d

    move-object v1, v5

    :cond_3d
    invoke-virtual {v5, p2, p3}, Labcd/Sa;->J0(II)I

    move-result v6

    if-nez v6, :cond_45

    move-object v3, v5

    goto :goto_4a

    :cond_45
    if-ge v6, v4, :cond_2e

    move-object v3, v5

    move v4, v6

    goto :goto_2e

    :cond_4a
    :goto_4a
    if-nez v3, :cond_4d

    goto :goto_4e

    :cond_4d
    move-object v1, v3

    :goto_4e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_52
    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Sa;

    if-eq v2, v1, :cond_52

    invoke-virtual {p0, v2}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_63
    .catchall {:try_start_0 .. :try_end_63} :catchall_65

    goto :goto_52

    :cond_64
    return-object v1

    :catchall_65
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_7f

    const-wide v2, -0x23ba54a10f50ab60L  # -3.1500343430629335E136

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7f
    goto :goto_81

    :goto_80
    throw v0

    :goto_81
    goto :goto_80
.end method

.method public j6(Labcd/Da;Labcd/na;)Labcd/Sa;
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x39322ce99585a22dL  # 3.5004622627039834E-33

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Va;->j6(Labcd/Da;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Sa;

    invoke-virtual {v2}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v3

    if-eq v3, p2, :cond_2b

    invoke-virtual {p0, v2}, Labcd/Va;->j6(Labcd/Sa;)V

    goto :goto_15

    :cond_2b
    move-object v1, v2

    goto :goto_15

    :cond_2d
    if-nez v1, :cond_34

    invoke-virtual {p0, p1, p2}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object p1
    :try_end_33
    .catchall {:try_start_0 .. :try_end_33} :catchall_35

    return-object p1

    :cond_34
    return-object v1

    :catchall_35
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_46

    const-wide v2, 0x39322ce99585a22dL  # 3.5004622627039834E-33

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    goto :goto_48

    :goto_47
    throw v0

    :goto_48
    goto :goto_47
.end method

.method public j6(Labcd/Da;Labcd/na;IILjava/lang/String;)Labcd/Sa;
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_1a

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x61913a8f7b9858bfL  # 9.688833683406609E161

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    invoke-virtual {p0, p1, p2}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v0

    iget-object v4, p0, Labcd/Va;->Zo:Labcd/Sa;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    move v7, p3

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Labcd/Va;->j6(Labcd/Da;Labcd/na;Labcd/Sa;ZLjava/lang/String;II)V

    invoke-virtual {v0}, Labcd/Sa;->Zo()J

    move-result-wide v1

    iget-object v3, p0, Labcd/Va;->Zo:Labcd/Sa;

    invoke-virtual {v3}, Labcd/Sa;->Zo()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_3b

    iget-object p1, p0, Labcd/Va;->Zo:Labcd/Sa;
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3c

    return-object p1

    :cond_3b
    return-object v0

    :catchall_3c
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_58

    const-wide v2, 0x61913a8f7b9858bfL  # 9.688833683406609E161

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    throw v0
.end method

.method public j6(Labcd/Da;Labcd/na;IILjava/lang/String;I)Labcd/Sa;
    .registers 18

    move-object v8, p0

    move-object/from16 v0, p5

    move/from16 v1, p6

    sget-boolean v2, Labcd/Va;->Hw:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_38

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v3

    new-instance v5, Ljava/lang/Integer;

    move v6, p3

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v7, 0x2

    aput-object v5, v2, v7

    new-instance v5, Ljava/lang/Integer;

    move v7, p4

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v9, 0x3

    aput-object v5, v2, v9

    const/4 v5, 0x4

    aput-object v0, v2, v5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v9, 0x5

    aput-object v5, v2, v9

    const-wide v9, -0x978190d6b34df90L  # -9.408123280026876E262

    invoke-static {v9, v10, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_3a

    :cond_38
    move v6, p3

    move v7, p4

    :goto_3a
    invoke-virtual {p0, p1, p2}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v9

    iget-object v5, v8, Labcd/Va;->Zo:Labcd/Sa;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ";"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v1, v3

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "i;"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v5

    move-object v5, v10

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Labcd/Va;->j6(Labcd/Da;Labcd/na;Labcd/Sa;ZLjava/lang/String;II)V

    invoke-virtual {v9}, Labcd/Sa;->Zo()J

    move-result-wide v0

    iget-object v2, v8, Labcd/Va;->Zo:Labcd/Sa;

    invoke-virtual {v2}, Labcd/Sa;->Zo()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_77

    iget-object v0, v8, Labcd/Va;->Zo:Labcd/Sa;

    return-object v0

    :cond_77
    return-object v9
.end method

.method public j6()Labcd/_b;
    .registers 6

    const-wide v0, -0x22bea7d57e9cbfcbL  # -1.6523697243382276E141

    :try_start_5
    sget-boolean v2, Labcd/Va;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/_b;

    iget-object v3, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v3, v3, Labcd/La;->Mr:Labcd/Ea;

    invoke-direct {v2, v3}, Labcd/_b;-><init>(Labcd/Ea;)V

    iget-object v3, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v3, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v3}, Labcd/wb$a;->DW()V

    :goto_1c
    iget-object v3, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v3, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v3}, Labcd/wb$a;->j6()Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v3, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v3}, Labcd/wb$a;->FH()I

    move-result v3

    iget-object v4, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v4, v4, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v4, v3}, Labcd/Ea;->Zo(I)Labcd/Da;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/_b;->DW(Labcd/Da;)V
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_3b

    goto :goto_1c

    :cond_3a
    return-object v2

    :catchall_3b
    move-exception v2

    sget-boolean v3, Labcd/Va;->v5:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_43
    goto :goto_45

    :goto_44
    throw v2

    :goto_45
    goto :goto_44
.end method

.method public j6(Labcd/Da;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            ")",
            "Ljava/util/List<",
            "Labcd/Sa;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x34d04f1570602ccL  # 9.08743406741194E-293

    :try_start_5
    sget-boolean v2, Labcd/Va;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Labcd/Va;->j6(Labcd/Da;Z)Ljava/util/List;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object p1

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Va;->v5:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Labcd/Da;IILjava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Labcd/Sa;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_19

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x48d120f1a011cb3bL  # -6.921587780166176E-43

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v1

    invoke-interface {v1}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/na;

    iget-object v3, p0, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v3}, Labcd/Va$b;->j6()Labcd/Sa;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_40
    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v5, p4

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Labcd/Va;->j6(Labcd/Da;Ljava/util/Map;ZLjava/lang/String;II)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Sa;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_66
    .catchall {:try_start_0 .. :try_end_66} :catchall_68

    goto :goto_57

    :cond_67
    return-object v1

    :catchall_68
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_83

    const-wide v2, -0x48d120f1a011cb3bL  # -6.921587780166176E-43

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_83
    goto :goto_85

    :goto_84
    throw v0

    :goto_85
    goto :goto_84
.end method

.method public j6(Labcd/Da;Labcd/na;Labcd/Sa;ZLjava/lang/String;II)V
    .registers 20

    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    move-object v10, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    sget-boolean v7, Labcd/Va;->Hw:Z

    const/4 v11, 0x0

    if-eqz v7, :cond_3f

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v11

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v8, 0x2

    aput-object v10, v7, v8

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, v3}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v9, 0x3

    aput-object v8, v7, v9

    const/4 v8, 0x4

    aput-object v4, v7, v8

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v9, 0x5

    aput-object v8, v7, v9

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v9, 0x6

    aput-object v8, v7, v9

    const-wide v8, 0x3ab365c78fff509bL  # 6.267694950114163E-26

    invoke-static {v8, v9, p0, v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_3f
    :try_start_3f
    invoke-virtual {p3}, Labcd/Sa;->j6()V

    invoke-virtual {p3, p1, p2}, Labcd/Sa;->j6(Labcd/Da;Labcd/na;)V

    invoke-virtual {p1}, Labcd/Da;->v5()J

    move-result-wide v7

    invoke-virtual {p3, v7, v8}, Labcd/Sa;->j6(J)V

    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v7

    if-eqz v7, :cond_7f

    if-eqz v3, :cond_5b

    iget-object v7, v1, Labcd/Va;->u7:Labcd/La;

    iget-object v7, v7, Labcd/La;->rN:Labcd/Ca;

    invoke-virtual {v7, p1, p2}, Labcd/Ca;->DW(Labcd/Da;Labcd/na;)V

    :cond_5b
    invoke-virtual {p1}, Labcd/Da;->aM()Ljava/io/Reader;

    move-result-object v7
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_5f} :catch_90

    if-eqz v4, :cond_67

    :try_start_61
    iget-object v8, v1, Labcd/Va;->gn:Labcd/Va$a;

    invoke-virtual {v8, v7, v4, v5, v6}, Labcd/Va$a;->j6(Ljava/io/Reader;Ljava/lang/String;II)Ljava/io/Reader;

    move-result-object v7

    :cond_67
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v2

    invoke-interface {v2, p1, v7, v4, v3}, Labcd/la;->j6(Labcd/Da;Ljava/io/Reader;Ljava/util/Map;Z)V
    :try_end_76
    .catchall {:try_start_61 .. :try_end_76} :catchall_7a

    :try_start_76
    invoke-virtual {v7}, Ljava/io/Reader;->close()V

    goto :goto_a1

    :catchall_7a
    move-exception v0

    invoke-virtual {v7}, Ljava/io/Reader;->close()V

    throw v0

    :cond_7f
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v5, v11, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v2, p3

    invoke-virtual/range {v2 .. v9}, Labcd/Sa;->j6(IZ[IIIII)I

    move-result v0

    invoke-virtual {p3, v0}, Labcd/Sa;->DW(I)V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_8f} :catch_90

    goto :goto_a1

    :catch_90
    move-exception v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v5, v11, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v2, p3

    invoke-virtual/range {v2 .. v9}, Labcd/Sa;->j6(IZ[IIIII)I

    move-result v0

    invoke-virtual {p3, v0}, Labcd/Sa;->DW(I)V

    :goto_a1
    return-void
.end method

.method public j6(Labcd/Sa;)V
    .registers 10

    const-wide v0, -0x5184964b9e2aa7c5L  # -8.819345377465421E-85

    :try_start_5
    sget-boolean v2, Labcd/Va;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v2, v2, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v3

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Labcd/Ea;->j6(Labcd/Da;Labcd/na;)I

    move-result v2

    iget-object v3, p0, Labcd/Va;->we:Labcd/qb;

    invoke-virtual {v3, v2}, Labcd/qb;->DW(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_4f

    iget-object v3, p0, Labcd/Va;->we:Labcd/qb;

    invoke-virtual {v3, v2}, Labcd/qb;->FH(I)V

    iget-object v3, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v3, v2}, Labcd/wb;->FH(I)V

    invoke-virtual {p1}, Labcd/Sa;->Mr()J

    move-result-wide v3

    sget-wide v5, Labcd/Va;->FH:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_3f

    iget-object v3, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v3, v2, p1}, Labcd/wb;->DW(ILjava/lang/Object;)V

    :cond_3f
    invoke-virtual {p0}, Labcd/Va;->DW()J

    move-result-wide v2

    sget-wide v4, Labcd/Va;->j6:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_54

    sget-wide v2, Labcd/Va;->DW:J

    invoke-direct {p0, v2, v3}, Labcd/Va;->j6(J)V

    goto :goto_54

    :cond_4f
    iget-object v4, p0, Labcd/Va;->we:Labcd/qb;

    invoke-virtual {v4, v2, v3}, Labcd/qb;->j6(II)V
    :try_end_54
    .catchall {:try_start_5 .. :try_end_54} :catchall_55

    :cond_54
    :goto_54
    return-void

    :catchall_55
    move-exception v2

    sget-boolean v3, Labcd/Va;->v5:Z

    if-eqz v3, :cond_5d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5d
    throw v2
.end method

.method protected v5()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x13c607adbeea7e60L
    .end annotation

    const-wide v0, -0x1a44dbf7adca9ca9L  # -1.1262097285199586E182

    :try_start_5
    sget-boolean v2, Labcd/Va;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v2, v2, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->DW()V

    :goto_13
    iget-object v2, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v2, v2, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->j6()Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v2, v2, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->FH()I

    move-result v2

    iget-object v3, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v3, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v3}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Sa;

    iget-object v4, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v4, v4, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v4, v2}, Labcd/Ea;->Zo(I)Labcd/Da;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Da;->v5()J

    move-result-wide v4

    invoke-virtual {v3}, Labcd/Sa;->v5()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-eqz v2, :cond_47

    invoke-virtual {v3}, Labcd/Sa;->j6()V

    goto :goto_13

    :cond_47
    invoke-virtual {v3}, Labcd/Sa;->DW()V

    goto :goto_13

    :cond_4b
    iget-object v2, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v2, v2, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->DW()V

    :goto_52
    iget-object v2, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v2, v2, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->j6()Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v2, v2, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v2}, Labcd/wb$a;->FH()I

    move-result v2

    iget-object v3, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v3, v3, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v3}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Sa;

    iget-object v4, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v4, v4, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v4, v2}, Labcd/Ea;->Zo(I)Labcd/Da;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Da;->v5()J

    move-result-wide v4

    invoke-virtual {v3}, Labcd/Sa;->v5()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-eqz v2, :cond_86

    invoke-virtual {v3}, Labcd/Sa;->j6()V

    goto :goto_52

    :cond_86
    invoke-virtual {v3}, Labcd/Sa;->DW()V
    :try_end_89
    .catchall {:try_start_5 .. :try_end_89} :catchall_8b

    goto :goto_52

    :cond_8a
    return-void

    :catchall_8b
    move-exception v2

    sget-boolean v3, Labcd/Va;->v5:Z

    if-eqz v3, :cond_93

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_93
    goto :goto_95

    :goto_94
    throw v2

    :goto_95
    goto :goto_94
.end method
