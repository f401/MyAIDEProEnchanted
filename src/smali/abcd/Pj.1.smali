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
    .registers 6

    const-class v0, Labcd/Pj;

    const-wide v2, 0x51a88981548e24d0L

    const-wide v4, 0x4352a80a12d7cf8L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x523d6f6c3ab73cL
    .end annotation

    const-wide v4, -0x293f9608e94f8267L    # -7.709761078094915E109

    :try_start_0
    sget-boolean v0, Labcd/Pj;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x293f9608e94f8267L    # -7.709761078094915E109

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Pj;->Hw:Labcd/Kj$d;

    iget-object v0, v0, Labcd/Kj$d;->Hw:Labcd/Kj;

    invoke-static {v0}, Labcd/Kj;->DW(Labcd/Kj;)Labcd/Kj$d;

    move-result-object v0

    iget-object v1, p0, Labcd/Pj;->Hw:Labcd/Kj$d;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Labcd/Pj;->Hw:Labcd/Kj$d;

    iget-object v0, v0, Labcd/Kj$d;->Hw:Labcd/Kj;

    invoke-static {v0}, Labcd/Kj;->j6(Labcd/Kj;)V

    iget-object v0, p0, Labcd/Pj;->Hw:Labcd/Kj$d;

    iget-object v0, v0, Labcd/Kj$d;->Hw:Labcd/Kj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/Kj;->j6(Labcd/Kj;Labcd/Kj$d;)Labcd/Kj$d;

    iget-object v0, p0, Labcd/Pj;->Hw:Labcd/Kj$d;

    invoke-static {v0}, Labcd/Kj$d;->j6(Labcd/Kj$d;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u4e0b\u8f7d\u9519\u8bef"

    :goto_0
    :try_start_1
    iget-object v2, p0, Labcd/Pj;->FH:Ljava/lang/InterruptedException;

    invoke-static {v1, v0, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-void

    .line 99
    :cond_2
    const-string v0, "Download error"

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Pj;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method
