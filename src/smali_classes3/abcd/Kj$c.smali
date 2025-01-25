.class Labcd/Kj$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Kj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
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
.field private final FH:Ljava/io/File;
    .annotation runtime Labcd/ru;
        field = 0x289af8e91ad7ebe5L
    .end annotation
.end field

.field private Hw:Landroid/app/Activity;
    .annotation runtime Labcd/ru;
        field = 0x1c304db600f12991L
    .end annotation
.end field

.field final v5:Labcd/Kj;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Kj$c;

    const-wide v1, -0xa9ebdf3cdd29105L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Kj;Landroid/app/Activity;Ljava/io/File;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x19a37d30d4efe671L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Kj$c;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x6ba3389eff1ded50L  # 3.159562451449007E210

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iput-object p1, p0, Labcd/Kj$c;->v5:Labcd/Kj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Labcd/Kj$c;->FH:Ljava/io/File;

    iput-object p2, p0, Labcd/Kj$c;->Hw:Landroid/app/Activity;
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Labcd/Kj$c;->DW:Z

    if-eqz v1, :cond_2c

    const-wide v2, 0x6ba3389eff1ded50L  # 3.159562451449007E210

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method static synthetic j6(Labcd/Kj$c;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Labcd/Kj$c;->Hw:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/Kj$c;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x1adf37dccd4d7e03L
    .end annotation

    const-string v0, "ndkinstall.sh"

    const-string v1, "busybox"

    const-wide v2, 0x1d8bf501044720d4L  # 2.37052041259498E-166

    :try_start_9
    sget-boolean v4, Labcd/Kj$c;->j6:Z

    if-eqz v4, :cond_10

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_10
    invoke-static {}, Lcom/aide/ui/build/android/Q;->FH()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_3c

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_21

    goto :goto_3c

    :cond_21
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create directory: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    :goto_3c
    iget-object v5, p0, Labcd/Kj$c;->v5:Labcd/Kj;

    const-string v6, "Installing NDK support (might take several minutes)"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v7}, Labcd/Kj;->j6(Labcd/Kj;Ljava/lang/String;II)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Labcd/Kj$c;->Hw:Landroid/app/Activity;

    invoke-static {v6, v1, v5}, Labcd/Kj;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Labcd/Kj$c;->FH:Ljava/io/File;

    invoke-direct {v1, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v6, p0, Labcd/Kj$c;->Hw:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v0, v8}, Labcd/Kj;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Labcd/Kj$c;->v5:Labcd/Kj;

    invoke-static {v0, v5}, Labcd/Kj;->j6(Labcd/Kj;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    aput-object v5, v0, v7

    const-string v5, "ash"

    const/4 v6, 0x1

    aput-object v5, v0, v6

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v0, v6

    invoke-static {}, Lcom/aide/ui/build/android/Q;->v5()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_bc

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Labcd/Rl;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;

    move-result-object v0

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v4

    if-nez v4, :cond_a8

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v0, Labcd/Nj;

    invoke-direct {v0, p0}, Labcd/Nj;-><init>(Labcd/Kj$c;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return-object v0

    :cond_a8
    new-instance v1, Ljava/io/IOException;

    iget-object v4, p0, Labcd/Kj$c;->v5:Labcd/Kj;

    invoke-interface {v0}, Labcd/Pl;->j6()[B

    move-result-object v5

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v0

    invoke-static {v4, v5, v0}, Labcd/Kj;->j6(Labcd/Kj;[BI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_bc
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_c2
    .catchall {:try_start_9 .. :try_end_c2} :catchall_c2

    :catchall_c2
    move-exception v0

    sget-boolean v1, Labcd/Kj$c;->DW:Z

    if-eqz v1, :cond_ca

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_ca
    throw v0
.end method
