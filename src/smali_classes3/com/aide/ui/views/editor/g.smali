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
            "Ljava/util/Set<",
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
            "Ljava/util/Vector<",
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
            "Ljava/util/List<",
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
            "Ljava/util/Set<",
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
            "Ljava/util/Vector<",
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
            "Ljava/util/Vector<",
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
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/g;

    const-wide v1, 0x9bc2c072ae09d4fL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x34657decbea6f62fL  # 2.7390849591385324E-56

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Lcom/aide/ui/views/editor/b;-><init>()V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/editor/g;->VH:Ljava/util/Vector;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/editor/g;->gn:Ljava/util/Vector;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/editor/g;->J8:Ljava/util/Set;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/editor/g;->XL:Ljava/util/List;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/views/editor/g;->aM:Ljava/util/Set;

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/views/editor/g;->j3:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/aide/ui/views/editor/g;->J0:J

    iget-object v3, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->vy()Lcom/aide/ui/views/editor/A;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cn()V
    :try_end_54
    .catchall {:try_start_6 .. :try_end_54} :catchall_55

    return-void

    :catchall_55
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v4, :cond_5d

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5d
    throw v3
.end method

.method public constructor <init>(Ljava/io/Reader;ZZI)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x647170a86a8e2620L  # 6.901535155546798E175

    const/4 v3, 0x0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
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
    :try_end_62
    .catchall {:try_start_0 .. :try_end_62} :catchall_63

    return-void

    :catchall_63
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_82

    const-wide v2, 0x647170a86a8e2620L  # 6.901535155546798E175

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_82
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/A;
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->vy()Lcom/aide/ui/views/editor/A;

    move-result-object p0

    return-object p0
.end method

.method private DW([C)Lcom/aide/ui/views/editor/A;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x148c6f3ee21e7284L
    .end annotation

    const-wide v0, 0x1480ba1d63b0b82dL  # 6.35991588809125E-210

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/views/editor/A;

    invoke-direct {v2, p1}, Lcom/aide/ui/views/editor/A;-><init>([C)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v2

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method private DW(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x15401b769287a185L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/ui/views/editor/va$j;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x39e96af195ad3d00L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->VH:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/views/editor/g$f;

    invoke-interface {v3, p1}, Lcom/aide/ui/views/editor/g$f;->j6(Ljava/util/List;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_23

    goto :goto_12

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    goto :goto_2d

    :goto_2c
    throw v2

    :goto_2d
    goto :goto_2c
.end method

.method static synthetic FH(Lcom/aide/ui/views/editor/g;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/views/editor/g;->aM:Ljava/util/Set;

    return-object p0
.end method

.method private FH(Labcd/hm;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x13e091d58c35bba8L
    .end annotation

    const-wide v0, -0xa5c32b4cf025b91L  # -4.757225985650264E258

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_8d

    :try_start_11
    invoke-virtual {p1}, Labcd/hm;->FH()I

    move-result v4

    invoke-virtual {p1}, Labcd/hm;->Hw()I

    move-result v5

    invoke-virtual {p1}, Labcd/hm;->j6()I

    move-result v3

    const/4 v9, 0x1

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1}, Labcd/hm;->DW()I

    move-result v7

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/aide/ui/views/editor/g;->j6(IIIIZ)Ljava/io/Reader;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/aide/common/Xa;->j6(Ljava/io/Reader;Ljava/io/Writer;)V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v9}, Lcom/aide/ui/views/editor/g;->Hw(Z)V

    iget-object v3, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    iget-object v3, v3, Lcom/aide/ui/views/editor/g$a;->FH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3c
    :goto_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/hm;

    if-eq v4, p1, :cond_3c

    iget-object v5, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    iput-object v4, v5, Lcom/aide/ui/views/editor/g$a;->Hw:Labcd/hm;

    new-instance v5, Labcd/hm;

    invoke-direct {v5, v4}, Labcd/hm;-><init>(Labcd/hm;)V

    invoke-virtual {v5}, Labcd/hm;->j6()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-virtual {v5, v6}, Labcd/hm;->j6(I)V

    invoke-virtual {p0, v5, p0}, Lcom/aide/ui/views/editor/g;->j6(Labcd/hm;Ljava/lang/Object;)V

    invoke-virtual {v4}, Labcd/hm;->FH()I

    move-result v6

    invoke-virtual {v4}, Labcd/hm;->Hw()I

    move-result v7

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7, v8, p0}, Lcom/aide/ui/views/editor/g;->j6(IILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;

    move-result-object v6

    invoke-virtual {v6}, Labcd/fm;->j6()I

    move-result v7

    invoke-virtual {v4, v7}, Labcd/hm;->j6(I)V

    invoke-virtual {v6}, Labcd/fm;->DW()I

    move-result v6

    invoke-virtual {v4, v6}, Labcd/hm;->DW(I)V

    invoke-virtual {p0, v5, v4}, Lcom/aide/ui/views/editor/b;->j6(Labcd/hm;Labcd/hm;)V

    iget-object v4, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/aide/ui/views/editor/g$a;->Hw:Labcd/hm;

    goto :goto_3c

    :cond_86
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/g;->Hw(Z)V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_8a} :catch_8b
    .catchall {:try_start_11 .. :try_end_8a} :catchall_8d

    goto :goto_8c

    :catch_8b
    move-exception p1

    :goto_8c
    return-void

    :catchall_8d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_95

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_95
    goto :goto_97

    :goto_96
    throw v2

    :goto_97
    goto :goto_96
.end method

.method static synthetic Hw(Lcom/aide/ui/views/editor/g;)Lcom/aide/ui/views/editor/g$a;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    return-object p0
.end method

.method private J8(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x84b9bb011ca48a5L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x4167dca6edb73fccL  # -3.5968538928104613E-7

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->J8:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/views/editor/w;

    invoke-interface {v1, p0, p1, p2}, Lcom/aide/ui/views/editor/w;->j6(Lcom/aide/ui/views/editor/g;II)V
    :try_end_2b
    .catchall {:try_start_0 .. :try_end_2b} :catchall_2d

    goto :goto_1c

    :cond_2c
    return-void

    :catchall_2d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_46

    const-wide v2, -0x4167dca6edb73fccL  # -3.5968538928104613E-7

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    goto :goto_48

    :goto_47
    throw v0

    :goto_48
    goto :goto_47
.end method

.method private KD()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x23e5db5a8e4a9247L
    .end annotation

    const-wide v0, 0x2bf0e37eba88fdc0L  # 4.941700309905023E-97

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->VH:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/views/editor/g$f;

    invoke-interface {v3}, Lcom/aide/ui/views/editor/g$f;->j6()V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_23

    goto :goto_12

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    goto :goto_2d

    :goto_2c
    throw v2

    :goto_2d
    goto :goto_2c
.end method

.method private P8()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x32feea1e7740dfe7L
    .end annotation

    const-wide v0, -0x2484eb23aed09010L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->J8:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/views/editor/w;

    invoke-interface {v3, p0}, Lcom/aide/ui/views/editor/w;->j6(Lcom/aide/ui/views/editor/g;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_23

    goto :goto_12

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    goto :goto_2d

    :goto_2c
    throw v2

    :goto_2d
    goto :goto_2c
.end method

.method private SI()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1482ea0c568ea8abL
    .end annotation

    const-wide v0, -0x185572b4021ed918L  # -2.3660479129724797E191

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->VH:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/views/editor/g$f;

    invoke-interface {v3}, Lcom/aide/ui/views/editor/g$f;->DW()V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_23

    goto :goto_12

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    goto :goto_2d

    :goto_2c
    throw v2

    :goto_2d
    goto :goto_2c
.end method

.method private cb()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x1f9c9fa45b73ca7cL
    .end annotation

    monitor-enter p0

    const-wide v0, -0x1f41a993a846cb83L  # -1.0413071074997595E158

    :try_start_6
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_d

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/aide/ui/views/editor/g;->J0:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1d

    const-wide/16 v2, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/aide/ui/views/editor/g;->J0:J

    goto :goto_1f

    :cond_1d
    iput-wide v2, p0, Lcom/aide/ui/views/editor/g;->J0:J
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_21

    :goto_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v2

    :try_start_22
    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cn()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x13c4f27b99e03140L
    .end annotation

    const-wide v0, -0x18f6139d88927561L  # -2.2558950492806572E188

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/views/editor/e;

    invoke-direct {v2, p0}, Lcom/aide/ui/views/editor/e;-><init>(Lcom/aide/ui/views/editor/g;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/b;->j6(Lcom/aide/ui/views/editor/p;)V

    new-instance v2, Lcom/aide/ui/views/editor/f;

    invoke-direct {v2, p0}, Lcom/aide/ui/views/editor/f;-><init>(Lcom/aide/ui/views/editor/g;)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/g$f;)V

    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/g;->we(I)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method private ei()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x35c3c7f44ae0e20L
    .end annotation

    const-wide v0, 0x9ab6776bbac09fbL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/b;->QX()V

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->XL:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/views/editor/h;

    invoke-interface {v3, p0}, Lcom/aide/ui/views/editor/h;->j6(Lcom/aide/ui/views/editor/g;)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_26

    goto :goto_15

    :cond_25
    return-void

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    goto :goto_30

    :goto_2f
    throw v2

    :goto_30
    goto :goto_2f
.end method

.method static synthetic j6(Lcom/aide/ui/views/editor/g;[C)Lcom/aide/ui/views/editor/A;
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/views/editor/g;->DW([C)Lcom/aide/ui/views/editor/A;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/ui/views/editor/g;)Ljava/util/Vector;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    return-object p0
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

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x936cf364fdddcb0L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    const v0, 0x8000

    new-array v0, v0, [C

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Lcom/aide/ui/views/editor/d;

    move-object v1, v7

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/aide/ui/views/editor/d;-><init>(Lcom/aide/ui/views/editor/g;Ljava/lang/StringBuffer;ZIZ)V

    invoke-static {p1, v7, v0}, Lcom/aide/ui/views/editor/ra;->j6(Ljava/io/Reader;Lcom/aide/ui/views/editor/ra$a;[C)[C

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->vy()Lcom/aide/ui/views/editor/A;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_45
    invoke-virtual {p1}, Ljava/io/Reader;->close()V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->trimToSize()V
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_4e

    return-void

    :catchall_4e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_6d

    const-wide v2, 0x936cf364fdddcb0L

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6d
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/views/editor/g;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    return p1
.end method

.method private nw()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x14bf628cc1640ad7L
    .end annotation

    const-wide v0, -0x4d871f312eb8c00L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/b;->QX()V

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->XL:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/views/editor/h;

    iget-object v4, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    iget-object v4, v4, Lcom/aide/ui/views/editor/g$a;->FH:Ljava/util/List;

    invoke-interface {v3, p0, v4}, Lcom/aide/ui/views/editor/h;->j6(Lcom/aide/ui/views/editor/g;Ljava/util/List;)V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2a

    goto :goto_15

    :cond_29
    return-void

    :catchall_2a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    goto :goto_34

    :goto_33
    throw v2

    :goto_34
    goto :goto_33
.end method

.method private ro()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x36dc97bb29079519L
    .end annotation

    const-wide v0, 0x633ef749fb46524L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->VH:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/views/editor/g$f;

    invoke-interface {v3}, Lcom/aide/ui/views/editor/g$f;->FH()V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_23

    goto :goto_12

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    goto :goto_2d

    :goto_2c
    throw v2

    :goto_2d
    goto :goto_2c
.end method

.method private sh()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x7941fef230efbe0L
    .end annotation

    const-wide v0, -0x29f9d74b57d81a91L  # -2.541082549002723E106

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v2, p0, Lcom/aide/ui/views/editor/g;->EQ:Z

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->a8()Z

    move-result v3

    if-eq v2, v3, :cond_30

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->gn:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/views/editor/g$d;

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->a8()Z

    move-result v4

    iput-boolean v4, p0, Lcom/aide/ui/views/editor/g;->EQ:Z

    invoke-interface {v3, p0, v4}, Lcom/aide/ui/views/editor/g$d;->j6(Lcom/aide/ui/views/editor/g;Z)V
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_31

    goto :goto_1a

    :cond_30
    return-void

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_39
    goto :goto_3b

    :goto_3a
    throw v2

    :goto_3b
    goto :goto_3a
.end method

.method private vy()Lcom/aide/ui/views/editor/A;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x289501b95fe389bL
    .end annotation

    const-wide v0, -0x2ebd703c2463fd48L  # -2.8171100415396654E83

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/views/editor/A;

    invoke-direct {v2}, Lcom/aide/ui/views/editor/A;-><init>()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v2

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method


# virtual methods
.method public BT()V
    .registers 5

    const-wide v0, -0x296ad26bdfaec430L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/va;->Zo()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public DW()I
    .registers 5

    const-wide v0, -0xd7580d29ca9febcL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, -0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public DW(Labcd/hm;)Ljava/io/Reader;
    .registers 6

    const-wide v0, 0x2599b6ed2917b0cdL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->j3:Ljava/lang/String;

    invoke-super {p0, p1, v2}, Lcom/aide/ui/views/editor/b;->DW(Labcd/hm;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public DW(IICLjava/lang/Object;)V
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_1d

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Character;

    invoke-direct {v6, p3}, Ljava/lang/Character;-><init>(C)V

    const-wide v1, 0x2a2bbbbbbfbe5f0L

    move-object v3, p0

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    monitor-enter p0
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_61

    :try_start_21
    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v1}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v2

    const/4 v3, 0x0

    if-ge p1, v2, :cond_39

    new-array v2, v0, [C

    invoke-virtual {v1, p1}, Lcom/aide/ui/views/editor/A;->j6(I)C

    move-result v4

    aput-char v4, v2, v3

    goto :goto_3b

    :cond_39
    new-array v2, v3, [C

    :goto_3b
    invoke-virtual {v1, p3, p1}, Lcom/aide/ui/views/editor/A;->DW(CI)V

    iget-object v4, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v4, :cond_4e

    new-array v8, v0, [C

    aput-char p3, v8, v3

    move v5, p2

    move v6, p1

    move-object v7, v2

    move-object v9, p0

    move-object v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/aide/ui/views/editor/va;->j6(II[C[CLcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_4e
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_21 .. :try_end_52} :catchall_5e

    add-int/lit8 v1, p2, 0x1

    :try_start_54
    invoke-direct {p0, p2, v1}, Lcom/aide/ui/views/editor/g;->J8(II)V

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/aide/ui/views/editor/b;->j6(III[C)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->sh()V
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_61

    return-void

    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    :try_start_60
    throw v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_80

    const-wide v2, 0x2a2bbbbbbfbe5f0L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Character;

    invoke-direct {v7, p3}, Ljava/lang/Character;-><init>(C)V

    move-object v1, v0

    move-object v4, p0

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_80
    throw v0
.end method

.method public DW(IILjava/lang/Object;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x404b11b80e09f690L  # -0.0817608800626084

    move-object v3, p0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    monitor-enter p0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_49

    :try_start_1c
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v1, :cond_33

    invoke-virtual {v0, p1}, Lcom/aide/ui/views/editor/A;->j6(I)C

    move-result v4

    move v2, p2

    move v3, p1

    move-object v5, p0

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/aide/ui/views/editor/va;->DW(IICLcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_33
    invoke-virtual {v0, p1}, Lcom/aide/ui/views/editor/A;->FH(I)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_46

    add-int/lit8 v0, p2, 0x1

    :try_start_3c
    invoke-direct {p0, p2, v0}, Lcom/aide/ui/views/editor/g;->J8(II)V

    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/aide/ui/views/editor/b;->FH(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->sh()V
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_49

    return-void

    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    :try_start_48
    throw v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_63

    const-wide v2, -0x404b11b80e09f690L  # -0.0817608800626084

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    throw v0
.end method

.method DW(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x42b92360b19e9900L
    .end annotation

    const-wide v0, -0x11c3186d16c4c601L  # -1.0448249950561479E223

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->VH:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/views/editor/g$f;

    invoke-interface {v3, p0, p1}, Lcom/aide/ui/views/editor/g$f;->j6(Lcom/aide/ui/views/editor/g;Z)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_23

    goto :goto_12

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_30

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    goto :goto_32

    :goto_31
    throw v2

    :goto_32
    goto :goto_31
.end method

.method public DW(I)Z
    .registers 6

    const-wide v0, -0x15d063d6869a19a0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public DW(II)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0xec14e1f095b1461L  # -3.1230717305413265E237

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_18

    :cond_16
    const/4 p1, 0x0

    return p1

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_31

    const-wide v2, -0xec14e1f095b1461L  # -3.1230717305413265E237

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public EQ(I)I
    .registers 6

    const-wide v0, 0x1421b3a954c8a380L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-le v2, p1, :cond_24

    if-gez p1, :cond_17

    goto :goto_24

    :cond_17
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result p1
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_26

    return p1

    :cond_24
    :goto_24
    const/4 p1, 0x0

    return p1

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_33

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public EQ()Labcd/hm;
    .registers 5

    const-wide v0, 0x30e04f7478892931L  # 2.884794629223769E-73

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public EQ(II)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x328c21d5eb79edbfL  # -1.3077041655382662E65

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_18

    :cond_16
    const/4 p1, 0x0

    return p1

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_31

    const-wide v2, -0x328c21d5eb79edbfL  # -1.3077041655382662E65

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public FH(II)C
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x120431b051ab0d07L  # 6.983250724836922E-222

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v0, p1}, Lcom/aide/ui/views/editor/A;->j6(I)C

    move-result p1
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    return p1

    :catchall_23
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_3c

    const-wide v2, 0x120431b051ab0d07L  # 6.983250724836922E-222

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method

.method public FH()I
    .registers 5

    const-wide v0, 0x78d992f30c51bf0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, -0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public FH(I)Lcom/aide/ui/views/editor/s;
    .registers 8

    const-wide v0, -0x31ae4c1f8689a9afL  # -1.9090493479510417E69

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    new-instance v2, Lcom/aide/ui/views/editor/s;

    sget-object v3, Lcom/aide/ui/views/editor/j;->Zo:Lcom/aide/ui/views/editor/j;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/aide/ui/views/editor/s;-><init>(Lcom/aide/ui/views/editor/j;Lcom/aide/ui/views/editor/j;I)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_23

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method FH(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x3b5bc7a38ae0bf18L
    .end annotation

    const-wide v0, -0x180b68ba52ccedf7L  # -5.87154938317718E192

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->VH:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/views/editor/g$f;

    invoke-interface {v3, p0, p1}, Lcom/aide/ui/views/editor/g$f;->DW(Lcom/aide/ui/views/editor/g;Z)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_23

    goto :goto_12

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_30

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    goto :goto_32

    :goto_31
    throw v2

    :goto_32
    goto :goto_31
.end method

.method public Hw(Z)V
    .registers 6

    const-wide v0, -0x5620d342b52ef71bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iput-boolean p1, p0, Lcom/aide/ui/views/editor/g;->Ws:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public Hw(I)Z
    .registers 6

    const-wide v0, -0x339b967c3cae370L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public Hw(II)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0xda6eaeafd70fb0L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_18

    :cond_16
    const/4 p1, 0x0

    return p1

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_31

    const-wide v2, 0xda6eaeafd70fb0L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public J0(I)[C
    .registers 8

    const-wide v0, 0x29d3128c8c30507L  # 4.463633729573E-296

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v3

    new-array v3, v3, [C

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4, v3, v5}, Lcom/aide/ui/views/editor/A;->j6(II[CI)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    return-object v3

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_30

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public J1()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public J8()I
    .registers 5

    const-wide v0, -0x526a2bea055ef9bL  # -5.893298657387583E283

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, -0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public Mr()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Labcd/hm;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x21ad30f0120668f8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    if-nez v2, :cond_15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_15
    iget-object v0, v2, Lcom/aide/ui/views/editor/g$a;->FH:Ljava/util/List;
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-object v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public U2()J
    .registers 5

    monitor-enter p0

    const-wide v0, 0x1c3dee238cd464cL

    :try_start_6
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_d

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    iget-wide v0, p0, Lcom/aide/ui/views/editor/g;->J0:J
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-wide v0

    :catchall_11
    move-exception v2

    :try_start_12
    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public VH(II)I
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x1cfe2975989cf0cL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_18

    :cond_16
    const/4 p1, 0x0

    return p1

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_31

    const-wide v2, -0x1cfe2975989cf0cL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public VH(I)Z
    .registers 6

    const-wide v0, 0x3893db582a658748L  # 3.734651638665262E-36

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public Zo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Labcd/hm;",
            ">;"
        }
    .end annotation

    const-wide v0, -0x17b84c4b929e6238L  # -2.162776781875542E194

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->Mr()Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-object v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public Zo(I)Z
    .registers 6

    const-wide v0, 0x280089d937a9e574L  # 5.246709597287098E-116

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public Zo(II)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0xe277f8854d4efa9L  # -2.552789521698496E240

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_18

    :cond_16
    const/4 p1, 0x0

    return p1

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_31

    const-wide v2, -0xe277f8854d4efa9L  # -2.552789521698496E240

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public a8()Z
    .registers 5

    const-wide v0, -0xad6e2146b90f93cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-nez v2, :cond_13

    iget-boolean v0, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    return v0

    :cond_13
    invoke-virtual {v2}, Lcom/aide/ui/views/editor/va;->j6()Z

    move-result v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1a

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public er()Z
    .registers 5

    const-wide v0, -0x3a5aa0e6ced22decL  # -3.3070760627329455E27

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/va;->FH()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public gW()V
    .registers 5

    const-wide v0, -0x3bc686059b49ec31L  # -4.699580501986849E20

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/va;->v5()V

    :cond_16
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->sh()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public gn(I)Z
    .registers 6

    const-wide v0, -0xcb2504b986fc2adL  # -2.59455696180477E247

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public gn(II)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0xad083c3373cc679L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_18

    :cond_16
    const/4 p1, 0x0

    return p1

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_31

    const-wide v2, 0xad083c3373cc679L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public j3()V
    .registers 5

    const-wide v0, 0xb8a3d1d71a10a40L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(IILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_19

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x31a7493bcbfe5640L

    move-object v3, p0

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/aide/ui/views/editor/g;->j6(IIZILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-object p1

    :catchall_25
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_40

    const-wide v2, -0x31a7493bcbfe5640L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method public j6(IIZILjava/io/Reader;Ljava/lang/Object;)Labcd/fm;
    .registers 20

    move-object v8, p0

    move v9, p1

    move v10, p2

    move-object/from16 v7, p5

    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    const/4 v11, 0x1

    if-eqz v0, :cond_3f

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v11

    new-instance v1, Ljava/lang/Boolean;

    move/from16 v5, p3

    invoke-direct {v1, v5}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    move/from16 v6, p4

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object v7, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const-wide v1, -0x97eb2df3b642560L  # -6.809959013790164E262

    invoke-static {v1, v2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_43

    :cond_3f
    move/from16 v5, p3

    move/from16 v6, p4

    :goto_43
    iget-object v0, v8, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v10, v0, :cond_b7

    const v0, 0x8000

    new-array v0, v0, [C

    new-instance v12, Lcom/aide/ui/views/editor/g$c;

    move-object v1, v12

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/aide/ui/views/editor/g$c;-><init>(Lcom/aide/ui/views/editor/g;IIZI)V

    monitor-enter p0

    :try_start_5e
    invoke-static {v7, v12, v0}, Lcom/aide/ui/views/editor/ra;->j6(Ljava/io/Reader;Lcom/aide/ui/views/editor/ra$a;[C)[C
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_66
    .catchall {:try_start_5e .. :try_end_61} :catchall_64

    const/4 v0, 0x0

    :goto_62
    move-object v1, v0

    goto :goto_68

    :catchall_64
    move-exception v0

    goto :goto_b5

    :catch_66
    move-exception v0

    goto :goto_62

    :goto_68
    :try_start_68
    invoke-virtual/range {p5 .. p5}, Ljava/io/Reader;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c
    .catchall {:try_start_68 .. :try_end_6b} :catchall_64

    goto :goto_70

    :catch_6c
    move-exception v0

    if-nez v1, :cond_70

    goto :goto_71

    :cond_70
    :goto_70
    move-object v0, v1

    :goto_71
    :try_start_71
    iget v1, v12, Lcom/aide/ui/views/editor/g$c;->Hw:I

    if-ne v10, v1, :cond_87

    iget v1, v12, Lcom/aide/ui/views/editor/g$c;->FH:I

    if-ne v9, v1, :cond_87

    if-nez v0, :cond_86

    new-instance v0, Labcd/fm;

    iget v1, v12, Lcom/aide/ui/views/editor/g$c;->Hw:I

    iget v2, v12, Lcom/aide/ui/views/editor/g$c;->FH:I

    invoke-direct {v0, v1, v2}, Labcd/fm;-><init>(II)V

    monitor-exit p0

    return-object v0

    :cond_86
    throw v0

    :cond_87
    iget-object v1, v8, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v1, :cond_99

    iget v4, v12, Lcom/aide/ui/views/editor/g$c;->Hw:I

    iget v2, v12, Lcom/aide/ui/views/editor/g$c;->FH:I

    add-int/lit8 v5, v2, -0x1

    move v2, p2

    move v3, p1

    move-object v6, p0

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/aide/ui/views/editor/va;->j6(IIIILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_99
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_9d
    .catchall {:try_start_71 .. :try_end_9d} :catchall_64

    iget v1, v12, Lcom/aide/ui/views/editor/g$c;->FH:I

    sub-int/2addr v1, v11

    iget v2, v12, Lcom/aide/ui/views/editor/g$c;->Hw:I

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/aide/ui/views/editor/b;->DW(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->sh()V

    if-nez v0, :cond_b4

    new-instance v0, Labcd/fm;

    iget v1, v12, Lcom/aide/ui/views/editor/g$c;->Hw:I

    iget v2, v12, Lcom/aide/ui/views/editor/g$c;->FH:I

    invoke-direct {v0, v1, v2}, Labcd/fm;-><init>(II)V

    return-object v0

    :cond_b4
    throw v0

    :goto_b5
    :try_start_b5
    monitor-exit p0
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_64

    throw v0

    :cond_b7
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    goto :goto_be

    :goto_bd
    throw v0

    :goto_be
    goto :goto_bd
.end method

.method public j6(Ljava/lang/Object;)Labcd/fm;
    .registers 6

    const-wide v0, -0x36557a386b468f08L  # -7.570857255300444E46

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/va;->Hw()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/ui/views/editor/g;->DW(Ljava/util/List;)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {v2, p0, p1}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/g;Ljava/lang/Object;)Labcd/fm;

    move-result-object v2

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->ro()V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_23

    return-object v2

    :cond_21
    const/4 p1, 0x0

    return-object p1

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public j6([C)Lcom/aide/ui/views/editor/g$e;
    .registers 12

    monitor-enter p0

    const-wide v0, -0x1517f90d851ae15L

    :try_start_6
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_d

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    if-eqz v2, :cond_5f

    if-nez p1, :cond_18

    const v2, 0x8000

    new-array p1, v2, [C

    :cond_18
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1b
    iget-object v4, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_51

    iget-object v4, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v6

    add-int v7, v5, v6

    add-int/lit8 v8, v7, 0x1

    array-length v9, p1

    if-le v8, v9, :cond_42

    array-length v9, p1

    :goto_37
    mul-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_3c

    goto :goto_37

    :cond_3c
    new-array v8, v9, [C

    invoke-static {p1, v2, v8, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v8

    :cond_42
    if-lez v6, :cond_48

    invoke-virtual {v4, v2, v6, p1, v5}, Lcom/aide/ui/views/editor/A;->j6(II[CI)V
    :try_end_47
    .catchall {:try_start_6 .. :try_end_47} :catchall_5d

    move v5, v7

    :cond_48
    const/16 v4, 0xa

    aput-char v4, p1, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_51
    :try_start_51
    new-instance v2, Lcom/aide/ui/views/editor/g$e;

    iget-wide v6, p0, Lcom/aide/ui/views/editor/g;->J0:J

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/aide/ui/views/editor/g$e;-><init>([CIJLcom/aide/ui/views/editor/d;)V
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_5d

    monitor-exit p0

    return-object v2

    :catchall_5d
    move-exception v2

    goto :goto_65

    :cond_5f
    :try_start_5f
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_5d

    :goto_65
    :try_start_65
    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_6c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6c
    throw v2
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception p1

    monitor-exit p0

    goto :goto_71

    :goto_70
    throw p1

    :goto_71
    goto :goto_70
.end method

.method public j6(IIIIZ)Ljava/io/Reader;
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_26

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p5}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x157c913a6796cba8L  # -1.2185413411941348E205

    move-object v3, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    iget-object v7, p0, Lcom/aide/ui/views/editor/g;->j3:Ljava/lang/String;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-super/range {v1 .. v7}, Lcom/aide/ui/views/editor/b;->j6(IIIIZLjava/lang/String;)Ljava/io/Reader;

    move-result-object p1
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    return-object p1

    :catchall_33
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_5b

    const-wide v2, -0x157c913a6796cba8L  # -1.2185413411941348E205

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

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5b
    throw v0
.end method

.method public j6(IICLjava/lang/Object;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_1d

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Character;

    invoke-direct {v6, p3}, Ljava/lang/Character;-><init>(C)V

    const-wide v1, -0x1126e107142bb6f8L  # -9.298511708232676E225

    move-object v3, p0

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    monitor-enter p0
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_46

    :try_start_21
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v0, p3, p1}, Lcom/aide/ui/views/editor/A;->j6(CI)V

    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v1, :cond_38

    move v2, p2

    move v3, p1

    move v4, p3

    move-object v5, p0

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/aide/ui/views/editor/va;->j6(IICLcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_38
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_21 .. :try_end_3c} :catchall_43

    :try_start_3c
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/aide/ui/views/editor/b;->DW(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->sh()V
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_46

    return-void

    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_65

    const-wide v2, -0x1126e107142bb6f8L  # -9.298511708232676E225

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Character;

    invoke-direct {v7, p3}, Ljava/lang/Character;-><init>(C)V

    move-object v1, v0

    move-object v4, p0

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_65
    throw v0
.end method

.method public j6(IIILjava/lang/Object;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_1d

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x336479327b1a28e0L

    move-object v3, p0

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    if-lez p3, :cond_54

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    monitor-enter p0
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_55

    :try_start_23
    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/views/editor/A;

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v2, :cond_3b

    add-int v3, p1, p3

    add-int/lit8 v6, v3, -0x1

    move v3, p2

    move v4, p1

    move v5, p2

    move-object v7, p0

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/aide/ui/views/editor/va;->DW(IIIILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_3b
    invoke-virtual {v1, p3, p1}, Lcom/aide/ui/views/editor/A;->j6(II)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_23 .. :try_end_42} :catchall_51

    add-int/lit8 v1, p2, 0x1

    :try_start_44
    invoke-direct {p0, p2, v1}, Lcom/aide/ui/views/editor/g;->J8(II)V

    add-int v1, p1, p3

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, p2, v1, p2}, Lcom/aide/ui/views/editor/b;->FH(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->sh()V
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_55

    goto :goto_54

    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    :try_start_53
    throw v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_55

    :cond_54
    :goto_54
    return-void

    :catchall_55
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_74

    const-wide v2, 0x336479327b1a28e0L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_74
    throw v0
.end method

.method public j6(IILjava/lang/Object;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x154e5ef2158bb798L

    move-object v3, p0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    monitor-enter p0
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_6b

    :try_start_1c
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

    new-array v1, v1, [C

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v2

    sub-int/2addr v2, p1

    const/4 v4, 0x0

    invoke-virtual {v0, p1, v2, v1, v4}, Lcom/aide/ui/views/editor/A;->j6(II[CI)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v2, v1}, Lcom/aide/ui/views/editor/A;->j6([C)V

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1, p1}, Lcom/aide/ui/views/editor/A;->j6(II)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v0, :cond_59

    invoke-virtual {v0, p2, p1, p0, p3}, Lcom/aide/ui/views/editor/va;->j6(IILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_59
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_1c .. :try_end_5d} :catchall_68

    :try_start_5d
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->P8()V

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/aide/ui/views/editor/b;->DW(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->sh()V
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_6b

    return-void

    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    :try_start_6a
    throw v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_85

    const-wide v2, 0x154e5ef2158bb798L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_85
    throw v0
.end method

.method public j6(II[CLjava/lang/Object;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_19

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x9bda063c1f3d108L  # -4.519991506795024E261

    move-object v3, p0

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    monitor-enter p0
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_49

    :try_start_1d
    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v1, p3, p1}, Lcom/aide/ui/views/editor/A;->j6([CI)V

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v2, :cond_38

    array-length v1, p3

    add-int/2addr v1, p1

    add-int/lit8 v6, v1, -0x1

    move v3, p2

    move v4, p1

    move v5, p2

    move-object v7, p0

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/aide/ui/views/editor/va;->j6(IIIILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_38
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_46

    :try_start_3c
    array-length v1, p3

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, p2, v1, p2}, Lcom/aide/ui/views/editor/b;->DW(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->sh()V
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_49

    return-void

    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    :try_start_48
    throw v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_64

    const-wide v2, -0x9bda063c1f3d108L  # -4.519991506795024E261

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    throw v0
.end method

.method public j6(ILjava/lang/Object;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x39d4aa385cf54d60L

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    monitor-enter p0
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_4d

    :try_start_12
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v1

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/A;->j6()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/aide/ui/views/editor/A;->j6([C)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v0, :cond_3b

    invoke-virtual {v0, p1, v1, p0, p2}, Lcom/aide/ui/views/editor/va;->DW(IILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_3b
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_12 .. :try_end_3f} :catchall_4a

    :try_start_3f
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->P8()V

    const/4 v0, -0x1

    invoke-virtual {p0, v1, p1, v0, v3}, Lcom/aide/ui/views/editor/b;->FH(IIII)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->sh()V
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_4d

    return-void

    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_62

    const-wide v2, 0x39d4aa385cf54d60L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_62
    throw v0
.end method

.method public j6(I[C)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xbbb83597d95b044L

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v0}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p2, v2}, Lcom/aide/ui/views/editor/A;->j6(II[CI)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_37

    const-wide v2, 0xbbb83597d95b044L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method public j6(Labcd/hm;Ljava/lang/Object;)V
    .registers 15

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x14b12c80023b11bL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Labcd/hm;->Hw()I

    move-result v0

    invoke-virtual {p1}, Labcd/hm;->FH()I

    move-result v8

    invoke-virtual {p1}, Labcd/hm;->DW()I

    move-result v1

    invoke-virtual {p1}, Labcd/hm;->j6()I

    move-result v2

    if-le v0, v1, :cond_1f

    return-void

    :cond_1f
    if-ne v0, v1, :cond_24

    if-ge v2, v8, :cond_24

    return-void

    :cond_24
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->v5()I

    move-result v3

    const/4 v9, 0x1

    if-lt v1, v3, :cond_35

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->v5()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p0, v1}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v2

    goto :goto_3f

    :cond_35
    invoke-virtual {p0, v1}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v3

    if-lt v2, v3, :cond_40

    invoke-virtual {p0, v1}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v2

    :goto_3f
    sub-int/2addr v2, v9

    :cond_40
    move v10, v1

    move v11, v2

    iput-boolean v9, p0, Lcom/aide/ui/views/editor/g;->tp:Z

    monitor-enter p0
    :try_end_45
    .catchall {:try_start_0 .. :try_end_45} :catchall_cd

    :try_start_45
    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v1, :cond_52

    move v2, v0

    move v3, v8

    move v4, v10

    move v5, v11

    move-object v6, p0

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/aide/ui/views/editor/va;->DW(IIIILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_52
    if-ne v0, v10, :cond_62

    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    sub-int/2addr v11, v8

    add-int/2addr v11, v9

    invoke-virtual {v0, v11, v8}, Lcom/aide/ui/views/editor/A;->j6(II)V

    goto :goto_af

    :cond_62
    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/views/editor/A;

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/editor/A;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/A;->FH()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {v1, v2, v8}, Lcom/aide/ui/views/editor/A;->j6(II)V

    :goto_7a
    add-int/lit8 v10, v10, -0x1

    if-le v10, v0, :cond_84

    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v1, v10}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_7a

    :cond_84
    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/views/editor/A;

    add-int/2addr v11, v9

    const/4 v3, 0x0

    invoke-virtual {v1, v11, v3}, Lcom/aide/ui/views/editor/A;->j6(II)V

    iget-object v1, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

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

    :goto_af
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_b3
    .catchall {:try_start_45 .. :try_end_b3} :catchall_ca

    :try_start_b3
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
    :try_end_c9
    .catchall {:try_start_b3 .. :try_end_c9} :catchall_cd

    return-void

    :catchall_ca
    move-exception v0

    :try_start_cb
    monitor-exit p0
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    :try_start_cc
    throw v0
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cd

    :catchall_cd
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_de

    const-wide v2, 0x14b12c80023b11bL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_de
    goto :goto_e0

    :goto_df
    throw v0

    :goto_e0
    goto :goto_df
.end method

.method public j6(Lcom/aide/ui/views/editor/g$d;)V
    .registers 6

    const-wide v0, 0x7d145d14f51ce39L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->gn:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->gn:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/g$f;)V
    .registers 6

    const-wide v0, -0x20bf5f55de7fc12dL  # -6.803577068584785E150

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->VH:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/h;)V
    .registers 6

    const-wide v0, -0x9e997f200506681L  # -6.890164329819605E260

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->XL:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->XL:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/va$j;)V
    .registers 6

    const-wide v0, 0x4fbf3355b4084da9L  # 1.4112399008489279E76

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v2, :cond_13

    invoke-virtual {v2, p1}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/va$j;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j6(Ljava/io/Reader;Ljava/lang/Object;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x139178be57d8b411L  # -2.055465557426875E214

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->BT()V

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->v5()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/views/editor/g;->EQ(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_21

    if-eqz v0, :cond_29

    :cond_21
    new-instance v2, Labcd/hm;

    invoke-direct {v2, v3, v3, v0, v1}, Labcd/hm;-><init>(IIII)V

    invoke-virtual {p0, v2, p0}, Lcom/aide/ui/views/editor/g;->j6(Labcd/hm;Ljava/lang/Object;)V

    :cond_29
    const v0, 0x8000

    new-array v0, v0, [C

    new-instance v1, Lcom/aide/ui/views/editor/g$c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/aide/ui/views/editor/g$c;-><init>(Lcom/aide/ui/views/editor/g;IIZI)V

    monitor-enter p0
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_8e

    :try_start_3a
    invoke-static {p1, v1, v0}, Lcom/aide/ui/views/editor/ra;->j6(Ljava/io/Reader;Lcom/aide/ui/views/editor/ra$a;[C)[C
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_41
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3f

    const/4 v0, 0x0

    goto :goto_42

    :catchall_3f
    move-exception v0

    goto :goto_8c

    :catch_41
    move-exception v0

    :goto_42
    :try_start_42
    invoke-virtual {p1}, Ljava/io/Reader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46
    .catchall {:try_start_42 .. :try_end_45} :catchall_3f

    goto :goto_4a

    :catch_46
    move-exception v2

    if-nez v0, :cond_4a

    move-object v0, v2

    :cond_4a
    :goto_4a
    :try_start_4a
    iget v2, v1, Lcom/aide/ui/views/editor/g$c;->Hw:I

    if-nez v2, :cond_56

    iget v2, v1, Lcom/aide/ui/views/editor/g$c;->FH:I

    if-nez v2, :cond_56

    if-nez v0, :cond_55

    goto :goto_56

    :cond_55
    throw v0

    :cond_56
    :goto_56
    iget-object v4, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v4, :cond_67

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v1, Lcom/aide/ui/views/editor/g$c;->Hw:I

    iget v2, v1, Lcom/aide/ui/views/editor/g$c;->FH:I

    add-int/lit8 v8, v2, -0x1

    move-object v9, p0

    move-object v10, p2

    invoke-virtual/range {v4 .. v10}, Lcom/aide/ui/views/editor/va;->j6(IIIILcom/aide/ui/views/editor/g;Ljava/lang/Object;)V

    :cond_67
    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->cb()V

    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_4a .. :try_end_6b} :catchall_3f

    :try_start_6b
    iget v2, v1, Lcom/aide/ui/views/editor/g$c;->FH:I

    add-int/lit8 v2, v2, -0x1

    iget v4, v1, Lcom/aide/ui/views/editor/g$c;->Hw:I

    invoke-virtual {p0, v3, v3, v2, v4}, Lcom/aide/ui/views/editor/b;->DW(IIII)V

    if-nez v0, :cond_85

    iget-boolean v2, v1, Lcom/aide/ui/views/editor/g$c;->v5:Z

    if-nez v2, :cond_85

    iget v2, v1, Lcom/aide/ui/views/editor/g$c;->Hw:I

    if-eqz v2, :cond_85

    iget v1, v1, Lcom/aide/ui/views/editor/g$c;->Hw:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, p2}, Lcom/aide/ui/views/editor/g;->j6(ILjava/lang/Object;)V

    :cond_85
    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->gW()V

    if-nez v0, :cond_8b

    return-void

    :cond_8b
    throw v0
    :try_end_8c
    .catchall {:try_start_6b .. :try_end_8c} :catchall_8e

    :goto_8c
    :try_start_8c
    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_3f

    :try_start_8d
    throw v0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_9f

    const-wide v2, -0x139178be57d8b411L  # -2.055465557426875E214

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9f
    throw v0
.end method

.method public j6(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Labcd/hm;",
            ">;)V"
        }
    .end annotation

    const-wide v0, -0x3baec2678e9993e4L  # -1.2721322854822015E21

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    if-nez p1, :cond_13

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    if-nez v2, :cond_13

    return-void

    :cond_13
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->ei()V

    if-eqz p1, :cond_3a

    new-instance v3, Lcom/aide/ui/views/editor/g$a;

    invoke-direct {v3, v2}, Lcom/aide/ui/views/editor/g$a;-><init>(Lcom/aide/ui/views/editor/d;)V

    iput-object v3, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    iput-object p1, v3, Lcom/aide/ui/views/editor/g$a;->FH:Ljava/util/List;

    invoke-virtual {p0}, Lcom/aide/ui/views/editor/g;->BT()V

    iget-object v3, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    new-instance v4, Lcom/aide/ui/views/editor/g$b;

    invoke-direct {v4, v2}, Lcom/aide/ui/views/editor/g$b;-><init>(Lcom/aide/ui/views/editor/d;)V

    iput-object v4, v3, Lcom/aide/ui/views/editor/g$a;->v5:Lcom/aide/ui/views/editor/g$b;

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->QX:Lcom/aide/ui/views/editor/g$a;

    iget-object v2, v2, Lcom/aide/ui/views/editor/g$a;->v5:Lcom/aide/ui/views/editor/g$b;

    invoke-virtual {p0, v2}, Lcom/aide/ui/views/editor/g;->j6(Lcom/aide/ui/views/editor/va$j;)V

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->nw()V
    :try_end_3a
    .catchall {:try_start_5 .. :try_end_3a} :catchall_3b

    :cond_3a
    return-void

    :catchall_3b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_43

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v2
.end method

.method public j6(I)Z
    .registers 6

    const-wide v0, -0xd5e9950773231e1L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public j6(III)[C
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xeaa03cd9e61dc63L  # -8.9475864188703E237

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    iget-object v0, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/editor/A;

    new-array v1, p3, [C

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p3, v1, v2}, Lcom/aide/ui/views/editor/A;->j6(II[CI)V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    return-object v1

    :catchall_2b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_49

    const-wide v2, -0xeaa03cd9e61dc63L  # -8.9475864188703E237

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_49
    throw v0
.end method

.method public lg()Z
    .registers 5

    const-wide v0, 0xe67abb7999221e3L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public rN()Z
    .registers 5

    const-wide v0, -0x3ef7c01f3a02a9b0L  # -198652.09667460853

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/va;->DW()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public tp()I
    .registers 5

    const-wide v0, 0x1c6a94abe7f25b91L  # 8.597648463663339E-172

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x1

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public tp(II)I
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x1a802a197f148a7cL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_18

    :cond_16
    const/4 p1, 0x0

    return p1

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_31

    const-wide v2, -0x1a802a197f148a7cL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public tp(I)Z
    .registers 6

    const-wide v0, -0x10b9df2c8e01b03fL  # -1.0484152781682744E228

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public u7()Labcd/hm;
    .registers 5

    const-wide v0, -0xc8b0995b57e25a3L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return-object v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method public u7(I)Z
    .registers 6

    const-wide v0, -0x35957e9dae78b3d1L  # -3.0990155964163E50

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public u7(II)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x6abf7ca7f978330L  # -2.774225678598436E276

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_18

    :cond_16
    const/4 p1, 0x0

    return p1

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_31

    const-wide v2, -0x6abf7ca7f978330L  # -2.774225678598436E276

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public v5()I
    .registers 5

    const-wide v0, 0xaaabd8e144ebed0L  # 2.78267454079707E-257

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->u7:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public v5(I)Z
    .registers 6

    const-wide v0, 0x28cefcddc650c911L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public v5(II)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x7bf4d991f5e02efL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_18

    :cond_16
    const/4 p1, 0x0

    return p1

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_31

    const-wide v2, 0x7bf4d991f5e02efL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public we(I)V
    .registers 6

    const-wide v0, -0x38414cca03ab1f68L  # -4.0807355970699415E37

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    if-lez p1, :cond_1e

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v2, :cond_16

    invoke-virtual {v2, p1}, Lcom/aide/ui/views/editor/va;->j6(I)V

    goto :goto_1d

    :cond_16
    new-instance v2, Lcom/aide/ui/views/editor/va;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/views/editor/va;-><init>(Lcom/aide/ui/views/editor/g;I)V

    iput-object v2, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    :goto_1d
    return-void

    :cond_1e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public we(II)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x1282b66135cd4065L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_18

    :cond_16
    const/4 p1, 0x0

    return p1

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v1, :cond_31

    const-wide v2, 0x1282b66135cd4065L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public yS()Labcd/fm;
    .registers 5

    const-wide v0, 0x2548b0942511efe9L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/g;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    if-eqz v2, :cond_1d

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->KD()V

    iget-object v2, p0, Lcom/aide/ui/views/editor/g;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {v2, p0}, Lcom/aide/ui/views/editor/va;->j6(Lcom/aide/ui/views/editor/g;)Labcd/fm;

    move-result-object v2

    invoke-direct {p0}, Lcom/aide/ui/views/editor/g;->SI()V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1f

    return-object v2

    :cond_1d
    const/4 v0, 0x0

    return-object v0

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/g;->Zo:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method
