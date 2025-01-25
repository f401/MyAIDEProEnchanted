.class public abstract Labcd/BaseProjectConfig;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "LSi<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static DW:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = -0x2e6a784dc3c458d5L
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

.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x110bb478e055a370L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "LSi<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field public v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2b4dec3b4a3e7030L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2c559e23fadd20a0L  # -1.1006283748501258E95

    :try_start_6
    const-class v3, Labcd/BaseProjectConfig;

    const-wide v4, 0xba64ead77970809L

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/BaseProjectConfig;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Labcd/BaseProjectConfig;->j6:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Labcd/BaseProjectConfig;->DW:Ljava/util/Map;
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v3

    sget-boolean v4, Labcd/BaseProjectConfig;->Hw:Z

    if-eqz v4, :cond_2e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v3
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x2728e7cb1db4ea95L

    :try_start_6
    sget-boolean v3, Labcd/BaseProjectConfig;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Labcd/BaseProjectConfig;->Hw:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method


# virtual methods
.method public j6(Ljava/lang/String;)Labcd/BaseProjectConfig;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-wide v0, 0x61255214dca97e60L  # 9.367156263833078E159

    :try_start_5
    sget-boolean v2, Labcd/BaseProjectConfig;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    sget-object v2, Labcd/BaseProjectConfig;->j6:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    sget-object v2, Labcd/BaseProjectConfig;->DW:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sget-object v4, Labcd/BaseProjectConfig;->DW:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_3e

    sget-object v2, Labcd/BaseProjectConfig;->j6:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/BaseProjectConfig;
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_61

    return-object v2

    :cond_3e
    :try_start_3e
    invoke-virtual {p0, p1}, Labcd/BaseProjectConfig;->newInstance(Ljava/lang/String;)Labcd/BaseProjectConfig;

    move-result-object v2

    iput-object p1, v2, Labcd/BaseProjectConfig;->v5:Ljava/lang/String;

    sget-object v3, Labcd/BaseProjectConfig;->j6:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Labcd/BaseProjectConfig;->DW:Ljava/util/Map;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5b} :catch_5c
    .catchall {:try_start_3e .. :try_end_5b} :catchall_61

    return-object v2

    :catch_5c
    move-exception v2

    :try_start_5d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    return-object p0

    :catchall_61
    move-exception v2

    sget-boolean v3, Labcd/BaseProjectConfig;->Hw:Z

    if-eqz v3, :cond_69

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_69
    throw v2
.end method

.method protected abstract newInstance(Ljava/lang/String;)Labcd/BaseProjectConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
