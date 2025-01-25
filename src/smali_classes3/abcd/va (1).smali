.class public Labcd/va;
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
.field public EQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Labcd/ha;",
            ">;>;"
        }
    .end annotation
.end field

.field public FH:Ljava/lang/String;

.field public Hw:Z

.field public VH:I

.field public Zo:Z

.field public gn:Z

.field public tp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public u7:I

.field public v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/va;

    const-wide v1, 0xa9ce00ab176db8dL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x16466d98756ddff8L

    :try_start_6
    sget-boolean v3, Labcd/va;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Labcd/va;->tp:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Labcd/va;->EQ:Ljava/util/Map;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Labcd/va;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method


# virtual methods
.method public DW(Labcd/na;)I
    .registers 6

    const-wide v0, -0x5d499f5052317f00L

    :try_start_5
    sget-boolean v2, Labcd/va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/va;->tp:Ljava/util/Map;

    invoke-interface {p1}, Labcd/na;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Labcd/va;->tp:Ljava/util/Map;

    invoke-interface {p1}, Labcd/na;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_2b

    return p1

    :cond_29
    const/4 p1, 0x4

    return p1

    :catchall_2b
    move-exception v2

    sget-boolean v3, Labcd/va;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public j6(Labcd/na;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/na;",
            ")",
            "Ljava/util/Set<",
            "+",
            "Labcd/ha;",
            ">;"
        }
    .end annotation

    const-wide v0, 0x5bff0e0eadbaa8bL

    :try_start_5
    sget-boolean v2, Labcd/va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/va;->EQ:Ljava/util/Map;

    invoke-interface {p1}, Labcd/na;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Labcd/va;->EQ:Ljava/util/Map;

    invoke-interface {p1}, Labcd/na;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    goto :goto_2d

    :cond_25
    invoke-interface {p1}, Labcd/na;->Zo()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_2d

    sget-object v2, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2e

    :cond_2d
    :goto_2d
    return-object v2

    :catchall_2e
    move-exception v2

    sget-boolean v3, Labcd/va;->DW:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v2
.end method
