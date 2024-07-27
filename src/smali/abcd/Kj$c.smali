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
        "Ljava/util/concurrent/Callable",
        "<",
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
    .registers 4

    const-wide v2, -0xa9ebdf3cdd29105L

    const-class v0, Labcd/Kj$c;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/Kj;Landroid/app/Activity;Ljava/io/File;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x19a37d30d4efe671L
    .end annotation

    const-wide v8, 0x6ba3389eff1ded50L    # 3.159562451449007E210

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Kj$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6ba3389eff1ded50L    # 3.159562451449007E210

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/Kj$c;->v5:Labcd/Kj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Labcd/Kj$c;->FH:Ljava/io/File;

    iput-object p2, p0, Labcd/Kj$c;->Hw:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Kj$c;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic j6(Labcd/Kj$c;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Labcd/Kj$c;->Hw:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/Kj$c;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x1adf37dccd4d7e03L
    .end annotation

    const-wide v8, 0x1d8bf501044720d4L    # 2.37052041259498E-166

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Kj$c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1d8bf501044720d4L    # 2.37052041259498E-166

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/build/android/Q;->FH()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Labcd/Kj$c;->v5:Labcd/Kj;

    const-string v2, "Installing NDK support (might take several minutes)"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Labcd/Kj;->j6(Labcd/Kj;Ljava/lang/String;II)V

    new-instance v0, Ljava/io/File;

    const-string v2, "busybox"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Labcd/Kj$c;->Hw:Landroid/app/Activity;

    const-string v3, "busybox"

    invoke-static {v2, v3, v0}, Labcd/Kj;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    iget-object v2, p0, Labcd/Kj$c;->FH:Ljava/io/File;

    const-string v3, "ndkinstall.sh"

    invoke-direct {v6, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kj$c;->Hw:Landroid/app/Activity;

    const-string v3, "ndkinstall.sh"

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Labcd/Kj;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Labcd/Kj$c;->v5:Labcd/Kj;

    invoke-static {v2, v0}, Labcd/Kj;->j6(Labcd/Kj;Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string v3, "ash"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-static {}, Lcom/aide/ui/build/android/Q;->v5()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Labcd/Rl;->j6(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ZLjava/io/OutputStream;[B)Labcd/Pl;

    move-result-object v0

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    new-instance v0, Labcd/Nj;

    invoke-direct {v0, p0}, Labcd/Nj;-><init>(Labcd/Kj$c;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z

    return-object v7

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Kj$c;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    iget-object v2, p0, Labcd/Kj$c;->v5:Labcd/Kj;

    invoke-interface {v0}, Labcd/Pl;->j6()[B

    move-result-object v3

    invoke-interface {v0}, Labcd/Pl;->DW()I

    move-result v0

    invoke-static {v2, v3, v0}, Labcd/Kj;->j6(Labcd/Kj;[BI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method
