.class Labcd/fl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ml;->j6(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Ljava/util/Map;

.field final Hw:Ljava/lang/String;

.field final v5:Labcd/ml;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/fl;

    const-wide v2, -0x1374667f15b9aa4bL    # -7.433101803211034E214

    const-wide v4, -0x36a38ef12126e1c7L    # -2.537078456152959E45

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ml;Ljava/util/Map;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Labcd/fl;->v5:Labcd/ml;

    iput-object p2, p0, Labcd/fl;->FH:Ljava/util/Map;

    iput-object p3, p0, Labcd/fl;->Hw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x156420166bdf738cL
    .end annotation

    const-wide v6, 0xf0e0f2aff5cf9efL    # 3.692934038577146E-236

    :try_start_0
    sget-boolean v0, Labcd/fl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xf0e0f2aff5cf9efL    # 3.692934038577146E-236

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v4, p0, Labcd/fl;->FH:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Labcd/fl;->v5:Labcd/ml;

    iget-object v1, p0, Labcd/fl;->Hw:Ljava/lang/String;

    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Labcd/ml;->j6(Labcd/ml;Ljava/lang/String;Ljava/util/List;ILjava/util/Map;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/fl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
