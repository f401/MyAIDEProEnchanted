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
            "Lwb",
            "<",
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
            "Lwb",
            "<",
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
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2b042ea2645e013cL
    .end annotation

    const-wide v8, 0x2617444e999570d8L    # 3.437153466138072E-125

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/Va;

    const-wide v2, 0x6403fc4d4597831L

    const-wide v4, 0x6403fc4d4597831L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2617444e999570d8L    # 3.437153466138072E-125

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const-wide/32 v0, 0x989680

    sput-wide v0, Labcd/Va;->j6:J

    const-wide/32 v0, 0x4c4b40

    sput-wide v0, Labcd/Va;->DW:J

    const-wide/32 v0, 0x4c4b40

    sput-wide v0, Labcd/Va;->FH:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/La;)V
    .registers 8

    const-wide v4, -0xc635297cfb16ec0L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc635297cfb16ec0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/Va$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labcd/Va$b;-><init>(Labcd/Va;Labcd/Ua;)V

    iput-object v0, p0, Labcd/Va;->VH:Labcd/Va$b;

    new-instance v0, Labcd/Va$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/Va$a;-><init>(Labcd/Ua;)V

    iput-object v0, p0, Labcd/Va;->gn:Labcd/Va$a;

    iput-object p1, p0, Labcd/Va;->u7:Labcd/La;

    new-instance v0, Labcd/wb;

    invoke-direct {v0}, Labcd/wb;-><init>()V

    iput-object v0, p0, Labcd/Va;->tp:Labcd/wb;

    new-instance v0, Labcd/wb;

    invoke-direct {v0}, Labcd/wb;-><init>()V

    iput-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    new-instance v0, Labcd/qb;

    invoke-direct {v0}, Labcd/qb;-><init>()V

    iput-object v0, p0, Labcd/Va;->we:Labcd/qb;

    new-instance v0, Labcd/sb;

    invoke-direct {v0}, Labcd/sb;-><init>()V

    iput-object v0, p0, Labcd/Va;->J0:Labcd/sb;

    new-instance v0, Labcd/Sa;

    invoke-direct {v0, p1}, Labcd/Sa;-><init>(Labcd/La;)V

    iput-object v0, p0, Labcd/Va;->Zo:Labcd/Sa;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(J)Labcd/Sa;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x1580ac7b044d1a7cL
    .end annotation

    const-wide v8, 0x557e4ae677cf8f9bL    # 6.784764490680481E103

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const-wide v4, 0x557e4ae677cf8f9bL    # 6.784764490680481E103

    invoke-static {v4, v5, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->DW()V

    move-object v1, v2

    :cond_1
    :goto_0
    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    invoke-virtual {v0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v3

    invoke-interface {v3}, Labcd/na;->VH()Labcd/oa;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Labcd/Sa;->U2()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-gez v3, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Labcd/Sa;->U2()J

    move-result-wide v4

    invoke-virtual {v0}, Labcd/Sa;->U2()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    :cond_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    if-nez v1, :cond_6

    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->DW()V

    :cond_4
    :goto_1
    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    invoke-virtual {v0}, Labcd/Sa;->U2()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-gez v3, :cond_4

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Labcd/Sa;->U2()J

    move-result-wide v4

    invoke-virtual {v0}, Labcd/Sa;->U2()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_4

    :cond_5
    move-object v1, v0

    goto :goto_1

    :cond_6
    if-nez v1, :cond_9

    const-wide/16 v4, 0x0

    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->DW()V

    move-object v1, v2

    :cond_7
    :goto_2
    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    invoke-virtual {v0}, Labcd/Sa;->U2()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_7

    invoke-virtual {v0}, Labcd/Sa;->U2()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-object v1, v0

    move-wide v4, v2

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v8, v9, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v0

    :cond_9
    return-object v1
.end method

.method static synthetic j6(Labcd/Va;)Labcd/La;
    .registers 2

    iget-object v0, p0, Labcd/Va;->u7:Labcd/La;

    return-object v0
.end method

.method private j6(Labcd/Da;Z)Ljava/util/List;
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x42a79ba370754ebdL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Labcd/Sa;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, 0x40c1cceec1dc091cL    # 9113.865291122864

    invoke-static {v2, v3, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    invoke-interface {v0}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v8

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/na;

    if-eqz p2, :cond_2

    invoke-interface {v0}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_2
    iget-object v1, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v1, v1, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v1, p1, v0}, Labcd/Ea;->j6(Labcd/Da;Labcd/na;)I

    move-result v4

    iget-object v1, p0, Labcd/Va;->J0:Labcd/sb;

    invoke-static {}, Labcd/yc;->DW()J

    move-result-wide v10

    invoke-virtual {v1, v4, v10, v11}, Labcd/sb;->j6(IJ)V

    iget-object v1, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v1, v4}, Labcd/wb;->j6(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Labcd/Va;->we:Labcd/qb;

    iget-object v5, p0, Labcd/Va;->we:Labcd/qb;

    invoke-virtual {v5, v4}, Labcd/qb;->DW(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v4, v5}, Labcd/qb;->j6(II)V

    iget-object v1, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v1, v4}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Sa;

    invoke-virtual {v1}, Labcd/Sa;->j3()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Va;->v5:Z

    if-eqz v0, :cond_3

    const-wide v2, 0x40c1cceec1dc091cL    # 9113.865291122864

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    :try_start_1
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v1, v4}, Labcd/wb;->j6(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v1, v4}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Sa;

    iget-object v5, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v5, v4, v1}, Labcd/wb;->DW(ILjava/lang/Object;)V

    iget-object v5, p0, Labcd/Va;->we:Labcd/qb;

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Labcd/qb;->j6(II)V

    iget-object v5, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v5, v4}, Labcd/wb;->FH(I)V

    invoke-virtual {v1}, Labcd/Sa;->j3()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_6
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v1}, Labcd/Va$b;->j6()Labcd/Sa;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Labcd/Va;->j6(Labcd/Da;Ljava/util/Map;ZLjava/lang/String;II)V

    :cond_9
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Sa;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/na;

    iget-object v3, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v3, v3, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v3, p1, v0}, Labcd/Ea;->j6(Labcd/Da;Labcd/na;)I

    move-result v3

    invoke-virtual {p0}, Labcd/Va;->DW()J

    move-result-wide v4

    sget-wide v10, Labcd/Va;->DW:J

    cmp-long v4, v4, v10

    if-ltz v4, :cond_a

    invoke-virtual {v1}, Labcd/Sa;->Mr()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Labcd/Va;->DW(J)Labcd/Sa;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v5, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v5, v5, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v4}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v6

    invoke-virtual {v4}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Labcd/Ea;->j6(Labcd/Da;Labcd/na;)I

    move-result v5

    iget-object v6, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v6, v5}, Labcd/wb;->FH(I)V

    iget-object v5, p0, Labcd/Va;->we:Labcd/qb;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Labcd/qb;->j6(II)V

    iget-object v5, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v5, v3, v4}, Labcd/wb;->DW(ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Labcd/Sa;->j6(Labcd/Sa;)V

    iget-object v3, p0, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v3, v1}, Labcd/Va$b;->j6(Labcd/Sa;)V

    invoke-interface {v9, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    new-instance v4, Labcd/Sa;

    iget-object v5, p0, Labcd/Va;->u7:Labcd/La;

    invoke-direct {v4, v5}, Labcd/Sa;-><init>(Labcd/La;)V

    iget-object v5, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v5, v3, v4}, Labcd/wb;->DW(ILjava/lang/Object;)V

    iget-object v5, p0, Labcd/Va;->we:Labcd/qb;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Labcd/qb;->j6(II)V

    invoke-virtual {v1, v4}, Labcd/Sa;->j6(Labcd/Sa;)V

    iget-object v3, p0, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v3, v1}, Labcd/Va$b;->j6(Labcd/Sa;)V

    invoke-interface {v9, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_b
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/na;

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_d
    return-object v7
.end method

.method private j6(II)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x12da2e1bd4ce7c7cL
    .end annotation

    const-wide v2, 0x4132369da6f5d1bL

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x4132369da6f5d1bL

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-ge p1, p2, :cond_6

    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Va;->Ws:[J

    add-int/2addr v0, p1

    aget-wide v4, v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move v0, p1

    move v1, p2

    :cond_1
    :goto_0
    if-gt v0, v1, :cond_5

    :goto_1
    :try_start_1
    iget-object v6, p0, Labcd/Va;->Ws:[J

    aget-wide v6, v6, v0

    cmp-long v6, v6, v4

    if-gez v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v6, p0, Labcd/Va;->Ws:[J

    aget-wide v6, v6, v1

    cmp-long v6, v4, v6

    if-gez v6, :cond_3

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    if-gt v0, v1, :cond_1

    iget-object v6, p0, Labcd/Va;->J8:[I

    aget v6, v6, v1

    iget-object v7, p0, Labcd/Va;->J8:[I

    iget-object v8, p0, Labcd/Va;->J8:[I

    aget v8, v8, v0

    aput v8, v7, v1

    iget-object v7, p0, Labcd/Va;->J8:[I

    aput v6, v7, v0

    iget-object v6, p0, Labcd/Va;->Ws:[J

    aget-wide v6, v6, v1

    iget-object v8, p0, Labcd/Va;->Ws:[J

    iget-object v9, p0, Labcd/Va;->Ws:[J

    aget-wide v10, v9, v0

    aput-wide v10, v8, v1

    iget-object v8, p0, Labcd/Va;->Ws:[J

    aput-wide v6, v8, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception v4

    move p1, v0

    move p2, v1

    move-object v1, v4

    :goto_3
    sget-boolean v0, Labcd/Va;->v5:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    :try_start_2
    invoke-direct {p0, p1, v1}, Labcd/Va;->j6(II)V

    invoke-direct {p0, v0, p2}, Labcd/Va;->j6(II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    return-void

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method private j6(J)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0xadcf9dfc571a7abL
    .end annotation

    const-wide v10, 0x25044fd099751e0L

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const-wide v2, 0x25044fd099751e0L

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    cmp-long v0, p1, v8

    if-nez v0, :cond_2

    new-instance v0, Labcd/wb;

    invoke-direct {v0}, Labcd/wb;-><init>()V

    iput-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Labcd/Va;->J8:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/Va;->J8:[I

    array-length v0, v0

    iget-object v1, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v1}, Labcd/wb;->DW()I

    move-result v1

    if-ge v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v0}, Labcd/wb;->DW()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Va;->J8:[I

    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v0}, Labcd/wb;->DW()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Labcd/Va;->Ws:[J

    :cond_4
    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->DW()V

    move v5, v4

    :cond_5
    :goto_0
    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->FH()I

    move-result v2

    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    invoke-virtual {v0}, Labcd/Sa;->Mr()J

    move-result-wide v6

    iget-object v0, p0, Labcd/Va;->J0:Labcd/sb;

    invoke-virtual {v0, v2}, Labcd/sb;->DW(I)J

    move-result-wide v0

    cmp-long v3, v6, v8

    if-lez v3, :cond_5

    cmp-long v3, v0, v8

    if-lez v3, :cond_5

    iget-object v3, p0, Labcd/Va;->J8:[I

    aput v2, v3, v5

    iget-object v3, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v3, v3, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v3, v2}, Labcd/Ea;->gn(I)Labcd/na;

    move-result-object v2

    invoke-interface {v2}, Labcd/na;->Hw()Labcd/ga;

    move-result-object v2

    if-nez v2, :cond_6

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    :cond_6
    iget-object v2, p0, Labcd/Va;->Ws:[J

    aput-wide v0, v2, v5

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    add-int/lit8 v1, v5, -0x1

    invoke-direct {p0, v0, v1}, Labcd/Va;->j6(II)V

    invoke-virtual {p0}, Labcd/Va;->DW()J

    move-result-wide v0

    move-wide v2, v0

    :goto_1
    if-ge v4, v5, :cond_1

    cmp-long v0, v2, p1

    if-lez v0, :cond_1

    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v1, p0, Labcd/Va;->J8:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    iget-object v1, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v6, p0, Labcd/Va;->J8:[I

    aget v6, v6, v4

    invoke-virtual {v1, v6}, Labcd/wb;->FH(I)V

    invoke-virtual {v0}, Labcd/Sa;->Mr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    sub-long v0, v2, v0

    add-int/lit8 v4, v4, 0x1

    move-wide v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v0, v10, v11, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v0
.end method

.method private j6(Labcd/Da;Ljava/util/Map;ZLjava/lang/String;II)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0xece83d9ecfd080L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            "Ljava/util/Map",
            "<",
            "Labcd/na;",
            "Labcd/Sa;",
            ">;Z",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6242f1a3c6366a61L    # 2.181811113939881E165

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Sa;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/na;

    invoke-virtual {v1}, Labcd/Sa;->j6()V

    invoke-virtual {v1, p1, v0}, Labcd/Sa;->j6(Labcd/Da;Labcd/na;)V

    invoke-virtual {p1}, Labcd/Da;->v5()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Labcd/Sa;->j6(J)V

    if-eqz p3, :cond_1

    iget-object v1, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v1, v1, Labcd/La;->rN:Labcd/Ca;

    invoke-virtual {v1, p1, v0}, Labcd/Ca;->DW(Labcd/Da;Labcd/na;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p1}, Labcd/Da;->aM()Ljava/io/Reader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz p4, :cond_4

    :try_start_1
    iget-object v1, p0, Labcd/Va;->gn:Labcd/Va$a;

    invoke-virtual {v1, v0, p4, p5, p6}, Labcd/Va$a;->j6(Ljava/io/Reader;Ljava/lang/String;II)Ljava/io/Reader;

    move-result-object v0

    :cond_4
    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v1

    invoke-interface {v1, p1, v0, p2, p3}, Labcd/la;->j6(Labcd/Da;Ljava/io/Reader;Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
.end method


# virtual methods
.method public DW()J
    .registers 7

    const-wide v4, -0xd05759f88141a00L    # -7.248800442225262E245

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xd05759f88141a00L    # -7.248800442225262E245

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const-wide/16 v2, 0x0

    iget-object v0, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->DW()V

    :goto_0
    iget-object v0, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    invoke-virtual {v0}, Labcd/Sa;->Mr()J

    move-result-wide v0

    add-long/2addr v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->DW()V

    :goto_1
    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    invoke-virtual {v0}, Labcd/Sa;->Mr()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-wide v2
.end method

.method public DW(Labcd/Da;II)Labcd/Sa;
    .registers 15

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x1a0477fbf2acacefL    # 2.4085887810001994E-183

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    invoke-interface {v0}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/na;

    invoke-interface {v0}, Labcd/na;->u7()Labcd/qa;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Labcd/na;->u7()Labcd/qa;

    move-result-object v3

    invoke-interface {v3}, Labcd/qa;->j6()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Labcd/na;->u7()Labcd/qa;

    move-result-object v0

    invoke-interface {v0}, Labcd/qa;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    sget-boolean v0, Labcd/Va;->v5:Z

    if-eqz v0, :cond_2

    const-wide v2, 0x1a0477fbf2acacefL    # 2.4085887810001994E-183

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v7, 0x0

    const v8, 0x7fffffff

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/na;

    invoke-interface {v0}, Labcd/na;->u7()Labcd/qa;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Labcd/na;->u7()Labcd/qa;

    move-result-object v3

    invoke-interface {v3}, Labcd/qa;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v3}, Labcd/Va$b;->j6()Labcd/Sa;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Labcd/Va;->j6(Labcd/Da;Ljava/util/Map;ZLjava/lang/String;II)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v7

    move v2, v8

    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    invoke-virtual {v0, p2, p3}, Labcd/Sa;->J0(II)I

    move-result v3

    if-nez v3, :cond_7

    :goto_5
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Labcd/Sa;->J8()Labcd/na;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    invoke-virtual {p0, p1, v1}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Sa;->Zo()J

    move-result-wide v2

    invoke-virtual {v0}, Labcd/Sa;->Zo()J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    :goto_6
    return-object v0

    :cond_7
    if-le v3, v2, :cond_8

    :try_start_3
    invoke-virtual {v0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v5

    invoke-interface {v5}, Labcd/na;->Hw()Labcd/ga;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v5

    if-eqz v5, :cond_6

    :cond_8
    move-object v1, v0

    move v2, v3

    goto :goto_4

    :cond_9
    move-object v0, v1

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    goto :goto_6

    :catch_1
    move-exception v1

    goto/16 :goto_1

    :cond_b
    move-object v0, v7

    goto :goto_5

    :cond_c
    move-object v7, v1

    move v8, v2

    goto/16 :goto_2
.end method

.method public DW(Labcd/Da;Labcd/na;)Labcd/Sa;
    .registers 15

    const-wide v10, -0x4287a8b610c7c567L    # -1.383624061202424E-12

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4287a8b610c7c567L    # -1.383624061202424E-12

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v0, v0, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v0, p1, p2}, Labcd/Ea;->j6(Labcd/Da;Labcd/na;)I

    move-result v8

    iget-object v0, p0, Labcd/Va;->J0:Labcd/sb;

    invoke-static {}, Labcd/yc;->DW()J

    move-result-wide v2

    invoke-virtual {v0, v8, v2, v3}, Labcd/sb;->j6(IJ)V

    iget-object v0, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v0, v8}, Labcd/wb;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/Va;->we:Labcd/qb;

    iget-object v1, p0, Labcd/Va;->we:Labcd/qb;

    invoke-virtual {v1, v8}, Labcd/qb;->DW(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v8, v1}, Labcd/qb;->j6(II)V

    iget-object v0, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v0, v8}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Sa;

    invoke-virtual {v3}, Labcd/Sa;->j3()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Labcd/Va;->j6(Labcd/Da;Labcd/na;Labcd/Sa;ZLjava/lang/String;II)V

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v0, v8}, Labcd/wb;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v0, v8}, Labcd/wb;->DW(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Sa;

    iget-object v0, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v0, v8, v3}, Labcd/wb;->DW(ILjava/lang/Object;)V

    iget-object v0, p0, Labcd/Va;->we:Labcd/qb;

    const/4 v1, 0x1

    invoke-virtual {v0, v8, v1}, Labcd/qb;->j6(II)V

    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v0, v8}, Labcd/wb;->FH(I)V

    invoke-virtual {v3}, Labcd/Sa;->j3()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Labcd/Va;->j6(Labcd/Da;Labcd/na;Labcd/Sa;ZLjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Va;->v5:Z

    if-eqz v0, :cond_3

    move-wide v2, v10

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    :try_start_1
    invoke-virtual {p0}, Labcd/Va;->DW()J

    move-result-wide v0

    sget-wide v2, Labcd/Va;->DW:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    iget-object v0, p0, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v0}, Labcd/Va$b;->j6()Labcd/Sa;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Labcd/Va;->j6(Labcd/Da;Labcd/na;Labcd/Sa;ZLjava/lang/String;II)V

    invoke-virtual {v3}, Labcd/Sa;->Mr()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Labcd/Va;->DW(J)Labcd/Sa;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v1, v1, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v0}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v2

    invoke-virtual {v0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Labcd/Ea;->j6(Labcd/Da;Labcd/na;)I

    move-result v1

    invoke-virtual {v3, v0}, Labcd/Sa;->j6(Labcd/Sa;)V

    iget-object v2, p0, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v2, v3}, Labcd/Va$b;->j6(Labcd/Sa;)V

    iget-object v2, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v2, v1}, Labcd/wb;->FH(I)V

    iget-object v1, p0, Labcd/Va;->we:Labcd/qb;

    const/4 v2, 0x1

    invoke-virtual {v1, v8, v2}, Labcd/qb;->j6(II)V

    iget-object v1, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v1, v8, v0}, Labcd/wb;->DW(ILjava/lang/Object;)V

    move-object v3, v0

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v0, v3}, Labcd/Va$b;->j6(Labcd/Sa;)V

    :cond_6
    new-instance v3, Labcd/Sa;

    iget-object v0, p0, Labcd/Va;->u7:Labcd/La;

    invoke-direct {v3, v0}, Labcd/Sa;-><init>(Labcd/La;)V

    iget-object v0, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v0, v8, v3}, Labcd/wb;->DW(ILjava/lang/Object;)V

    iget-object v0, p0, Labcd/Va;->we:Labcd/qb;

    const/4 v1, 0x1

    invoke-virtual {v0, v8, v1}, Labcd/qb;->j6(II)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Labcd/Va;->j6(Labcd/Da;Labcd/na;Labcd/Sa;ZLjava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public DW(Labcd/Da;Labcd/na;IILjava/lang/String;)Labcd/Sa;
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x23bbae2f4f3157adL

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v8

    iget-object v3, p0, Labcd/Va;->Zo:Labcd/Sa;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Labcd/Va;->j6(Labcd/Da;Labcd/na;Labcd/Sa;ZLjava/lang/String;II)V

    invoke-virtual {v8}, Labcd/Sa;->Zo()J

    move-result-wide v0

    iget-object v2, p0, Labcd/Va;->Zo:Labcd/Sa;

    invoke-virtual {v2}, Labcd/Sa;->Zo()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/Va;->Zo:Labcd/Sa;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v8

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Va;->v5:Z

    if-eqz v0, :cond_2

    const-wide v2, 0x23bbae2f4f3157adL

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public DW(Labcd/Da;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            ")",
            "Ljava/util/List",
            "<",
            "Labcd/Sa;",
            ">;"
        }
    .end annotation

    const-wide v2, 0x1615b4d866704cbdL    # 2.769308027433077E-202

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1615b4d866704cbdL    # 2.769308027433077E-202

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labcd/Va;->j6(Labcd/Da;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(Labcd/Da;II)Labcd/Sa;
    .registers 14

    const-wide v8, 0xbf74c2c147957bdL

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0xbf74c2c147957bdL

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    if-eqz v0, :cond_7

    const v0, 0x7fffffff

    invoke-virtual {p0, p1}, Labcd/Va;->DW(Labcd/Da;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v1, v6

    move-object v2, v6

    move v3, v0

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_2
    invoke-virtual {v0, p2, p3}, Labcd/Sa;->J0(II)I

    move-result v4

    if-nez v4, :cond_5

    move-object v6, v1

    :goto_1
    if-nez v0, :cond_6

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    if-eq v0, v6, :cond_3

    invoke-virtual {p0, v0}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Va;->v5:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    if-ge v4, v3, :cond_1

    move-object v2, v0

    move v3, v4

    goto :goto_0

    :cond_6
    move-object v6, v0

    goto :goto_2

    :cond_7
    return-object v6

    :cond_8
    move-object v0, v2

    move-object v6, v1

    goto :goto_1
.end method

.method protected FH()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x4552aa16b2b4ebc9L
    .end annotation

    const-wide v4, -0x3c95383cbb855a3cL

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3c95383cbb855a3cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->DW()V

    :goto_0
    iget-object v0, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->FH()I

    move-result v1

    iget-object v0, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    iget-object v2, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v2, v1, v0}, Labcd/wb;->DW(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Labcd/Va;->we:Labcd/qb;

    invoke-virtual {v0}, Labcd/qb;->j6()V

    iget-object v0, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v0}, Labcd/wb;->j6()V

    iget-object v0, p0, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v0}, Labcd/Va$b;->DW()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method protected Hw()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x14138d80f3844ae8L
    .end annotation

    const-wide v2, 0xe9817da823f8e3bL

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xe9817da823f8e3bL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Labcd/Va;->j6(J)V

    iget-object v0, p0, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v0}, Labcd/Va$b;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Da;II)Labcd/Sa;
    .registers 14

    const-wide v8, -0x23ba54a10f50ab60L    # -3.1500343430629335E136

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x23ba54a10f50ab60L    # -3.1500343430629335E136

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    if-eqz v0, :cond_7

    const v0, 0x7fffffff

    invoke-virtual {p0, p1}, Labcd/Va;->j6(Labcd/Da;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v1, v6

    move-object v2, v6

    move v3, v0

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    if-nez v1, :cond_2

    move-object v1, v0

    :cond_2
    invoke-virtual {v0, p2, p3}, Labcd/Sa;->J0(II)I

    move-result v4

    if-nez v4, :cond_5

    move-object v6, v1

    :goto_1
    if-nez v0, :cond_6

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    if-eq v0, v6, :cond_3

    invoke-virtual {p0, v0}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Va;->v5:Z

    if-eqz v0, :cond_4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    if-ge v4, v3, :cond_1

    move-object v2, v0

    move v3, v4

    goto :goto_0

    :cond_6
    move-object v6, v0

    goto :goto_2

    :cond_7
    return-object v6

    :cond_8
    move-object v0, v2

    move-object v6, v1

    goto :goto_1
.end method

.method public j6(Labcd/Da;Labcd/na;)Labcd/Sa;
    .registers 10

    const-wide v2, 0x39322ce99585a22dL    # 3.5004622627039834E-33

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x39322ce99585a22dL    # 3.5004622627039834E-33

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Labcd/Va;->j6(Labcd/Da;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    invoke-virtual {v0}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v5

    if-eq v5, p2, :cond_2

    invoke-virtual {p0, v0}, Labcd/Va;->j6(Labcd/Sa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Va;->v5:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    :try_start_1
    invoke-virtual {p0, p1, p2}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public j6(Labcd/Da;Labcd/na;IILjava/lang/String;)Labcd/Sa;
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x61913a8f7b9858bfL    # 9.688833683406609E161

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v8

    iget-object v3, p0, Labcd/Va;->Zo:Labcd/Sa;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Labcd/Va;->j6(Labcd/Da;Labcd/na;Labcd/Sa;ZLjava/lang/String;II)V

    invoke-virtual {v8}, Labcd/Sa;->Zo()J

    move-result-wide v0

    iget-object v2, p0, Labcd/Va;->Zo:Labcd/Sa;

    invoke-virtual {v2}, Labcd/Sa;->Zo()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/Va;->Zo:Labcd/Sa;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v8

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Va;->v5:Z

    if-eqz v0, :cond_2

    const-wide v2, 0x61913a8f7b9858bfL    # 9.688833683406609E161

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(Labcd/Da;Labcd/na;IILjava/lang/String;I)Labcd/Sa;
    .registers 16

    const/4 v4, 0x0

    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x978190d6b34df90L    # -9.408123280026876E262

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v2, v3

    const/4 v3, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Labcd/Va;->DW(Labcd/Da;Labcd/na;)Labcd/Sa;

    move-result-object v8

    iget-object v3, p0, Labcd/Va;->Zo:Labcd/Sa;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p6, -0x1

    invoke-virtual {p5, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "i;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Labcd/Va;->j6(Labcd/Da;Labcd/na;Labcd/Sa;ZLjava/lang/String;II)V

    invoke-virtual {v8}, Labcd/Sa;->Zo()J

    move-result-wide v0

    iget-object v2, p0, Labcd/Va;->Zo:Labcd/Sa;

    invoke-virtual {v2}, Labcd/Sa;->Zo()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/Va;->Zo:Labcd/Sa;

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v8

    goto :goto_0
.end method

.method public j6()Labcd/_b;
    .registers 7

    const-wide v4, -0x22bea7d57e9cbfcbL    # -1.6523697243382276E141

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x22bea7d57e9cbfcbL    # -1.6523697243382276E141

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/_b;

    iget-object v1, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v1, v1, Labcd/La;->Mr:Labcd/Ea;

    invoke-direct {v0, v1}, Labcd/_b;-><init>(Labcd/Ea;)V

    iget-object v1, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v1, v1, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v1}, Labcd/wb$a;->DW()V

    :goto_0
    iget-object v1, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v1, v1, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v1}, Labcd/wb$a;->j6()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v1, v1, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v1}, Labcd/wb$a;->FH()I

    move-result v1

    iget-object v2, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v2, v2, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v2, v1}, Labcd/Ea;->Zo(I)Labcd/Da;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/_b;->DW(Labcd/Da;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-object v0
.end method

.method public j6(Labcd/Da;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            ")",
            "Ljava/util/List",
            "<",
            "Labcd/Sa;",
            ">;"
        }
    .end annotation

    const-wide v2, 0x34d04f1570602ccL    # 9.08743406741194E-293

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x34d04f1570602ccL    # 9.08743406741194E-293

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Labcd/Va;->j6(Labcd/Da;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Da;IILjava/lang/String;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Da;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Labcd/Sa;",
            ">;"
        }
    .end annotation

    const-wide v8, -0x48d120f1a011cb3bL    # -6.921587780166176E-43

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x48d120f1a011cb3bL    # -6.921587780166176E-43

    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    invoke-interface {v0}, Labcd/la;->v5()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/na;

    iget-object v3, p0, Labcd/Va;->VH:Labcd/Va$b;

    invoke-virtual {v3}, Labcd/Va$b;->j6()Labcd/Sa;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Va;->v5:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p2

    move v6, p3

    :try_start_1
    invoke-direct/range {v0 .. v6}, Labcd/Va;->j6(Labcd/Da;Ljava/util/Map;ZLjava/lang/String;II)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public j6(Labcd/Da;Labcd/na;Labcd/Sa;ZLjava/lang/String;II)V
    .registers 16

    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3ab365c78fff509bL    # 6.267694950114163E-26

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    invoke-virtual {p3}, Labcd/Sa;->j6()V

    invoke-virtual {p3, p1, p2}, Labcd/Sa;->j6(Labcd/Da;Labcd/na;)V

    invoke-virtual {p1}, Labcd/Da;->v5()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Labcd/Sa;->j6(J)V

    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_1

    iget-object v0, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v0, v0, Labcd/La;->rN:Labcd/Ca;

    invoke-virtual {v0, p1, p2}, Labcd/Ca;->DW(Labcd/Da;Labcd/na;)V

    :cond_1
    invoke-virtual {p1}, Labcd/Da;->aM()Ljava/io/Reader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz p5, :cond_2

    :try_start_1
    iget-object v1, p0, Labcd/Va;->gn:Labcd/Va$a;

    invoke-virtual {v1, v0, p5, p6, p7}, Labcd/Va$a;->j6(Ljava/io/Reader;Ljava/lang/String;II)Ljava/io/Reader;

    move-result-object v0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/Da;->gn()Labcd/la;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1, p4}, Labcd/la;->j6(Labcd/Da;Ljava/io/Reader;Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    new-array v3, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p3

    invoke-virtual/range {v0 .. v7}, Labcd/Sa;->j6(IZ[IIIII)I

    move-result v0

    invoke-virtual {p3, v0}, Labcd/Sa;->DW(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    :try_start_3
    new-array v3, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p3

    invoke-virtual/range {v0 .. v7}, Labcd/Sa;->j6(IZ[IIIII)I

    move-result v0

    invoke-virtual {p3, v0}, Labcd/Sa;->DW(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public j6(Labcd/Sa;)V
    .registers 10

    const-wide v6, -0x5184964b9e2aa7c5L    # -8.819345377465421E-85

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5184964b9e2aa7c5L    # -8.819345377465421E-85

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v0, v0, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {p1}, Labcd/Sa;->VH()Labcd/Da;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Sa;->J8()Labcd/na;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labcd/Ea;->j6(Labcd/Da;Labcd/na;)I

    move-result v0

    iget-object v1, p0, Labcd/Va;->we:Labcd/qb;

    invoke-virtual {v1, v0}, Labcd/qb;->DW(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_3

    iget-object v1, p0, Labcd/Va;->we:Labcd/qb;

    invoke-virtual {v1, v0}, Labcd/qb;->FH(I)V

    iget-object v1, p0, Labcd/Va;->tp:Labcd/wb;

    invoke-virtual {v1, v0}, Labcd/wb;->FH(I)V

    invoke-virtual {p1}, Labcd/Sa;->Mr()J

    move-result-wide v2

    sget-wide v4, Labcd/Va;->FH:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    iget-object v1, p0, Labcd/Va;->EQ:Labcd/wb;

    invoke-virtual {v1, v0, p1}, Labcd/wb;->DW(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Labcd/Va;->DW()J

    move-result-wide v0

    sget-wide v2, Labcd/Va;->j6:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    sget-wide v0, Labcd/Va;->DW:J

    invoke-direct {p0, v0, v1}, Labcd/Va;->j6(J)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Labcd/Va;->we:Labcd/qb;

    invoke-virtual {v2, v0, v1}, Labcd/qb;->j6(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method protected v5()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x13c607adbeea7e60L
    .end annotation

    const-wide v6, -0x1a44dbf7adca9ca9L    # -1.1262097285199586E182

    :try_start_0
    sget-boolean v0, Labcd/Va;->Hw:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1a44dbf7adca9ca9L    # -1.1262097285199586E182

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->DW()V

    :goto_0
    iget-object v0, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->FH()I

    move-result v1

    iget-object v0, p0, Labcd/Va;->tp:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    iget-object v2, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v2, v2, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v2, v1}, Labcd/Ea;->Zo(I)Labcd/Da;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Da;->v5()J

    move-result-wide v2

    invoke-virtual {v0}, Labcd/Sa;->v5()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Labcd/Sa;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Va;->v5:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Labcd/Sa;->DW()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->DW()V

    :goto_1
    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->j6()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->FH()I

    move-result v1

    iget-object v0, p0, Labcd/Va;->EQ:Labcd/wb;

    iget-object v0, v0, Labcd/wb;->Hw:Labcd/wb$a;

    invoke-virtual {v0}, Labcd/wb$a;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sa;

    iget-object v2, p0, Labcd/Va;->u7:Labcd/La;

    iget-object v2, v2, Labcd/La;->Mr:Labcd/Ea;

    invoke-virtual {v2, v1}, Labcd/Ea;->Zo(I)Labcd/Da;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Da;->v5()J

    move-result-wide v2

    invoke-virtual {v0}, Labcd/Sa;->v5()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Labcd/Sa;->j6()V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Labcd/Sa;->DW()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    return-void
.end method
