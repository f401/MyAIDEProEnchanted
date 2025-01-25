.class Lcom/aide/engine/c$b$b;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
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
.field private EQ:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = 0x457b1047c18ccc7cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aide/engine/SourceEntity;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = -0x32082e29600e9150L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aide/engine/SourceEntity;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = -0x2529c8f3d4093c58L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aide/engine/SourceEntity;",
            ">;"
        }
    .end annotation
.end field

.field private J0:Labcd/ua;
    .annotation runtime Labcd/ru;
        field = 0x287614e0c19b14L
    .end annotation
.end field

.field private J8:J
    .annotation runtime Labcd/ru;
        field = 0xc9e53fdba7ccacL
    .end annotation
.end field

.field final QX:Lcom/aide/engine/c$b;

.field private VH:Ljava/util/ArrayList;
    .annotation runtime Labcd/ru;
        field = 0x208dce408f7581e8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aide/engine/SourceEntity;",
            ">;"
        }
    .end annotation
.end field

.field private Ws:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = -0xfada70a317d40e4L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Labcd/ua;",
            "Lcom/aide/engine/SourceEntity;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x203bf63962611a9dL
    .end annotation
.end field

.field private gn:Z
    .annotation runtime Labcd/ru;
        field = 0x4e354a07535aed9fL
    .end annotation
.end field

.field private tp:J
    .annotation runtime Labcd/ru;
        field = -0x469ed2894db154a8L
    .end annotation
.end field

.field private u7:Labcd/ua;
    .annotation runtime Labcd/ru;
        field = -0x58ac66a4bb350638L
    .end annotation
.end field

.field private v5:Labcd/Aa;
    .annotation runtime Labcd/ru;
        field = 0x2c963ffefa7f540cL
    .end annotation
.end field

.field private we:Z
    .annotation runtime Labcd/ru;
        field = 0x149d7047e8cb81e1L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/c$b$b;

    const-wide v1, 0x21ebcda69119855dL  # 2.783228134155936E-145

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x9370691827aeed7L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x20f15f5ac77263bL  # -4.424739351945313E298

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/engine/c$b$b;->FH:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/engine/c$b$b;->Hw:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/engine/c$b$b;->VH:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/engine/c$b$b;->EQ:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/aide/engine/c$b$b;->Ws:Ljava/util/Map;
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_36

    return-void

    :catchall_36
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v4, :cond_3e

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v3
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x48ba0bcc04db048L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$b;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x48ba0bcc04db048L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method

.method private DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1d6f828f5b16fb15L
    .end annotation

    const-wide v0, -0x27decfc2cca305c4L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/engine/c$b$b;->we:Z

    iput-boolean v2, p0, Lcom/aide/engine/c$b$b;->gn:Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method private j6(Lcom/aide/engine/SourceEntity;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x10afa8ac93fa2a4cL
    .end annotation

    const-wide v0, -0x1e3428a5ab7081c9L  # -1.2525525807812042E163

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/engine/c$b$b;->we:Z

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/aide/engine/c$b$b;->EQ:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-boolean v2, p0, Lcom/aide/engine/c$b$b;->gn:Z

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/aide/engine/c$b$b;->VH:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    iget-object v2, p0, Lcom/aide/engine/c$b$b;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v2
.end method


# virtual methods
.method public DW(Labcd/Aa;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x17a7655a794003a3L
    .end annotation

    const-wide v0, 0x2ab09faf4ef513c0L  # 4.638856950766202E-103

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/engine/c$b$b;->v5:Labcd/Aa;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public DW(Labcd/Aa;Labcd/Ya;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x4098a1e2221be15L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x55343ef67ea00144L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Lcom/aide/engine/SourceEntity;

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/aide/engine/SourceEntity;->j6(Labcd/La;Labcd/Ya;)V

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_37

    const-wide v2, -0x55343ef67ea00144L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method public DW(Labcd/Da;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x3779e0ef50ff1b8bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1563ce37b5a95f68L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Labcd/Da;->a8()J

    move-result-wide v3

    iget-object v0, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v2

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/aide/engine/M;->j6(Ljava/lang/String;JII)V
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_38

    :cond_37
    return-void

    :catchall_38
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, 0x1563ce37b5a95f68L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v0
.end method

.method public DW(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x60e69dce19e377dL
    .end annotation

    const-wide v0, -0x1953bf3d844b8b38L  # -3.8415934696302546E186

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/engine/SourceEntity;

    invoke-direct {v2, p1}, Lcom/aide/engine/SourceEntity;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/aide/engine/c$b$b;->j6(Lcom/aide/engine/SourceEntity;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public DW(Labcd/Sa;Labcd/ua;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xf527525ce3ef2dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x220ab69f93cb20L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/engine/c$b$b;->DW()V

    iget-object v0, p0, Lcom/aide/engine/c$b$b;->J0:Labcd/ua;

    if-eqz v0, :cond_29

    if-ne v0, p2, :cond_29

    iget-wide v0, p0, Lcom/aide/engine/c$b$b;->J8:J

    invoke-virtual {p1}, Labcd/Sa;->Zo()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_20

    goto :goto_29

    :cond_20
    iget-object v0, p0, Lcom/aide/engine/c$b$b;->Hw:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->EQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    return p1

    :cond_29
    :goto_29
    iput-object p2, p0, Lcom/aide/engine/c$b$b;->J0:Labcd/ua;

    invoke-virtual {p1}, Labcd/Sa;->Zo()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aide/engine/c$b$b;->J8:J

    iget-object v0, p0, Lcom/aide/engine/c$b$b;->EQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/engine/c$b$b;->we:Z
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_3a

    return v0

    :catchall_3a
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_4b

    const-wide v2, -0x220ab69f93cb20L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    throw v0
.end method

.method public FH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x4c4d69d77714c780L
    .end annotation

    const-wide v0, -0x5f8d115fb0693b1L  # -6.575374062484148E279

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/engine/c$b$b;->Zo:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xd853abb47b0daefL
    .end annotation

    const-wide v0, 0x2fc22b2906502980L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/c$b$b;->v5:Labcd/Aa;

    iput-object v2, p0, Lcom/aide/engine/c$b$b;->Zo:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/aide/engine/c$b$b;->Hw:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/aide/engine/c$b$b;->DW()V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public j6(Labcd/Aa;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x128548a8edd3254cL
    .end annotation

    const-wide v0, 0x2d485b0a4a10611L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/engine/SourceEntity;

    iget-object v3, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v3}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    invoke-direct {p0, v2}, Lcom/aide/engine/c$b$b;->j6(Lcom/aide/engine/SourceEntity;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public j6(Labcd/Aa;Labcd/Ya;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1940c3a9e5d7854dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0xb6f3ce4378fdbacL  # -3.072316120350001E253

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Lcom/aide/engine/SourceEntity;

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/aide/engine/SourceEntity;->DW(Labcd/La;Labcd/Ya;)V

    invoke-virtual {v0}, Lcom/aide/engine/SourceEntity;->j6()V

    invoke-direct {p0, v0}, Lcom/aide/engine/c$b$b;->j6(Lcom/aide/engine/SourceEntity;)V
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_38

    const-wide v2, -0xb6f3ce4378fdbacL  # -3.072316120350001E253

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method public j6(Labcd/Aa;Labcd/Ya;Z)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x124ac99a67805661L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x7d32ff10f52553cL

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    new-instance v0, Lcom/aide/engine/SourceEntity;

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    invoke-direct {v0, v1, p1, p3}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;Z)V

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/aide/engine/SourceEntity;->DW(Labcd/La;Labcd/Ya;)V

    invoke-direct {p0, v0}, Lcom/aide/engine/c$b$b;->j6(Lcom/aide/engine/SourceEntity;)V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_42

    const-wide v2, 0x7d32ff10f52553cL

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
.end method

.method public j6(Labcd/Aa;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x6334a874d26ab2d8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x379dde8ecdd04975L  # -4.935627900706806E40

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Lcom/aide/engine/SourceEntity;

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/aide/engine/c$b$b;->j6(Lcom/aide/engine/SourceEntity;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0x379dde8ecdd04975L  # -4.935627900706806E40

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method public j6(Labcd/Aa;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2b4268f4824d8cd3L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x284b83fc6bc74140L  # -3.1528422752533335E114

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v0, Lcom/aide/engine/SourceEntity;

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;Z)V

    invoke-direct {p0, v0}, Lcom/aide/engine/c$b$b;->j6(Lcom/aide/engine/SourceEntity;)V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_35

    const-wide v2, -0x284b83fc6bc74140L  # -3.1528422752533335E114

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v0
.end method

.method public j6(Labcd/Da;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x1a2a722753079320L
    .end annotation

    const-wide v0, -0x6661cff846135dbL  # -5.736052906976431E277

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Labcd/Da;->a8()J

    move-result-wide v3

    iget-object v5, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v5, v5, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v5}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v5

    if-eqz v5, :cond_29

    iget-object v5, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v5, v5, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v5}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v5

    invoke-interface {v5, v2, v3, v4}, Lcom/aide/engine/M;->j6(Ljava/lang/String;J)V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    :cond_29
    return-void

    :catchall_2a
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method public j6(Labcd/Da;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x1bbfc371f648dca5L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x191d170e19edd00L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Labcd/Da;->a8()J

    move-result-wide v3

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/aide/engine/M;->FH(Ljava/lang/String;JII)V
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_38

    :cond_37
    return-void

    :catchall_38
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_52

    const-wide v2, 0x191d170e19edd00L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_52
    throw v0
.end method

.method public j6(Labcd/Da;II[I[I)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xcd9eba70b4cf2c0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_1a

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x79d69b819fa3905L

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    iget-object v0, p0, Lcom/aide/engine/c$b$b;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Labcd/Da;->a8()J

    move-result-wide v3

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/aide/engine/M;->FH(Ljava/lang/String;JII)V

    goto :goto_65

    :cond_42
    iget-object v0, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Labcd/Da;->a8()J

    move-result-wide v3

    iget-object v9, p0, Lcom/aide/engine/c$b$b;->FH:Ljava/util/ArrayList;

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v1 .. v9}, Lcom/aide/engine/M;->j6(Ljava/lang/String;JII[I[ILjava/util/List;)V

    :cond_65
    :goto_65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/c$b$b;->FH:Ljava/util/ArrayList;
    :try_end_6c
    .catchall {:try_start_0 .. :try_end_6c} :catchall_6d

    return-void

    :catchall_6d
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_89

    const-wide v2, 0x79d69b819fa3905L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_89
    throw v0
.end method

.method public j6(Labcd/Da;Labcd/na;IIIZZ)V
    .registers 23
    .annotation runtime Labcd/su;
        method = 0x9b7a1ac5ebe594L
    .end annotation

    move-object v0, p0

    move/from16 v1, p6

    move/from16 v2, p7

    sget-boolean v3, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v3, :cond_49

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    new-instance v4, Ljava/lang/Integer;

    move/from16 v9, p3

    invoke-direct {v4, v9}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x2

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/Integer;

    move/from16 v10, p4

    invoke-direct {v4, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x3

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/Integer;

    move/from16 v11, p5

    invoke-direct {v4, v11}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x4

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v1}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v5, 0x5

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v2}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-wide v4, 0x5b92ffc18dd38579L  # 1.3485589055847036E133

    invoke-static {v4, v5, p0, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_4f

    :cond_49
    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    :goto_4f
    invoke-virtual/range {p1 .. p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Labcd/Da;->a8()J

    move-result-wide v7

    iget-object v3, v0, Lcom/aide/engine/c$b$b;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7a

    iget-object v1, v0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v1, v1, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v1}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v1

    if-eqz v1, :cond_de

    iget-object v1, v0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v1, v1, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v1}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v5

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-interface/range {v5 .. v10}, Lcom/aide/engine/M;->j6(Ljava/lang/String;JII)V

    goto/16 :goto_de

    :cond_7a
    iget-object v3, v0, Lcom/aide/engine/c$b$b;->v5:Labcd/Aa;

    if-eqz v3, :cond_8c

    new-instance v3, Lcom/aide/engine/SourceEntity;

    iget-object v4, v0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v4}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v4

    iget-object v5, v0, Lcom/aide/engine/c$b$b;->v5:Labcd/Aa;

    invoke-direct {v3, v4, v5}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    goto :goto_98

    :cond_8c
    iget-object v3, v0, Lcom/aide/engine/c$b$b;->Zo:Ljava/lang/String;

    if-eqz v3, :cond_97

    new-instance v4, Lcom/aide/engine/SourceEntity;

    invoke-direct {v4, v3}, Lcom/aide/engine/SourceEntity;-><init>(Ljava/lang/String;)V

    move-object v12, v4

    goto :goto_99

    :cond_97
    const/4 v3, 0x0

    :goto_98
    move-object v12, v3

    :goto_99
    iget-object v3, v0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v3, v3, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v3}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v3

    if-eqz v3, :cond_de

    if-eqz v1, :cond_b9

    iget-object v1, v0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v1, v1, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v1}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v5

    iget-object v12, v0, Lcom/aide/engine/c$b$b;->Hw:Ljava/util/ArrayList;

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v5 .. v12}, Lcom/aide/engine/M;->j6(Ljava/lang/String;JIIILjava/util/List;)V

    goto :goto_de

    :cond_b9
    iget-object v1, v0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v1, v1, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v1}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v5

    if-eqz v2, :cond_cf

    iget-object v12, v0, Lcom/aide/engine/c$b$b;->Hw:Ljava/util/ArrayList;

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v5 .. v12}, Lcom/aide/engine/M;->DW(Ljava/lang/String;JIIILjava/util/List;)V

    goto :goto_de

    :cond_cf
    iget-object v13, v0, Lcom/aide/engine/c$b$b;->Hw:Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Labcd/na;->j6()Ljava/lang/String;

    move-result-object v14

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-interface/range {v5 .. v14}, Lcom/aide/engine/M;->j6(Ljava/lang/String;JIIILcom/aide/engine/SourceEntity;Ljava/util/List;Ljava/lang/String;)V

    :cond_de
    :goto_de
    return-void
.end method

.method public j6(Labcd/Ya;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x28ca7b91ed919c58L
    .end annotation

    const-wide v0, 0x2803bdac38130271L  # 6.262659890212415E-116

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/engine/SourceEntity;

    iget-object v3, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v3}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    iget-object v3, p0, Lcom/aide/engine/c$b$b;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public j6(Labcd/Za;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x486bc02343e97d9L
    .end annotation

    const-wide v0, -0xbed1c46fbf1ba68L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/engine/SourceEntity;

    iget-object v3, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v3}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;ZLabcd/Za;)V

    invoke-direct {p0, v2}, Lcom/aide/engine/c$b$b;->j6(Lcom/aide/engine/SourceEntity;)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public j6(Labcd/ua;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x21f03207a7dd9749L
    .end annotation

    const-wide v0, 0x67c7feb3b48eb70L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Labcd/ua;->Zo()Labcd/Da;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Da;->er()Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/aide/engine/c$b$b;->Ws:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/SourceEntity;

    if-nez v2, :cond_39

    new-instance v2, Lcom/aide/engine/SourceEntity;

    iget-object v3, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v3}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    iget-object v3, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v3}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/engine/SourceEntity;->DW(Labcd/La;)V

    iget-object v3, p0, Lcom/aide/engine/c$b$b;->Ws:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    :goto_39
    invoke-direct {p0, v2}, Lcom/aide/engine/c$b$b;->j6(Lcom/aide/engine/SourceEntity;)V

    goto :goto_52

    :cond_3d
    new-instance v2, Lcom/aide/engine/SourceEntity;

    iget-object v3, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v3}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    iget-object v3, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v3}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/engine/SourceEntity;->DW(Labcd/La;)V
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_53

    goto :goto_39

    :goto_52
    return-void

    :catchall_53
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v3, :cond_5b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5b
    goto :goto_5d

    :goto_5c
    throw v2

    :goto_5d
    goto :goto_5c
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1b2f17cc1780ff2bL
    .end annotation

    const-wide v0, 0x6bdae4749a8e618L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/engine/SourceEntity;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/aide/engine/SourceEntity;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v2}, Lcom/aide/engine/c$b$b;->j6(Lcom/aide/engine/SourceEntity;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public j6(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xb893521fb9739c0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labcd/Za;",
            ">;)V"
        }
    .end annotation

    const-wide v0, -0x1e8797f414f2a1abL  # -3.431326029891033E161

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/engine/SourceEntity;

    iget-object v3, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v3}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Ljava/util/List;)V

    iget-object v3, p0, Lcom/aide/engine/c$b$b;->FH:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public j6(Labcd/Sa;Labcd/ua;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x73c103b581f6ddL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x1702191fe3531a40L  # 7.56600926152982E-198

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/engine/c$b$b;->DW()V

    iget-object v0, p0, Lcom/aide/engine/c$b$b;->u7:Labcd/ua;

    if-eqz v0, :cond_29

    if-ne v0, p2, :cond_29

    iget-wide v0, p0, Lcom/aide/engine/c$b$b;->tp:J

    invoke-virtual {p1}, Labcd/Sa;->Zo()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_20

    goto :goto_29

    :cond_20
    iget-object v0, p0, Lcom/aide/engine/c$b$b;->Hw:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    return p1

    :cond_29
    :goto_29
    iput-object p2, p0, Lcom/aide/engine/c$b$b;->u7:Labcd/ua;

    invoke-virtual {p1}, Labcd/Sa;->Zo()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aide/engine/c$b$b;->tp:J

    iget-object v0, p0, Lcom/aide/engine/c$b$b;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/engine/c$b$b;->gn:Z
    :try_end_39
    .catchall {:try_start_0 .. :try_end_39} :catchall_3a

    return v0

    :catchall_3a
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_4b

    const-wide v2, 0x1702191fe3531a40L  # 7.56600926152982E-198

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    throw v0
.end method
