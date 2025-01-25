.class Labcd/Pj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Kj$d;->done()V
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
.field final FH:Ljava/lang/InterruptedException;

.field final Hw:Labcd/Kj$d;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x51a88981548e24d0L

    const-wide v2, 0x4352a80a12d7cf8L

    const-class v4, Labcd/Pj;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Kj$d;Ljava/lang/InterruptedException;)V
    .registers 3

    iput-object p1, p0, Labcd/Pj;->Hw:Labcd/Kj$d;

    iput-object p2, p0, Labcd/Pj;->FH:Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x523d6f6c3ab73cL
    .end annotation

    const-wide v0, -0x293f9608e94f8267L  # -7.709761078094915E109

    :try_start_5
    sget-boolean v2, Labcd/Pj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Pj;->Hw:Labcd/Kj$d;

    iget-object v2, v2, Labcd/Kj$d;->Hw:Labcd/Kj;

    invoke-static {v2}, Labcd/Kj;->DW(Labcd/Kj;)Labcd/Kj$d;

    move-result-object v2

    iget-object v3, p0, Labcd/Pj;->Hw:Labcd/Kj$d;

    if-ne v2, v3, :cond_3b

    iget-object v2, v3, Labcd/Kj$d;->Hw:Labcd/Kj;

    invoke-static {v2}, Labcd/Kj;->j6(Labcd/Kj;)V

    iget-object v2, p0, Labcd/Pj;->Hw:Labcd/Kj$d;

    iget-object v2, v2, Labcd/Kj$d;->Hw:Labcd/Kj;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Labcd/Kj;->j6(Labcd/Kj;Labcd/Kj$d;)Labcd/Kj$d;

    iget-object v2, p0, Labcd/Pj;->Hw:Labcd/Kj$d;

    invoke-static {v2}, Labcd/Kj$d;->j6(Labcd/Kj$d;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_3c

    if-eqz v3, :cond_34

    const-string v3, "下载错误"

    goto :goto_36

    .line 99
    :cond_34
    const-string v3, "Download error"

    .line 0
    :goto_36
    :try_start_36
    iget-object v4, p0, Labcd/Pj;->FH:Ljava/lang/InterruptedException;

    invoke-static {v2, v3, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3c

    :cond_3b
    return-void

    .line 99
    :catchall_3c
    move-exception v2

    sget-boolean v3, Labcd/Pj;->DW:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_44
    throw v2
.end method
