.class Labcd/lf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/mf;->run()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Ljava/lang/String;",
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
.field final FH:Ljava/lang/String;

.field final Hw:Labcd/mf;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x2138e93242001c1L  # -3.720335868146863E298

    const-wide v2, -0x6850619b8d6d8f4L

    const-class v4, Labcd/lf;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/mf;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Labcd/lf;->Hw:Labcd/mf;

    iput-object p2, p0, Labcd/lf;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Labcd/lf;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x4a616872a90a2044L
    .end annotation

    const-wide v0, 0x36e7b288ffee309L

    :try_start_5
    sget-boolean v2, Labcd/lf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_57

    :cond_c
    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Labcd/lf;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Labcd/FileSystemUtils;->createNewFileNotExists(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->er()V

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->Hw()V

    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v2

    invoke-virtual {v2, v5}, Labcd/Ji;->FH(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    new-instance v3, Labcd/Tl;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v2, v3}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_4b} :catch_4c
    .catchall {:try_start_c .. :try_end_4b} :catchall_57

    goto :goto_56

    :catch_4c
    move-exception v2

    :try_start_4d
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const-string v4, "Create File"

    invoke-static {v3, v4, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_57

    :goto_56
    return-void

    :catchall_57
    move-exception v2

    sget-boolean v3, Labcd/lf;->DW:Z

    if-eqz v3, :cond_5f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5f
    throw v2
.end method
