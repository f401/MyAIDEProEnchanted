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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/Map",
            "<",
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
    .registers 4

    const-wide v2, 0x21ebcda69119855dL    # 2.783228134155936E-145

    const-class v0, Lcom/aide/engine/c$b$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/aide/engine/c$b;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x9370691827aeed7L
    .end annotation

    const-wide v4, -0x20f15f5ac77263bL    # -4.424739351945313E298

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x20f15f5ac77263bL    # -4.424739351945313E298

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/c$b$b;->FH:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/c$b$b;->Hw:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/c$b$b;->VH:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/c$b$b;->EQ:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/c$b$b;->Ws:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Lcom/aide/engine/c$b;Lcom/aide/engine/b;)V
    .registers 10

    const-wide v2, 0x48ba0bcc04db048L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x48ba0bcc04db048L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/engine/c$b$b;-><init>(Lcom/aide/engine/c$b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1d6f828f5b16fb15L
    .end annotation

    const-wide v2, -0x27decfc2cca305c4L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x27decfc2cca305c4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/engine/c$b$b;->we:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/engine/c$b$b;->gn:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Lcom/aide/engine/SourceEntity;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x10afa8ac93fa2a4cL
    .end annotation

    const-wide v2, -0x1e3428a5ab7081c9L    # -1.2525525807812042E163

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e3428a5ab7081c9L    # -1.2525525807812042E163

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/engine/c$b$b;->we:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/c$b$b;->EQ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean v0, p0, Lcom/aide/engine/c$b$b;->gn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/engine/c$b$b;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/aide/engine/c$b$b;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method


# virtual methods
.method public DW(Labcd/Aa;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x17a7655a794003a3L
    .end annotation

    const-wide v2, 0x2ab09faf4ef513c0L    # 4.638856950766202E-103

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2ab09faf4ef513c0L    # 4.638856950766202E-103

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/engine/c$b$b;->v5:Labcd/Aa;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Labcd/Aa;Labcd/Ya;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x4098a1e2221be15L
    .end annotation

    const-wide v2, -0x55343ef67ea00144L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x55343ef67ea00144L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
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
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public DW(Labcd/Da;II)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x3779e0ef50ff1b8bL
    .end annotation

    const-wide v8, 0x1563ce37b5a95f68L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x1563ce37b5a95f68L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Labcd/Da;->a8()J

    move-result-wide v2

    iget-object v0, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/aide/engine/M;->j6(Ljava/lang/String;JII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public DW(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x60e69dce19e377dL
    .end annotation

    const-wide v2, -0x1953bf3d844b8b38L    # -3.8415934696302546E186

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1953bf3d844b8b38L    # -3.8415934696302546E186

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/SourceEntity;

    invoke-direct {v0, p1}, Lcom/aide/engine/SourceEntity;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/aide/engine/c$b$b;->j6(Lcom/aide/engine/SourceEntity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Labcd/Sa;Labcd/ua;)Z
    .registers 11
    .annotation runtime Labcd/su;
        method = -0xf527525ce3ef2dL
    .end annotation

    const-wide v2, -0x220ab69f93cb20L

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v1, :cond_0

    const-wide v4, -0x220ab69f93cb20L

    invoke-static {v4, v5, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/engine/c$b$b;->DW()V

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->J0:Labcd/ua;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->J0:Labcd/ua;

    if-ne v1, p2, :cond_1

    iget-wide v4, p0, Lcom/aide/engine/c$b$b;->J8:J

    invoke-virtual {p1}, Labcd/Sa;->Zo()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    :cond_1
    iput-object p2, p0, Lcom/aide/engine/c$b$b;->J0:Labcd/ua;

    invoke-virtual {p1}, Labcd/Sa;->Zo()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/aide/engine/c$b$b;->J8:J

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->EQ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aide/engine/c$b$b;->we:Z

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/aide/engine/c$b$b;->Hw:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->EQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public FH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x4c4d69d77714c780L
    .end annotation

    const-wide v2, -0x5f8d115fb0693b1L    # -6.575374062484148E279

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5f8d115fb0693b1L    # -6.575374062484148E279

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/engine/c$b$b;->Zo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xd853abb47b0daefL
    .end annotation

    const-wide v2, 0x2fc22b2906502980L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2fc22b2906502980L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/engine/c$b$b;->v5:Labcd/Aa;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/engine/c$b$b;->Zo:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/c$b$b;->Hw:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/aide/engine/c$b$b;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Aa;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x128548a8edd3254cL
    .end annotation

    const-wide v2, 0x2d485b0a4a10611L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2d485b0a4a10611L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/SourceEntity;

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    invoke-direct {p0, v0}, Lcom/aide/engine/c$b$b;->j6(Lcom/aide/engine/SourceEntity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Aa;Labcd/Ya;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1940c3a9e5d7854dL
    .end annotation

    const-wide v2, -0xb6f3ce4378fdbacL    # -3.072316120350001E253

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb6f3ce4378fdbacL    # -3.072316120350001E253

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
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
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Labcd/Aa;Labcd/Ya;Z)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x124ac99a67805661L
    .end annotation

    const-wide v8, 0x7d32ff10f52553cL

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x7d32ff10f52553cL

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
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
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v0, :cond_1

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Labcd/Aa;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x6334a874d26ab2d8L
    .end annotation

    const-wide v2, -0x379dde8ecdd04975L    # -4.935627900706806E40

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x379dde8ecdd04975L    # -4.935627900706806E40

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/SourceEntity;

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/aide/engine/c$b$b;->j6(Lcom/aide/engine/SourceEntity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Labcd/Aa;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2b4268f4824d8cd3L
    .end annotation

    const-wide v2, -0x284b83fc6bc74140L    # -3.1528422752533335E114

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, -0x284b83fc6bc74140L    # -3.1528422752533335E114

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/SourceEntity;

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;Z)V

    invoke-direct {p0, v0}, Lcom/aide/engine/c$b$b;->j6(Lcom/aide/engine/SourceEntity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Labcd/Da;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x1a2a722753079320L
    .end annotation

    const-wide v4, -0x6661cff846135dbL    # -5.736052906976431E277

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6661cff846135dbL    # -5.736052906976431E277

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Da;->a8()J

    move-result-wide v2

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v1, v1, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v1}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v1, v1, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v1}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v1

    invoke-interface {v1, v0, v2, v3}, Lcom/aide/engine/M;->j6(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Labcd/Da;II)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x1bbfc371f648dca5L
    .end annotation

    const-wide v8, 0x191d170e19edd00L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x191d170e19edd00L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Da;->a8()J

    move-result-wide v2

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/aide/engine/M;->FH(Ljava/lang/String;JII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(Labcd/Da;II[I[I)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0xcd9eba70b4cf2c0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x79d69b819fa3905L

    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/c$b$b;->FH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Da;->a8()J

    move-result-wide v2

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/aide/engine/M;->FH(Ljava/lang/String;JII)V

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/engine/c$b$b;->FH:Ljava/util/ArrayList;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v0, v0, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v0}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Labcd/Da;->a8()J

    move-result-wide v2

    iget-object v8, p0, Lcom/aide/engine/c$b$b;->FH:Ljava/util/ArrayList;

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v0 .. v8}, Lcom/aide/engine/M;->j6(Ljava/lang/String;JII[I[ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v0, :cond_3

    const-wide v2, 0x79d69b819fa3905L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public j6(Labcd/Da;Labcd/na;IIIZZ)V
    .registers 20
    .annotation runtime Labcd/su;
        method = 0x9b7a1ac5ebe594L
    .end annotation

    sget-boolean v2, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x5b92ffc18dd38579L    # 1.3485589055847036E133

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/Integer;

    move/from16 v0, p5

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Ljava/lang/Boolean;

    move/from16 v0, p6

    invoke-direct {v6, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Ljava/lang/Boolean;

    move/from16 v0, p7

    invoke-direct {v6, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    invoke-static {v2, v3, p0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/Da;->XL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Labcd/Da;->a8()J

    move-result-wide v4

    iget-object v2, p0, Lcom/aide/engine/c$b$b;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    move v6, p3

    move/from16 v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/aide/engine/M;->j6(Ljava/lang/String;JII)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v9, 0x0

    iget-object v2, p0, Lcom/aide/engine/c$b$b;->v5:Labcd/Aa;

    if-eqz v2, :cond_4

    new-instance v9, Lcom/aide/engine/SourceEntity;

    iget-object v2, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v2}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v2

    iget-object v6, p0, Lcom/aide/engine/c$b$b;->v5:Labcd/Aa;

    invoke-direct {v9, v2, v6}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p6, :cond_5

    iget-object v2, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    iget-object v9, p0, Lcom/aide/engine/c$b$b;->Hw:Ljava/util/ArrayList;

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v2 .. v9}, Lcom/aide/engine/M;->j6(Ljava/lang/String;JIIILjava/util/List;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/aide/engine/c$b$b;->Zo:Ljava/lang/String;

    if-eqz v2, :cond_3

    new-instance v9, Lcom/aide/engine/SourceEntity;

    invoke-direct {v9, v2}, Lcom/aide/engine/SourceEntity;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-eqz p7, :cond_6

    iget-object v2, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    iget-object v9, p0, Lcom/aide/engine/c$b$b;->Hw:Ljava/util/ArrayList;

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v2 .. v9}, Lcom/aide/engine/M;->DW(Ljava/lang/String;JIIILjava/util/List;)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    iget-object v2, v2, Lcom/aide/engine/c$b;->vy:Lcom/aide/engine/c;

    invoke-static {v2}, Lcom/aide/engine/c;->u7(Lcom/aide/engine/c;)Lcom/aide/engine/M;

    move-result-object v2

    iget-object v10, p0, Lcom/aide/engine/c$b$b;->Hw:Ljava/util/ArrayList;

    invoke-interface {p2}, Labcd/na;->j6()Ljava/lang/String;

    move-result-object v11

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v2 .. v11}, Lcom/aide/engine/M;->j6(Ljava/lang/String;JIIILcom/aide/engine/SourceEntity;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public j6(Labcd/Ya;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x28ca7b91ed919c58L
    .end annotation

    const-wide v2, 0x2803bdac38130271L    # 6.262659890212415E-116

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2803bdac38130271L    # 6.262659890212415E-116

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/SourceEntity;

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Za;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x486bc02343e97d9L
    .end annotation

    const-wide v4, -0xbed1c46fbf1ba68L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xbed1c46fbf1ba68L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/SourceEntity;

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;ZLabcd/Za;)V

    invoke-direct {p0, v0}, Lcom/aide/engine/c$b$b;->j6(Lcom/aide/engine/SourceEntity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/ua;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x21f03207a7dd9749L
    .end annotation

    const-wide v2, 0x67c7feb3b48eb70L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x67c7feb3b48eb70L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/ua;->Zo()Labcd/Da;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Da;->er()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/engine/c$b$b;->Ws:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/SourceEntity;

    if-nez v0, :cond_1

    new-instance v0, Lcom/aide/engine/SourceEntity;

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/engine/SourceEntity;->DW(Labcd/La;)V

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->Ws:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, v0}, Lcom/aide/engine/c$b$b;->j6(Lcom/aide/engine/SourceEntity;)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/aide/engine/SourceEntity;

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Labcd/Aa;)V

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/engine/SourceEntity;->DW(Labcd/La;)V

    invoke-direct {p0, v0}, Lcom/aide/engine/c$b$b;->j6(Lcom/aide/engine/SourceEntity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1b2f17cc1780ff2bL
    .end annotation

    const-wide v2, 0x6bdae4749a8e618L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6bdae4749a8e618L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/SourceEntity;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/aide/engine/SourceEntity;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/aide/engine/c$b$b;->j6(Lcom/aide/engine/SourceEntity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xb893521fb9739c0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/Za;",
            ">;)V"
        }
    .end annotation

    const-wide v2, -0x1e8797f414f2a1abL    # -3.431326029891033E161

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e8797f414f2a1abL    # -3.431326029891033E161

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/SourceEntity;

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->QX:Lcom/aide/engine/c$b;

    invoke-static {v1}, Lcom/aide/engine/c$b;->j6(Lcom/aide/engine/c$b;)Labcd/ea;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/aide/engine/SourceEntity;-><init>(Labcd/La;Ljava/util/List;)V

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->FH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Sa;Labcd/ua;)Z
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x73c103b581f6ddL
    .end annotation

    const-wide v2, 0x1702191fe3531a40L    # 7.56600926152982E-198

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/engine/c$b$b;->j6:Z

    if-eqz v1, :cond_0

    const-wide v4, 0x1702191fe3531a40L    # 7.56600926152982E-198

    invoke-static {v4, v5, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/engine/c$b$b;->DW()V

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->u7:Labcd/ua;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->u7:Labcd/ua;

    if-ne v1, p2, :cond_1

    iget-wide v4, p0, Lcom/aide/engine/c$b$b;->tp:J

    invoke-virtual {p1}, Labcd/Sa;->Zo()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    :cond_1
    iput-object p2, p0, Lcom/aide/engine/c$b$b;->u7:Labcd/ua;

    invoke-virtual {p1}, Labcd/Sa;->Zo()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/aide/engine/c$b$b;->tp:J

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->VH:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aide/engine/c$b$b;->gn:Z

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/aide/engine/c$b$b;->Hw:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/aide/engine/c$b$b;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$b$b;->DW:Z

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method
