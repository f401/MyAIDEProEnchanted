.class Labcd/Hk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Jk;->Hw()V
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
.field final FH:Labcd/Jk;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1227d23c1060aa1L

    const-wide v2, -0xe28ac8fdbfa81a8L

    const-class v4, Labcd/Hk;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Jk;)V
    .registers 2

    iput-object p1, p0, Labcd/Hk;->FH:Labcd/Jk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x212194aaa7e46831L
    .end annotation

    const-wide v0, 0x4a4cb3f15f44b2b8L  # 8.389867594375903E49

    :try_start_5
    sget-boolean v2, Labcd/Hk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_22

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Hk;->FH:Labcd/Jk;

    invoke-static {v2}, Labcd/Jk;->j6(Labcd/Jk;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    invoke-static {}, Labcd/Jk;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/FileSystemUtils;->deleteAll(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1c} :catch_1d
    .catchall {:try_start_c .. :try_end_1c} :catchall_22

    goto :goto_21

    :catch_1d
    move-exception v2

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    :goto_21
    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/Hk;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method
