.class public Lcom/aide/ui/views/editor/g;
.super Lcom/aide/ui/views/editor/b;

# interfaces
.implements Lcom/aide/ui/views/editor/o;
.implements Lcom/aide/ui/views/editor/v;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static Zo:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private EQ:Z
    .annotation runtime Labcd/ru;
        field = -0x43fb36e069a11e9cL
    .end annotation
.end field

.field private J0:J
    .annotation runtime Labcd/ru;
        field = -0x318a1f84c2820e20L
    .end annotation
.end field

.field private J8:Ljava/util/Set;
    .annotation runtime Labcd/ru;
        field = -0x5538b1b6fd7b142bL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/aide/ui/views/editor/w;",
            ">;"
        }
    .end annotation
.end field

.field private QX:Lcom/aide/ui/views/editor/g$a;
    .annotation runtime Labcd/ru;
        field = 0x2198782a7a31db90L
    .end annotation
.end field

.field private VH:Ljava/util/Vector;
    .annotation runtime Labcd/ru;
        field = 0xe08ee5754467138L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/aide/ui/views/editor/g$f;",
            ">;"
        }
    .end annotation
.end field

.field private Ws:Z
    .annotation runtime Labcd/ru;
        field = -0x1cbefdce86a87a78L
    .end annotation
.end field

.field private XL:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = -0x5ec3a2c886d18e4L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/views/editor/h;",
            ">;"
        }
    .end annotation
.end field

.field private aM:Ljava/util/Set;
    .annotation runtime Labcd/ru;
        field = 0x5406eae1e6426e57L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Labcd/hm;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Ljava/util/Vector;
    .annotation runtime Labcd/ru;
        field = 0x5bbe70de5af6fd08L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/aide/ui/views/editor/g$d;",
            ">;"
        }
    .end annotation
.end field

.field private j3:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0xa0f1d52199df000L
    .end annotation
.end field

.field private tp:Z
    .annotation runtime Labcd/ru;
        field = -0x2e746ff0510e3cd0L
    .end annotation
.end field

.field private u7:Ljava/util/Vector;
    .annotation runtime Labcd/ru;
        field = -0x15542cad240465f0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/aide/ui/views/editor/A;",
            ">;"
        }
    .end annotation
.end field

.field private we:Lcom/aide/ui/views/editor/va;
    .annotation runtime Labcd/ru;
        field = -0x3b6afc009e6ef50L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x9bc2c072ae09d4fL

    const-class v0, Lcom/aide/ui/views/editor/g;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x34657decbea6f62fL    # 2.7390849591385324E-56

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x34657decbea6f62fL    # 2.7390849591385324E-56

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/views/editor/b;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/g;->VH:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/g;->gn:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/g;->J8:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/g;->XL:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/g;->aM:Ljava/util/Set;

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/views/editor/g;->j3:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aide/ui/views/editor/g;->J0:J

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->vy()Lcom/aide/ui/views/editor/A;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cn()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Ljava/io/Reader;ZZI)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x647170a86a8e2620L    # 6.901535155546798E175

    const/4 v2, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/views/editor/b;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/g;->VH:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/g;->gn:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/g;->J8:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/g;->XL:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/views/editor/g;->aM:Ljava/util/Set;

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/views/editor/g;->j3:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aide/ui/views/editor/g;->J0:J

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/aide/ui/views/editor/g;->j6(Ljava/io/Reader;ZIZ)V

    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cn()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x647170a86a8e2620L    # 6.901535155546798E175

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic DW(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/A;
    .registers 2

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->vy()Lcom/aide/ui/views/editor/A;

    move-result-object v0

    return-object v0
.end method

.method private DW([C)Lcom/aide/ui/views/editor/A;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x148c6f3ee21e7284L
    .end annotation

    const-wide v2, 0x1480ba1d63b0b82dL    # 6.35991588809125E-210

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1480ba1d63b0b82dL    # 6.35991588809125E-210

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/views/editor/A;

    invoke-direct {v0, p1}, Lcom/aide/ui/views/editor/A;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x15401b769287a185L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/views/editor/va$j;",
            ">;)V"
        }
    .end annotation

    const-wide v2, 0x39e96af195ad3d00L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x39e96af195ad3d00L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->VH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/g$f;

    invoke-interface {v0, p1}, Lcom/aide/ui/views/editor/g$f;->j6(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method static synthetic FH(Lcom/aide/ui/views/editor/g;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->aM:Ljava/util/Set;

    return-object v0
.end method

.method private FH(Labcd/hm;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x13e091d58c35bba8L
    .end annotation

    const-wide v8, -0xa5c32b4cf025b91L    # -4.757225985650264E258

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa5c32b4cf025b91L    # -4.757225985650264E258

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Labcd/hm;->FH()I

    move-result v1

    invoke-virtual {p1}, Labcd/hm;->Hw()I

    move-result v2

    invoke-virtual {p1}, Labcd/hm;->j6()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1}, Labcd/hm;->DW()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aide/ui/views/editor/g;->j6(IIIIZ)Ljava/io/Reader;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/aide/common/Xa;->j6(Ljava/io/Reader;Ljava/io/Writer;)V

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/g;->Hw(Z)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    iget-object v0, v0, Lcom/aide/ui/views/editor/g$a;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/hm;

    if-eq v0, p1, :cond_1

    iget-object v3, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    iput-object v0, v3, Lcom/aide/ui/views/editor/g$a;->Hw:Labcd/hm;

    new-instance v3, Labcd/hm;

    invoke-direct {v3, v0}, Labcd/hm;-><init>(Labcd/hm;)V

    invoke-virtual {v3}, Labcd/hm;->j6()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Labcd/hm;->j6(I)V

    invoke-virtual {p0, v3, p0}, Lcom/aide/ui/views/editor/g;->j6(Labcd/hm;Ljava/lang/Object;)V

    invoke-virtual {v0}, Labcd/hm;->FH()I

    move-result v4

    invoke-virtual {v0}, Labcd/hm;->Hw()I

    move-result v5

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5, v6, p0}, Lcom/aide/ui/views/editor/g;->j6(IILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;

    move-result-object v4

    invoke-virtual {v4}, Labcd/fm;->j6()I

    move-result v5

    invoke-virtual {v0, v5}, Labcd/hm;->j6(I)V

    invoke-virtual {v4}, Labcd/fm;->DW()I

    move-result v4

    invoke-virtual {v0, v4}, Labcd/hm;->DW(I)V

    invoke-virtual {p0, v3, v0}, Lcom/aide/ui/views/editor/b;->j6(Labcd/hm;Labcd/hm;)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/aide/ui/views/editor/g$a;->Hw:Labcd/hm;

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/g;->Hw(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method static synthetic Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    return-object v0
.end method

.method private J8(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x84b9bb011ca48a5L
    .end annotation

    const-wide v2, -0x4167dca6edb73fccL    # -3.5968538928104613E-7

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x4167dca6edb73fccL    # -3.5968538928104613E-7

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->J8:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/w;

    invoke-interface {v0, p0, p1, p2}, Lcom/aide/ui/views/editor/w;->j6(Lcom/aide/ui/views/editor/g;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    return-void
.end method

.method private KD()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x23e5db5a8e4a9247L
    .end annotation

    const-wide v2, 0x2bf0e37eba88fdc0L    # 4.941700309905023E-97

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2bf0e37eba88fdc0L    # 4.941700309905023E-97

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->VH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/g$f;

    invoke-interface {v0}, Lcom/aide/ui/views/editor/g$f;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method private P8()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x32feea1e7740dfe7L
    .end annotation

    const-wide v2, -0x2484eb23aed09010L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2484eb23aed09010L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->J8:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/w;

    invoke-interface {v0, p0}, Lcom/aide/ui/views/editor/w;->j6(Lcom/aide/ui/views/editor/g;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method private SI()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1482ea0c568ea8abL
    .end annotation

    const-wide v2, -0x185572b4021ed918L    # -2.3660479129724797E191

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x185572b4021ed918L    # -2.3660479129724797E191

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->VH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/g$f;

    invoke-interface {v0}, Lcom/aide/ui/views/editor/g$f;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method private cb()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1f9c9fa45b73ca7cL
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f41a993a846cb83L    # -1.0413071074997595E158

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/aide/ui/views/editor/g;->J0:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-wide v0, p0, Lcom/aide/ui/views/editor/g;->J0:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/aide/ui/views/editor/g;->J0:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-wide v0, p0, Lcom/aide/ui/views/editor/g;->J0:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_2

    const-wide v2, -0x1f41a993a846cb83L    # -1.0413071074997595E158

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cn()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x13c4f27b99e03140L
    .end annotation

    const-wide v2, -0x18f6139d88927561L    # -2.2558950492806572E188

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x18f6139d88927561L    # -2.2558950492806572E188

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/views/editor/e;

    invoke-direct {v0, p0}, Lcom/aide/ui/views/editor/e;-><init>(Lcom/aide/ui/views/editor/g;)V

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/b;->j6(Lcom/aide/ui/views/editor/p;)V

    new-instance v0, Lcom/aide/ui/views/editor/f;

    invoke-direct {v0, p0}, Lcom/aide/ui/views/editor/f;-><init>(Lcom/aide/ui/views/editor/g;)V

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g$f;)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/g;->we(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private ei()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x35c3c7f44ae0e20L
    .end annotation

    const-wide v2, 0x9ab6776bbac09fbL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9ab6776bbac09fbL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/b;->QX()V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->XL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/h;

    invoke-interface {v0, p0}, Lcom/aide/ui/views/editor/h;->j6(Lcom/aide/ui/views/editor/g;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/views/editor/g;[C)Lcom/aide/ui/views/editor/A;
    .registers 3

    invoke-direct {p0, p1}, Lcom/aide/ui/views/editor/g;->DW([C)Lcom/aide/ui/views/editor/A;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/ui/views/editor/g;Labcd/hm;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/views/editor/g;->FH(Labcd/hm;)V

    return-void
.end method

.method private j6(Ljava/io/Reader;ZIZ)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x77701e77c97350a9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x936cf364fdddcb0L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const v0, 0x8000

    new-array v6, v0, [C

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Lcom/aide/ui/views/editor/d;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/aide/ui/views/editor/d;-><init>(Lcom/aide/ui/views/editor/g;Ljava/lang/StringBuffer;ZIZ)V

    invoke-static {p1, v0, v6}, Lcom/aide/ui/views/editor/ra;->j6(Ljava/io/Reader;Lcom/aide/ui/views/editor/ra$a;[C)[C

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->vy()Lcom/aide/ui/views/editor/A;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->trimToSize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_2

    const-wide v2, 0x936cf364fdddcb0L

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method static synthetic j6(Lcom/aide/ui/views/editor/g;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    return p1
.end method

.method private nw()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x14bf628cc1640ad7L
    .end annotation

    const-wide v4, -0x4d871f312eb8c00L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4d871f312eb8c00L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/b;->QX()V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->XL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/h;

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    iget-object v2, v2, Lcom/aide/ui/views/editor/g$a;->FH:Ljava/util/List;

    invoke-interface {v0, p0, v2}, Lcom/aide/ui/views/editor/h;->j6(Lcom/aide/ui/views/editor/g;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method private ro()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x36dc97bb29079519L
    .end annotation

    const-wide v2, 0x633ef749fb46524L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x633ef749fb46524L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->VH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/g$f;

    invoke-interface {v0}, Lcom/aide/ui/views/editor/g$f;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method private sh()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x7941fef230efbe0L
    .end annotation

    const-wide v4, -0x29f9d74b57d81a91L    # -2.541082549002723E106

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x29f9d74b57d81a91L    # -2.541082549002723E106

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/editor/g;->EQ:Z

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->a8()Z

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->gn:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/g$d;

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->a8()Z

    move-result v2

    iput-boolean v2, p0, Lcom/aide/ui/views/editor/g;->EQ:Z

    invoke-interface {v0, p0, v2}, Lcom/aide/ui/views/editor/g$d;->j6(Lcom/aide/ui/views/editor/g;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method private vy()Lcom/aide/ui/views/editor/A;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x289501b95fe389bL
    .end annotation

    const-wide v2, -0x2ebd703c2463fd48L    # -2.8171100415396654E83

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2ebd703c2463fd48L    # -2.8171100415396654E83

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/views/editor/A;

    invoke-direct {v0}, Lcom/aide/ui/views/editor/A;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public BT()V
    .registers 5

    const-wide v2, -0x296ad26bdfaec430L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x296ad26bdfaec430L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/va;->Zo()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public DW()I
    .registers 5

    const-wide v2, -0xd7580d29ca9febcL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xd7580d29ca9febcL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, -0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Labcd/hm;)Ljava/io/Reader;
    .registers 6

    const-wide v2, 0x2599b6ed2917b0cdL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2599b6ed2917b0cdL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->j3:Ljava/lang/String;

    invoke-super {p0, p1, v0}, Lcom/aide/ui/views/editor/b;->DW(Labcd/hm;Ljava/lang/String;)Ljava/io/Reader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(IICLjava/lang/Object;)V
    .registers 15

    const-wide v8, 0x2a2bbbbbbfbe5f0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p3}, Ljava/lang/Character;-><init>(C)V

    const-wide v0, 0x2a2bbbbbbfbe5f0L

    move-object v2, p0

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v1

    if-ge p1, v1, :cond_2

    const/4 v1, 0x1

    new-array v3, v1, [C

    const/4 v1, 0x0

    invoke-virtual {v0, p1}, Lcom/aide/ui/views/editor/A;->j6(I)C

    move-result v2

    aput-char v2, v3, v1

    :goto_0
    invoke-virtual {v0, p3, p1}, Lcom/aide/ui/views/editor/A;->DW(CI)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    const/4 v1, 0x1

    new-array v4, v1, [C

    const/4 v1, 0x0

    aput-char p3, v4, v1

    move v1, p2

    move v2, p1

    move-object v5, p0

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/aide/ui/views/editor/va;->j6(II[C[CLcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, p2, 0x1

    :try_start_2
    invoke-direct {p0, p2, v0}, Lcom/aide/ui/views/editor/g;->J8(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/aide/ui/views/editor/b;->j6(III[C)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->sh()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :cond_2
    const/4 v1, 0x0

    :try_start_3
    new-array v3, v1, [C

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Character;

    invoke-direct {v7, p3}, Ljava/lang/Character;-><init>(C)V

    move-wide v2, v8

    move-object v4, p0

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public DW(IILjava/lang/Object;)V
    .registers 16

    const-wide v10, -0x404b11b80e09f690L    # -0.0817608800626084

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x404b11b80e09f690L    # -0.0817608800626084

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/aide/ui/views/editor/A;

    move-object v8, v0

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {v8, p1}, Lcom/aide/ui/views/editor/A;->j6(I)C

    move-result v5

    move v3, p2

    move v4, p1

    move-object v6, p0

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/aide/ui/views/editor/va;->DW(IICLcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v8, p1}, Lcom/aide/ui/views/editor/A;->FH(I)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, p2, 0x1

    :try_start_2
    invoke-direct {p0, p2, v2}, Lcom/aide/ui/views/editor/g;->J8(II)V

    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/aide/ui/views/editor/b;->FH(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->sh()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v3

    sget-boolean v2, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v2, :cond_2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v4, v10

    move-object v6, p0

    move-object v9, p3

    invoke-static/range {v3 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v3
.end method

.method DW(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x42b92360b19e9900L
    .end annotation

    const-wide v2, -0x11c3186d16c4c601L    # -1.0448249950561479E223

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x11c3186d16c4c601L    # -1.0448249950561479E223

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->VH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/g$f;

    invoke-interface {v0, p0, p1}, Lcom/aide/ui/views/editor/g$f;->j6(Lcom/aide/ui/views/editor/g;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public DW(I)Z
    .registers 6

    const-wide v2, -0x15d063d6869a19a0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x15d063d6869a19a0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(II)Z
    .registers 10

    const-wide v2, -0xec14e1f095b1461L    # -3.1230717305413265E237

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0xec14e1f095b1461L    # -3.1230717305413265E237

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public EQ(I)I
    .registers 6

    const-wide v2, 0x1421b3a954c8a380L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1421b3a954c8a380L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    if-gez p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public EQ()Labcd/hm;
    .registers 5

    const-wide v2, 0x30e04f7478892931L    # 2.884794629223769E-73

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x30e04f7478892931L    # 2.884794629223769E-73

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public EQ(II)Z
    .registers 10

    const-wide v2, -0x328c21d5eb79edbfL    # -1.3077041655382662E65

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x328c21d5eb79edbfL    # -1.3077041655382662E65

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public FH(II)C
    .registers 10

    const-wide v2, 0x120431b051ab0d07L    # 6.983250724836922E-222

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x120431b051ab0d07L    # 6.983250724836922E-222

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v0, p1}, Lcom/aide/ui/views/editor/A;->j6(I)C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public FH()I
    .registers 5

    const-wide v2, 0x78d992f30c51bf0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x78d992f30c51bf0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, -0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(I)Lcom/aide/ui/views/editor/s;
    .registers 8

    const-wide v4, -0x31ae4c1f8689a9afL    # -1.9090493479510417E69

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x31ae4c1f8689a9afL    # -1.9090493479510417E69

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    new-instance v0, Lcom/aide/ui/views/editor/s;

    sget-object v1, Lcom/aide/ui/views/editor/j;->Zo:Lcom/aide/ui/views/editor/j;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/ui/views/editor/s;-><init>(Lcom/aide/ui/views/editor/j;Lcom/aide/ui/views/editor/j;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method FH(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x3b5bc7a38ae0bf18L
    .end annotation

    const-wide v2, -0x180b68ba52ccedf7L    # -5.87154938317718E192

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x180b68ba52ccedf7L    # -5.87154938317718E192

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->VH:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/g$f;

    invoke-interface {v0, p0, p1}, Lcom/aide/ui/views/editor/g$f;->DW(Lcom/aide/ui/views/editor/g;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method public Hw(Z)V
    .registers 6

    const-wide v2, -0x5620d342b52ef71bL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5620d342b52ef71bL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/aide/ui/views/editor/g;->Ws:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(I)Z
    .registers 6

    const-wide v2, -0x339b967c3cae370L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x339b967c3cae370L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(II)Z
    .registers 10

    const-wide v2, 0xda6eaeafd70fb0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0xda6eaeafd70fb0L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public J0(I)[C
    .registers 10

    const-wide v6, 0x29d3128c8c30507L    # 4.463633729573E-296

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x29d3128c8c30507L    # 4.463633729573E-296

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v1

    new-array v1, v1, [C

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/aide/ui/views/editor/A;->j6(II[CI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public J1()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public J8()I
    .registers 5

    const-wide v2, -0x526a2bea055ef9bL    # -5.893298657387583E283

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x526a2bea055ef9bL    # -5.893298657387583E283

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, -0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Mr()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Labcd/hm;",
            ">;"
        }
    .end annotation

    const-wide v2, 0x21ad30f0120668f8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x21ad30f0120668f8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    iget-object v0, v0, Lcom/aide/ui/views/editor/g$a;->FH:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public U2()J
    .registers 5

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1c3dee238cd464cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-wide v0, p0, Lcom/aide/ui/views/editor/g;->J0:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catch_0
    move-exception v0

    :try_start_1
    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    const-wide v2, 0x1c3dee238cd464cL

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public VH(II)I
    .registers 10

    const-wide v2, -0x1cfe2975989cf0cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x1cfe2975989cf0cL

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public VH(I)Z
    .registers 6

    const-wide v2, 0x3893db582a658748L    # 3.734651638665262E-36

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3893db582a658748L    # 3.734651638665262E-36

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Labcd/hm;",
            ">;"
        }
    .end annotation

    const-wide v2, -0x17b84c4b929e6238L    # -2.162776781875542E194

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x17b84c4b929e6238L    # -2.162776781875542E194

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->Mr()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo(I)Z
    .registers 6

    const-wide v2, 0x280089d937a9e574L    # 5.246709597287098E-116

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x280089d937a9e574L    # 5.246709597287098E-116

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo(II)Z
    .registers 10

    const-wide v2, -0xe277f8854d4efa9L    # -2.552789521698496E240

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0xe277f8854d4efa9L    # -2.552789521698496E240

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public a8()Z
    .registers 5

    const-wide v2, -0xad6e2146b90f93cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xad6e2146b90f93cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/va;->j6()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public er()Z
    .registers 5

    const-wide v2, -0x3a5aa0e6ced22decL    # -3.3070760627329455E27

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3a5aa0e6ced22decL    # -3.3070760627329455E27

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/va;->FH()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public gW()V
    .registers 5

    const-wide v2, -0x3bc686059b49ec31L    # -4.699580501986849E20

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3bc686059b49ec31L    # -4.699580501986849E20

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/va;->v5()V

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->sh()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public gn(I)Z
    .registers 6

    const-wide v2, -0xcb2504b986fc2adL    # -2.59455696180477E247

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xcb2504b986fc2adL    # -2.59455696180477E247

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gn(II)Z
    .registers 10

    const-wide v2, 0xad083c3373cc679L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0xad083c3373cc679L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j3()V
    .registers 5

    const-wide v2, 0xb8a3d1d71a10a40L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb8a3d1d71a10a40L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(IILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;
    .registers 15

    const-wide v8, -0x31a7493bcbfe5640L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x31a7493bcbfe5640L

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/aide/ui/views/editor/g;->j6(IIZILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(IIZILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;
    .registers 16

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x97eb2df3b642560L    # -6.809959013790164E262

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p2, v0, :cond_6

    const v0, 0x8000

    new-array v6, v0, [C

    new-instance v0, Lcom/aide/ui/views/editor/g$c;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/aide/ui/views/editor/g$c;-><init>(Lcom/aide/ui/views/editor/g;IIZI)V

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {p5, v0, v6}, Lcom/aide/ui/views/editor/ra;->j6(Ljava/io/Reader;Lcom/aide/ui/views/editor/ra$a;[C)[C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {p5}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object v8, v1

    :goto_1
    :try_start_2
    iget v1, v0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    if-ne p2, v1, :cond_3

    iget v1, v0, Lcom/aide/ui/views/editor/g$c;->FH:I

    if-ne p1, v1, :cond_3

    if-nez v8, :cond_2

    new-instance v1, Labcd/fm;

    iget v2, v0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    iget v0, v0, Lcom/aide/ui/views/editor/g$c;->FH:I

    invoke-direct {v1, v2, v0}, Labcd/fm;-><init>(II)V

    monitor-exit p0

    move-object v0, v1

    :goto_2
    return-object v0

    :catch_0
    move-exception v2

    if-nez v1, :cond_1

    move-object v8, v2

    goto :goto_1

    :cond_2
    throw v8

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    iget v4, v0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    iget v2, v0, Lcom/aide/ui/views/editor/g$c;->FH:I

    add-int/lit8 v5, v2, -0x1

    move v2, p2

    move v3, p1

    move-object v6, p0

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/aide/ui/views/editor/va;->j6(IIIILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_4
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget v1, v0, Lcom/aide/ui/views/editor/g$c;->FH:I

    add-int/lit8 v1, v1, -0x1

    iget v2, v0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/aide/ui/views/editor/b;->DW(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->sh()V

    if-nez v8, :cond_5

    new-instance v1, Labcd/fm;

    iget v2, v0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    iget v0, v0, Lcom/aide/ui/views/editor/g$c;->FH:I

    invoke-direct {v1, v2, v0}, Labcd/fm;-><init>(II)V

    move-object v0, v1

    goto :goto_2

    :cond_5
    throw v8

    :cond_6
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public j6(Ljava/lang/Object;)Labcd/fm;
    .registers 6

    const-wide v2, -0x36557a386b468f08L    # -7.570857255300444E46

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x36557a386b468f08L    # -7.570857255300444E46

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/va;->Hw()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/ui/views/editor/g;->DW(Ljava/util/List;)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {v0, p0, p1}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/g;Ljava/lang/Object;)Labcd/fm;

    move-result-object v0

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->ro()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6([C)Lcom/aide/ui/views/editor/g$e;
    .registers 11

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x1517f90d851ae15L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    if-eqz v1, :cond_6

    if-nez p1, :cond_1

    const v1, 0x8000

    new-array p1, v1, [C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object v2, p1

    move v1, v0

    move v3, v0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v6

    add-int v4, v3, v6

    add-int/lit8 v7, v4, 0x1

    array-length v5, v2

    if-le v7, v5, :cond_3

    array-length v5, v2

    :cond_2
    mul-int/lit8 v5, v5, 0x2

    if-gt v7, v5, :cond_2

    new-array v5, v5, [C

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v7, v5, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v5

    :cond_3
    if-lez v6, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v6, v2, v3}, Lcom/aide/ui/views/editor/A;->j6(II[CI)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    :cond_4
    const/16 v0, 0xa

    aput-char v0, v2, v3

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    :try_start_2
    new-instance v1, Lcom/aide/ui/views/editor/g$e;

    iget-wide v4, p0, Lcom/aide/ui/views/editor/g;->J0:J

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/aide/ui/views/editor/g$e;-><init>([CIJLcom/aide/ui/views/editor/d;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_6
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v0

    move-object v2, p1

    :goto_1
    :try_start_4
    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_7

    const-wide v4, -0x1517f90d851ae15L

    invoke-static {v0, v4, v5, p0, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public j6(IIIIZ)Ljava/io/Reader;
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p5}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x157c913a6796cba8L    # -1.2185413411941348E205

    move-object v2, p0

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v6, p0, Lcom/aide/ui/views/editor/g;->j3:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-super/range {v0 .. v6}, Lcom/aide/ui/views/editor/b;->j6(IIIIZLjava/lang/String;)Ljava/io/Reader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x157c913a6796cba8L    # -1.2185413411941348E205

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Boolean;

    invoke-direct {v9, p5}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(IICLjava/lang/Object;)V
    .registers 15

    const-wide v8, -0x1126e107142bb6f8L    # -9.298511708232676E225

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p3}, Ljava/lang/Character;-><init>(C)V

    const-wide v0, -0x1126e107142bb6f8L    # -9.298511708232676E225

    move-object v2, p0

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v0, p3, p1}, Lcom/aide/ui/views/editor/A;->j6(CI)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    move v1, p2

    move v2, p1

    move v3, p3

    move-object v4, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/aide/ui/views/editor/va;->j6(IICLcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/aide/ui/views/editor/b;->DW(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->sh()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Character;

    invoke-direct {v7, p3}, Ljava/lang/Character;-><init>(C)V

    move-wide v2, v8

    move-object v4, p0

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(IIILjava/lang/Object;)V
    .registers 17

    const-wide v10, 0x336479327b1a28e0L

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x336479327b1a28e0L

    move-object v4, p0

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-lez p3, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/aide/ui/views/editor/A;

    move-object v9, v0

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    add-int v3, p1, p3

    add-int/lit8 v6, v3, -0x1

    move v3, p2

    move v4, p1

    move v5, p2

    move-object v7, p0

    move-object/from16 v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/aide/ui/views/editor/va;->DW(IIIILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v9, p3, p1}, Lcom/aide/ui/views/editor/A;->j6(II)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, p2, 0x1

    :try_start_2
    invoke-direct {p0, p2, v2}, Lcom/aide/ui/views/editor/g;->J8(II)V

    add-int v2, p1, p3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, p1, p2, v2, p2}, Lcom/aide/ui/views/editor/b;->FH(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->sh()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v3

    sget-boolean v2, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v2, :cond_3

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v4, v10

    move-object v6, p0

    move-object/from16 v10, p4

    invoke-static/range {v3 .. v10}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v3
.end method

.method public j6(IILjava/lang/Object;)V
    .registers 14

    const-wide v8, 0x154e5ef2158bb798L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x154e5ef2158bb798L

    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->vy()Lcom/aide/ui/views/editor/A;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v1

    sub-int/2addr v1, p1

    new-array v2, v1, [C

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v1

    sub-int/2addr v1, p1

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v1, v2, v4}, Lcom/aide/ui/views/editor/A;->j6(II[CI)V

    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v1, v2}, Lcom/aide/ui/views/editor/A;->j6([C)V

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1, p1}, Lcom/aide/ui/views/editor/A;->j6(II)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {v0, p2, p1, p0, p3}, Lcom/aide/ui/views/editor/va;->j6(IILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->P8()V

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/aide/ui/views/editor/b;->DW(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->sh()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(II[CLjava/lang/Object;)V
    .registers 15

    const-wide v8, -0x9bda063c1f3d108L    # -4.519991506795024E261

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x9bda063c1f3d108L    # -4.519991506795024E261

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v0, p3, p1}, Lcom/aide/ui/views/editor/A;->j6([CI)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    array-length v1, p3

    add-int/2addr v1, p1

    add-int/lit8 v4, v1, -0x1

    move v1, p2

    move v2, p1

    move v3, p2

    move-object v5, p0

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/aide/ui/views/editor/va;->j6(IIIILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    array-length v0, p3

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p2}, Lcom/aide/ui/views/editor/b;->DW(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->sh()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(ILjava/lang/Object;)V
    .registers 10

    const-wide v2, 0x39d4aa385cf54d60L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x39d4aa385cf54d60L

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v4

    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/A;->j6()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/A;->j6([C)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, v5}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {v0, p1, v4, p0, p2}, Lcom/aide/ui/views/editor/va;->DW(IILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->P8()V

    const/4 v0, -0x1

    invoke-virtual {p0, v4, p1, v0, v5}, Lcom/aide/ui/views/editor/b;->FH(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->sh()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6(I[C)V
    .registers 10

    const-wide v2, 0xbbb83597d95b044L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0xbbb83597d95b044L

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, p2, v5}, Lcom/aide/ui/views/editor/A;->j6(II[CI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Labcd/hm;Ljava/lang/Object;)V
    .registers 13

    const-wide v8, 0x14b12c80023b11bL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x14b12c80023b11bL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Labcd/hm;->Hw()I

    move-result v1

    invoke-virtual {p1}, Labcd/hm;->FH()I

    move-result v2

    invoke-virtual {p1}, Labcd/hm;->DW()I

    move-result v3

    invoke-virtual {p1}, Labcd/hm;->j6()I

    move-result v4

    if-le v1, v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ne v1, v3, :cond_3

    if-lt v4, v2, :cond_1

    :cond_3
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->v5()I

    move-result v0

    if-lt v3, v0, :cond_7

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->v5()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v0

    :goto_1
    add-int/lit8 v4, v0, -0x1

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    move-object v5, p0

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/aide/ui/views/editor/va;->DW(IIIILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_5
    if-ne v1, v3, :cond_8

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    sub-int v1, v4, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/aide/ui/views/editor/A;->j6(II)V

    :goto_2
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Labcd/hm;->FH()I

    move-result v0

    invoke-virtual {p1}, Labcd/hm;->Hw()I

    move-result v1

    invoke-virtual {p1}, Labcd/hm;->j6()I

    move-result v2

    invoke-virtual {p1}, Labcd/hm;->DW()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/aide/ui/views/editor/b;->FH(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->sh()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_6

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v1

    :cond_7
    :try_start_3
    invoke-virtual {p0, v3}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v0

    if-lt v4, v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/aide/ui/views/editor/g;->EQ(I)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    goto :goto_1

    :cond_8
    :try_start_4
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    iget-object v5, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v5}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v5, v2}, Lcom/aide/ui/views/editor/A;->j6(II)V

    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-le v0, v1, :cond_9

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    add-int/lit8 v3, v4, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/aide/ui/views/editor/A;->j6(II)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/A;->j6()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/editor/A;->j6([C)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public j6(Lcom/aide/ui/views/editor/g$d;)V
    .registers 6

    const-wide v2, 0x7d145d14f51ce39L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7d145d14f51ce39L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->gn:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->gn:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/g$f;)V
    .registers 6

    const-wide v2, -0x20bf5f55de7fc12dL    # -6.803577068584785E150

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x20bf5f55de7fc12dL    # -6.803577068584785E150

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->VH:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/h;)V
    .registers 6

    const-wide v2, -0x9e997f200506681L    # -6.890164329819605E260

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x9e997f200506681L    # -6.890164329819605E260

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->XL:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->XL:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/va$j;)V
    .registers 6

    const-wide v2, 0x4fbf3355b4084da9L    # 1.4112399008489279E76

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4fbf3355b4084da9L    # 1.4112399008489279E76

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {v0, p1}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/va$j;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Ljava/io/Reader;Ljava/lang/Object;)V
    .registers 15

    const-wide v10, -0x139178be57d8b411L    # -2.055465557426875E214

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x139178be57d8b411L    # -2.055465557426875E214

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->BT()V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->v5()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    new-instance v2, Labcd/hm;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0, v1}, Labcd/hm;-><init>(IIII)V

    invoke-virtual {p0, v2, p0}, Lcom/aide/ui/views/editor/g;->j6(Labcd/hm;Ljava/lang/Object;)V

    :cond_2
    const v0, 0x8000

    new-array v6, v0, [C

    new-instance v0, Lcom/aide/ui/views/editor/g$c;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/aide/ui/views/editor/g$c;-><init>(Lcom/aide/ui/views/editor/g;IIZI)V

    const/4 v1, 0x0

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p1, v0, v6}, Lcom/aide/ui/views/editor/ra;->j6(Ljava/io/Reader;Lcom/aide/ui/views/editor/ra$a;[C)[C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, v1

    :goto_1
    :try_start_3
    iget v1, v0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    if-nez v1, :cond_3

    iget v1, v0, Lcom/aide/ui/views/editor/g$c;->FH:I

    if-nez v1, :cond_3

    if-nez v8, :cond_6

    :cond_3
    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    iget v5, v0, Lcom/aide/ui/views/editor/g$c;->FH:I

    add-int/lit8 v5, v5, -0x1

    move-object v6, p0

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/aide/ui/views/editor/va;->j6(IIIILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_4
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    iget v3, v0, Lcom/aide/ui/views/editor/g$c;->FH:I

    add-int/lit8 v3, v3, -0x1

    iget v4, v0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/aide/ui/views/editor/b;->DW(IIII)V

    if-nez v8, :cond_5

    iget-boolean v1, v0, Lcom/aide/ui/views/editor/g$c;->v5:Z

    if-nez v1, :cond_5

    iget v1, v0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    if-eqz v1, :cond_5

    iget v0, v0, Lcom/aide/ui/views/editor/g$c;->Hw:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p2}, Lcom/aide/ui/views/editor/g;->j6(ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->gW()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    if-nez v8, :cond_8

    return-void

    :catch_0
    move-exception v2

    if-nez v1, :cond_9

    move-object v8, v2

    goto :goto_1

    :cond_6
    :try_start_5
    throw v8

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_7

    move-wide v2, v10

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    throw v1

    :cond_8
    :try_start_7
    throw v8
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :catch_2
    move-exception v1

    goto :goto_0

    :cond_9
    move-object v8, v1

    goto :goto_1
.end method

.method public j6(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Labcd/hm;",
            ">;)V"
        }
    .end annotation

    const-wide v4, -0x3baec2678e9993e4L    # -1.2721322854822015E21

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3baec2678e9993e4L    # -1.2721322854822015E21

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->ei()V

    if-eqz p1, :cond_1

    new-instance v0, Lcom/aide/ui/views/editor/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aide/ui/views/editor/g$a;-><init>(Lcom/aide/ui/views/editor/d;)V

    iput-object v0, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    iput-object p1, v0, Lcom/aide/ui/views/editor/g$a;->FH:Ljava/util/List;

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->BT()V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    new-instance v1, Lcom/aide/ui/views/editor/g$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/aide/ui/views/editor/g$b;-><init>(Lcom/aide/ui/views/editor/d;)V

    iput-object v1, v0, Lcom/aide/ui/views/editor/g$a;->v5:Lcom/aide/ui/views/editor/g$b;

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    iget-object v0, v0, Lcom/aide/ui/views/editor/g$a;->v5:Lcom/aide/ui/views/editor/g$b;

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/va$j;)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->nw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(I)Z
    .registers 6

    const-wide v2, -0xd5e9950773231e1L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xd5e9950773231e1L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(III)[C
    .registers 14

    const-wide v8, -0xeaa03cd9e61dc63L    # -8.9475864188703E237

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0xeaa03cd9e61dc63L    # -8.9475864188703E237

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    new-array v1, p3, [C

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p3, v1, v2}, Lcom/aide/ui/views/editor/A;->j6(II[CI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public lg()Z
    .registers 5

    const-wide v2, 0xe67abb7999221e3L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xe67abb7999221e3L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public rN()Z
    .registers 5

    const-wide v2, -0x3ef7c01f3a02a9b0L    # -198652.09667460853

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3ef7c01f3a02a9b0L    # -198652.09667460853

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/va;->DW()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public tp()I
    .registers 5

    const-wide v2, 0x1c6a94abe7f25b91L    # 8.597648463663339E-172

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1c6a94abe7f25b91L    # 8.597648463663339E-172

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public tp(II)I
    .registers 10

    const-wide v2, -0x1a802a197f148a7cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x1a802a197f148a7cL

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public tp(I)Z
    .registers 6

    const-wide v2, -0x10b9df2c8e01b03fL    # -1.0484152781682744E228

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x10b9df2c8e01b03fL    # -1.0484152781682744E228

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7()Labcd/hm;
    .registers 5

    const-wide v2, -0xc8b0995b57e25a3L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc8b0995b57e25a3L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7(I)Z
    .registers 6

    const-wide v2, -0x35957e9dae78b3d1L    # -3.0990155964163E50

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x35957e9dae78b3d1L    # -3.0990155964163E50

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7(II)Z
    .registers 10

    const-wide v2, -0x6abf7ca7f978330L    # -2.774225678598436E276

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x6abf7ca7f978330L    # -2.774225678598436E276

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public v5()I
    .registers 5

    const-wide v2, 0xaaabd8e144ebed0L    # 2.78267454079707E-257

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xaaabd8e144ebed0L    # 2.78267454079707E-257

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5(I)Z
    .registers 6

    const-wide v2, 0x28cefcddc650c911L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x28cefcddc650c911L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5(II)Z
    .registers 10

    const-wide v2, 0x7bf4d991f5e02efL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x7bf4d991f5e02efL

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public we(I)V
    .registers 6

    const-wide v2, -0x38414cca03ab1f68L    # -4.0807355970699415E37

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x38414cca03ab1f68L    # -4.0807355970699415E37

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    if-lez p1, :cond_3

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {v0, p1}, Lcom/aide/ui/views/editor/va;->j6(I)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/aide/ui/views/editor/va;

    invoke-direct {v0, p0, p1}, Lcom/aide/ui/views/editor/va;-><init>(Lcom/aide/ui/views/editor/g;I)V

    iput-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public we(II)Z
    .registers 10

    const-wide v2, 0x1282b66135cd4065L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x1282b66135cd4065L

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public yS()Labcd/fm;
    .registers 5

    const-wide v2, 0x2548b0942511efe9L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2548b0942511efe9L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->KD()V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {v0, p0}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/g;)Labcd/fm;

    move-result-object v0

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->SI()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
