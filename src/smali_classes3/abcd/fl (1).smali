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
    .registers 5

    const-wide v0, -0x1374667f15b9aa4bL  # -7.433101803211034E214

    const-wide v2, -0x36a38ef12126e1c7L  # -2.537078456152959E45

    const-class v4, Labcd/fl;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x156420166bdf738cL
    .end annotation

    const-wide v0, 0xf0e0f2aff5cf9efL  # 3.692934038577146E-236

    :try_start_5
    sget-boolean v2, Labcd/fl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v7, p0, Labcd/fl;->FH:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v5, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v3, p0, Labcd/fl;->v5:Labcd/ml;

    iget-object v4, p0, Labcd/fl;->Hw:Ljava/lang/String;

    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Labcd/ml;->j6(Labcd/ml;Ljava/lang/String;Ljava/util/List;ILjava/util/Map;Ljava/util/Hashtable;)V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v2

    sget-boolean v3, Labcd/fl;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    throw v2
.end method
