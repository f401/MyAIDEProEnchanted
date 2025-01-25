.class public Labcd/Nk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Nk$a;,
        Labcd/Nk$b;,
        Labcd/Nk$c;
    }
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
.field private FH:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x2e608636be1792e5L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/Nk$a;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = -0x1a1072ec1e972adfL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private VH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x3b76f35004fa1eb0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/Nk$c;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x385475a99e716137L
    .end annotation
.end field

.field private v5:Labcd/Nk$b;
    .annotation runtime Labcd/ru;
        field = -0x17729cb6726a1d00L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Nk;

    const-wide v1, -0x1384ce20a8b9c79L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x1294f8e2f732b6acL  # -1.1926069865366449E219

    :try_start_6
    sget-boolean v3, Labcd/Nk;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Labcd/Nk;->FH:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Labcd/Nk;->Hw:Ljava/util/Map;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Labcd/Nk;->VH:Ljava/util/List;
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v3

    sget-boolean v4, Labcd/Nk;->DW:Z

    if-eqz v4, :cond_2e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v3
.end method

.method private DW(Ljava/lang/String;Labcd/Nk$a;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x18ae982bc733587cL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Nk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x12c3e904eaffa2ddL

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    new-instance v1, Labcd/Mk;

    invoke-direct {v1, p0, p2}, Labcd/Mk;-><init>(Labcd/Nk;Labcd/Nk$a;)V

    invoke-virtual {v0, p1, v1}, Labcd/Xj;->j6(Ljava/lang/String;Lcom/aide/engine/service/u;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    sget-boolean v1, Labcd/Nk;->DW:Z

    if-eqz v1, :cond_2a

    const-wide v2, 0x12c3e904eaffa2ddL

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v0
.end method

.method private EQ(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x632fc1dc15b229f0L
    .end annotation

    const-wide v0, -0x2bf454cf0f81c61L  # -2.13689604803605E295

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Nk;->FH(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    iget-object v2, p0, Labcd/Nk;->v5:Labcd/Nk$b;

    invoke-interface {v2, p1}, Labcd/Nk$b;->FH(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Labcd/Nk;->j6(Ljava/lang/String;Labcd/Nk$a;)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    :cond_1b
    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method private J8()Labcd/Nk$a;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xccbeaeda1a6e3f3L
    .end annotation

    const-wide v0, -0x26429641658c2a00L  # -1.9443681931435464E124

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Nk;->FH:Ljava/util/Map;

    iget-object v3, p0, Labcd/Nk;->v5:Labcd/Nk$b;

    invoke-interface {v3}, Labcd/Nk$b;->getVisibleFile()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Nk$a;
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-object v2

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method private Ws()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x14bbfe7dd01949c8L
    .end annotation

    const-wide v0, 0x378a6006117220ebL  # 3.784640178832955E-41

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_63

    const-string v3, ""

    :goto_18
    :try_start_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_18

    :cond_4b
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-string v4, "OpenFileService"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "CurrentFiles"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_62
    .catchall {:try_start_18 .. :try_end_62} :catchall_63

    return-void

    :catchall_63
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_6b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6b
    goto :goto_6d

    :goto_6c
    throw v2

    :goto_6d
    goto :goto_6c
.end method

.method private gn(Ljava/lang/String;)Z
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x124375f4c383070L
    .end annotation

    const-wide v0, 0x588f4b5c345576d9L  # 3.9457957899976036E118

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Nk$a;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    invoke-interface {v4}, Labcd/Nk$a;->J0()Z

    move-result v6

    if-nez v6, :cond_17

    invoke-interface {v4}, Labcd/Nk$a;->Hw()Z

    move-result v4

    if-nez v4, :cond_17

    if-eqz v3, :cond_4f

    invoke-direct {p0, v3}, Labcd/Nk;->u7(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {p0, v5}, Labcd/Nk;->u7(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-lez v4, :cond_17

    :cond_4f
    move-object v3, v5

    goto :goto_17

    :cond_51
    if-nez v3, :cond_91

    iget-object v2, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5d
    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_91

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Nk$a;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5d

    invoke-interface {v4}, Labcd/Nk$a;->J0()Z

    move-result v4

    if-nez v4, :cond_5d

    if-eqz v3, :cond_8f

    invoke-direct {p0, v3}, Labcd/Nk;->u7(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {p0, v5}, Labcd/Nk;->u7(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-lez v4, :cond_5d

    :cond_8f
    move-object v3, v5

    goto :goto_5d

    :cond_91
    if-eqz v3, :cond_98

    invoke-virtual {p0, v3}, Labcd/Nk;->j6(Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_5 .. :try_end_96} :catchall_9a

    const/4 p1, 0x1

    return p1

    :cond_98
    const/4 p1, 0x0

    return p1

    :catchall_9a
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_a2

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_a2
    goto :goto_a4

    :goto_a3
    throw v2

    :goto_a4
    goto :goto_a3
.end method

.method static synthetic j6(Labcd/Nk;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Labcd/Nk;->VH:Ljava/util/List;

    return-object p0
.end method

.method private j6(Ljava/lang/String;Labcd/Nk$a;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x4b1d3ef79e626dL
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Nk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x471e7b72e08c41d0L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Labcd/Nk;->DW(Ljava/lang/String;Labcd/Nk$a;)V

    :goto_14
    iget-object v0, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_25

    invoke-direct {p0, p1}, Labcd/Nk;->gn(Ljava/lang/String;)Z

    move-result v0
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_26

    if-eqz v0, :cond_25

    goto :goto_14

    :cond_25
    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Labcd/Nk;->DW:Z

    if-eqz v1, :cond_37

    const-wide v2, 0x471e7b72e08c41d0L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    goto :goto_39

    :goto_38
    throw v0

    :goto_39
    goto :goto_38
.end method

.method private tp(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x10b4e3e227275e43L
    .end annotation

    const-wide v0, 0x4691a94ee5bebcd0L  # 8.95537350756251E31

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".java"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v2, ".class"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v2, ".xml"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v2, ".c"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v2, ".cpp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v2, ".cc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v2, ".h"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v2, ".hh"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v2, ".hpp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v2, ".html"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v2, ".htm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v2, ".css"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v2, ".js"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_76
    .catchall {:try_start_5 .. :try_end_76} :catchall_7d

    if-eqz p1, :cond_79

    goto :goto_7b

    :cond_79
    const/4 p1, 0x0

    goto :goto_7c

    :cond_7b
    :goto_7b
    const/4 p1, 0x1

    :goto_7c
    return p1

    :catchall_7d
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_85

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_85
    throw v2
.end method

.method private u7(Ljava/lang/String;)J
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x15e164eb4e0eee6dL
    .end annotation

    const-wide v0, -0x54fdbe8df20c580L

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Nk;->Hw:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Labcd/Nk;->Hw:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_24

    return-wide v0

    :cond_21
    const-wide/16 v0, 0x0

    return-wide v0

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v2
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Labcd/Nk$a;
    .registers 6

    const-wide v0, 0x27666f011841250cL  # 6.950097477348222E-119

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Nk$a;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v2

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public DW()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x1c7e4a4bcd113eadL

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Nk;->v5:Labcd/Nk$b;

    invoke-interface {v2}, Labcd/Nk$b;->getVisibleFile()Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-object v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public DW(Labcd/Nk$c;)V
    .registers 6

    const-wide v0, 0x1bf2800a898e4b0L

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Nk;->VH:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public DW(ZZ)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Nk;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, 0x4bf6b62948b56b60L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->Mr()Z

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Nk$a;

    invoke-interface {v4}, Labcd/Nk$a;->J0()Z

    move-result v6

    if-eqz v6, :cond_2e

    if-nez v0, :cond_57

    if-eqz p1, :cond_53

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_53
    invoke-interface {v4}, Labcd/Nk$a;->gn()V

    goto :goto_2e

    :cond_57
    const/4 v3, 0x0

    goto :goto_2e

    :cond_59
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_66

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Labcd/Zk;->j6(Ljava/util/List;Z)V
    :try_end_66
    .catchall {:try_start_0 .. :try_end_66} :catchall_67

    :cond_66
    return v3

    :catchall_67
    move-exception v0

    sget-boolean v1, Labcd/Nk;->DW:Z

    if-eqz v1, :cond_80

    const-wide v2, 0x4bf6b62948b56b60L

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_80
    goto :goto_82

    :goto_81
    throw v0

    :goto_82
    goto :goto_81
.end method

.method public EQ()Z
    .registers 7

    const-wide v0, 0x5152b7e5c1c62b08L  # 5.681805532646368E83

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->Mr()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_18

    return v3

    :cond_18
    iget-object v2, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Nk$a;

    invoke-interface {v4}, Labcd/Nk$a;->J0()Z

    move-result v4
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_43

    if-eqz v4, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_42
    return v3

    :catchall_43
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_4b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4b
    goto :goto_4d

    :goto_4c
    throw v2

    :goto_4d
    goto :goto_4c
.end method

.method public FH()J
    .registers 5

    const-wide v0, -0x43d464f9c5079d55L  # -7.482503065941914E-19

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Labcd/Nk;->J8()Labcd/Nk$a;

    move-result-object v2

    invoke-interface {v2}, Labcd/Nk$a;->getVersion()J

    move-result-wide v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-wide v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public FH(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, 0x1b0632fcb28edaa7L

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return p1

    :catchall_13
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public Hw()V
    .registers 5

    const-wide v0, -0x1d5b8e3d3d6fdf85L  # -1.5069592688838684E167

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 13

    const-wide v0, -0x5033873ee331f183L  # -1.9209872768193405E-78

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-eqz v2, :cond_14

    goto/16 :goto_9b

    :cond_14
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3}, Lcom/aide/ui/MainActivity;->FH(Ljava/lang/String;)Z

    move-result v2
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_9c

    if-nez v2, :cond_21

    return-void

    :cond_21
    const-string v2, " could not be loaded!"

    const/4 v3, 0x1

    if-eqz p1, :cond_46

    :try_start_26
    invoke-direct {p0, p1}, Labcd/Nk;->EQ(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a
    .catchall {:try_start_26 .. :try_end_29} :catchall_9c

    goto :goto_9b

    :catch_2a
    move-exception v4

    :try_start_2b
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_9b

    :cond_46
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v4

    const-string v5, "OpenFileService"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "CurrentFiles"

    const/4 v7, 0x0

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9b

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    array-length v7, v4
    :try_end_66
    .catchall {:try_start_2b .. :try_end_66} :catchall_9c

    :goto_66
    if-ge v6, v7, :cond_9b

    aget-object v8, v4, v6

    :try_start_6a
    invoke-static {v8}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_98

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_98

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_79
    .catchall {:try_start_6a .. :try_end_79} :catchall_9c

    :try_start_79
    invoke-direct {p0, v8}, Labcd/Nk;->EQ(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d
    .catchall {:try_start_79 .. :try_end_7c} :catchall_9c

    goto :goto_98

    :catch_7d
    move-exception v9

    :try_start_7e
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8, v3}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V
    :try_end_98
    .catchall {:try_start_7e .. :try_end_98} :catchall_9c

    :cond_98
    :goto_98
    add-int/lit8 v6, v6, 0x1

    goto :goto_66

    :cond_9b
    :goto_9b
    return-void

    :catchall_9c
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_a4

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_a4
    goto :goto_a6

    :goto_a5
    throw v2

    :goto_a6
    goto :goto_a5
.end method

.method public J0()V
    .registers 5

    const-wide v0, -0x24433eb811285068L  # -8.164160282353371E133

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Nk;->Zo:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v3, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Nk$a;

    invoke-interface {v2}, Labcd/Nk$a;->gn()V

    const/4 v2, 0x0

    iput-object v2, p0, Labcd/Nk;->Zo:Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    :cond_1e
    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public VH(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x1f479613186f0cc0L  # -8.379779945256311E157

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Nk;->FH(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Labcd/Nk;->v5:Labcd/Nk$b;

    invoke-interface {v2, p1}, Labcd/Nk$b;->j6(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    :cond_17
    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public VH()Z
    .registers 5

    const-wide v0, -0x6e767a6ff6dccbL

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Nk;->tp()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {p0}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".java"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->j3()Z

    move-result v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_30

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    return v0

    :catchall_30
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_38
    throw v2
.end method

.method public Zo(Ljava/lang/String;)V
    .registers 8

    const-wide v0, -0x4a2856c03ee2cdfbL  # -2.5296252305497518E-49

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p1, v4}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_37
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Labcd/Nk;->j6(Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_4c

    goto :goto_3b

    :cond_4b
    return-void

    :catchall_4c
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_54

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    goto :goto_56

    :goto_55
    throw v2

    :goto_56
    goto :goto_55
.end method

.method public Zo()Z
    .registers 5

    const-wide v0, -0x858416568a057d8L

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Nk;->tp()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {p0}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/Nk;->tp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->j3()Z

    move-result v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2a

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0

    :catchall_2a
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method public gn()Z
    .registers 5

    const-wide v0, 0x380352f968166d83L  # 7.098559909758444E-39

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/FileSystemUtils;->QX(Ljava/lang/String;)Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    :catchall_20
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public j6()V
    .registers 7

    const-wide v0, 0x20f01eb5663c5f90L  # 4.924543803500241E-150

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Nk$a;

    invoke-interface {v5}, Labcd/Nk$a;->J0()Z

    move-result v5

    if-nez v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_3b
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Labcd/Nk;->j6(Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_50

    goto :goto_3f

    :cond_4f
    return-void

    :catchall_50
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_58

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_58
    goto :goto_5a

    :goto_59
    throw v2

    :goto_5a
    goto :goto_59
.end method

.method public j6(Labcd/Nk$b;)V
    .registers 6

    const-wide v0, -0x572ce0f5123b115L

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Labcd/Nk;->v5:Labcd/Nk$b;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Labcd/Nk$c;)V
    .registers 6

    const-wide v0, -0x567a624c017dd4f9L

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Nk;->VH:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6

    const-wide v0, -0x5ce202ad199e4fa9L

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Nk$a;

    invoke-interface {v2}, Labcd/Nk$a;->close()V

    iget-object v2, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/Xj;->FH(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Nk;->v5:Labcd/Nk$b;

    invoke-interface {v2, p1}, Labcd/Nk$b;->DW(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xj;->VH()V

    invoke-direct {p0}, Labcd/Nk;->Ws()V
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v2
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Nk;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x10e3a013d1801460L  # -1.680459265940326E227

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static {v2, p1, p2}, Labcd/FileSystemUtils;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_3b
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Labcd/Xj;->FH(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Nk$a;

    invoke-interface {v3, v1}, Labcd/Nk$a;->j6(Ljava/lang/String;)V

    iget-object v3, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catchall {:try_start_0 .. :try_end_7b} :catchall_7d

    goto :goto_43

    :cond_7c
    return-void

    :catchall_7d
    move-exception v0

    sget-boolean v1, Labcd/Nk;->DW:Z

    if-eqz v1, :cond_8e

    const-wide v2, -0x10e3a013d1801460L  # -1.680459265940326E227

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8e
    goto :goto_90

    :goto_8f
    throw v0

    :goto_90
    goto :goto_8f
.end method

.method public j6(Ljava/lang/String;Z)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Nk;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x17c0dd1ebdd4440L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p0}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {p0, p1}, Labcd/Nk;->FH(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p1}, Labcd/Nk;->EQ(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Labcd/Nk;->FH(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    return-void

    :cond_29
    if-nez v0, :cond_32

    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Ji;->Hw(Ljava/lang/String;)V

    :cond_32
    if-eqz p2, :cond_39

    iget-object v0, p0, Labcd/Nk;->v5:Labcd/Nk$b;

    invoke-interface {v0, p1}, Labcd/Nk$b;->j6(Ljava/lang/String;)V

    :cond_39
    iget-object v0, p0, Labcd/Nk;->Hw:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Labcd/Nk;->Ws()V
    :try_end_49
    .catchall {:try_start_0 .. :try_end_49} :catchall_4a

    :cond_49
    return-void

    :catchall_4a
    move-exception v0

    sget-boolean v1, Labcd/Nk;->DW:Z

    if-eqz v1, :cond_5f

    const-wide v2, -0x17c0dd1ebdd4440L

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5f
    throw v0
.end method

.method public j6(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v0, -0x81138eaea4d6d40L

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_4b

    if-ge v3, v4, :cond_4a

    const/4 v4, 0x1

    :try_start_15
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v3, :cond_1f

    const/4 v6, 0x1

    goto :goto_20

    :cond_1f
    const/4 v6, 0x0

    :goto_20
    invoke-virtual {p0, v5, v6}, Labcd/Nk;->j6(Ljava/lang/String;Z)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_23} :catch_24
    .catchall {:try_start_15 .. :try_end_23} :catchall_4b

    goto :goto_47

    :catch_24
    move-exception v5

    :try_start_25
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " could not be loaded!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_47
    .catchall {:try_start_25 .. :try_end_47} :catchall_4b

    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_4a
    return-void

    :catchall_4b
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_53

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_53
    goto :goto_55

    :goto_54
    throw v2

    :goto_55
    goto :goto_54
.end method

.method public j6(Z)V
    .registers 9

    const-wide v0, -0x71478a05878be5fL

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Nk$a;

    invoke-interface {v4}, Labcd/Nk$a;->we()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface {v4}, Labcd/Nk$a;->j6()V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_40
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_50

    if-eqz p1, :cond_50

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Labcd/Zk;->j6(Ljava/util/List;Z)V
    :try_end_50
    .catchall {:try_start_5 .. :try_end_50} :catchall_51

    :cond_50
    return-void

    :catchall_51
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_5e

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5e
    goto :goto_60

    :goto_5f
    throw v2

    :goto_60
    goto :goto_5f
.end method

.method public j6(ZZ)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Nk;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, -0x1b89d567c55de4f7L  # -8.771873572899112E175

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0, p1, p2}, Labcd/Nk;->DW(ZZ)Z
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Labcd/Nk;->DW:Z

    if-eqz v1, :cond_33

    const-wide v2, -0x1b89d567c55de4f7L  # -8.771873572899112E175

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v0
.end method

.method public tp()Z
    .registers 5

    const-wide v0, 0x3ab7c7cc1508a155L  # 7.683880330877188E-26

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public u7()Z
    .registers 5

    const-wide v0, 0x276df881228398d5L  # 9.285149572957974E-119

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_15

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public v5(Ljava/lang/String;)Labcd/Nk$a;
    .registers 6

    const-wide v0, 0x4612207e0837f600L  # 3.590407022588854E29

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Nk;->DW(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v2

    if-eqz v2, :cond_13

    return-object v2

    :cond_13
    invoke-virtual {p0}, Labcd/Nk;->J0()V

    iput-object p1, p0, Labcd/Nk;->Zo:Ljava/lang/String;

    iget-object v2, p0, Labcd/Nk;->v5:Labcd/Nk$b;

    invoke-interface {v2, p1}, Labcd/Nk$b;->FH(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Labcd/Nk;->j6(Ljava/lang/String;Labcd/Nk$a;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-object v2

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public v5()V
    .registers 6

    const-wide v0, 0x2475f513ebaa4b8fL  # 4.833498156832611E-133

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Nk$a;

    invoke-direct {p0, v4, v3}, Labcd/Nk;->DW(Ljava/lang/String;Labcd/Nk$a;)V

    goto :goto_16

    :cond_32
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    new-instance v3, Labcd/Lk;

    invoke-direct {v3, p0}, Labcd/Lk;-><init>(Labcd/Nk;)V

    invoke-virtual {v2, v3}, Labcd/Xj;->j6(Lcom/aide/engine/service/s;)V
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_3f

    return-void

    :catchall_3f
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_47

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_47
    goto :goto_49

    :goto_48
    throw v2

    :goto_49
    goto :goto_48
.end method

.method public we()Z
    .registers 5

    const-wide v0, -0x121455c13d021fb0L  # -3.1250561248197237E221

    :try_start_5
    sget-boolean v2, Labcd/Nk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Nk;->FH:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Nk$a;

    invoke-interface {v3}, Labcd/Nk$a;->J0()Z

    move-result v3
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_2c

    if-eqz v3, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_2a
    const/4 v0, 0x0

    return v0

    :catchall_2c
    move-exception v2

    sget-boolean v3, Labcd/Nk;->DW:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    goto :goto_36

    :goto_35
    throw v2

    :goto_36
    goto :goto_35
.end method
