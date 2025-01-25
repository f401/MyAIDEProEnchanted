.class Labcd/jf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/kf;->run()Z
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

.field final Hw:Labcd/kf;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x377e43a36dabe0L

    const-wide v2, -0x645a9a744df15c3L  # -2.334356169444817E278

    const-class v4, Labcd/jf;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/kf;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Labcd/jf;->Hw:Labcd/kf;

    iput-object p2, p0, Labcd/jf;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Labcd/jf;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x25bf3f67569ccdcbL
    .end annotation

    const-wide v0, 0x15985dd75b30073L

    :try_start_5
    sget-boolean v2, Labcd/jf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_46

    :cond_c
    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Labcd/jf;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/FileSystemUtils;->j6(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->er()V

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/mk;->Hw()V

    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/Ji;->FH(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_3a} :catch_3b
    .catchall {:try_start_c .. :try_end_3a} :catchall_46

    goto :goto_45

    :catch_3b
    move-exception v2

    :try_start_3c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    const-string v4, "Create Folder"

    invoke-static {v3, v4, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_46

    :goto_45
    return-void

    :catchall_46
    move-exception v2

    sget-boolean v3, Labcd/jf;->DW:Z

    if-eqz v3, :cond_4e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    throw v2
.end method
