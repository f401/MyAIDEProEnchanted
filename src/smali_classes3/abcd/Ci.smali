.class Labcd/Ci;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Di;->run()V
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
.field final FH:Ljava/lang/Exception;

.field final Hw:Labcd/Di;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x3cc87a6d76bb9749L  # 6.7940744100194515E-16

    const-wide v2, 0x71c06a58b30de19L

    const-class v4, Labcd/Ci;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Di;Ljava/lang/Exception;)V
    .registers 3

    iput-object p1, p0, Labcd/Ci;->Hw:Labcd/Di;

    iput-object p2, p0, Labcd/Ci;->FH:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xcefb3c25ab03195L
    .end annotation

    const-wide v0, -0x32650dde89acaf48L  # -7.094315951991926E65

    :try_start_5
    sget-boolean v2, Labcd/Ci;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->Sf()V

    iget-object v2, p0, Labcd/Ci;->Hw:Labcd/Di;

    iget-object v2, v2, Labcd/Di;->FH:Labcd/Ji;

    invoke-static {v2}, Labcd/Ji;->EQ(Labcd/Ji;)Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Labcd/Ci;->FH:Ljava/lang/Exception;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_36

    iget-object v4, p0, Labcd/Ci;->FH:Ljava/lang/Exception;

    goto :goto_3c

    :cond_36
    iget-object v4, p0, Labcd/Ci;->FH:Ljava/lang/Exception;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    :goto_3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Labcd/Bi;

    invoke-direct {v4, p0}, Labcd/Bi;-><init>(Labcd/Ci;)V

    const-string v5, "Dropbox"

    const-string v6, "Disconnect"

    invoke-static {v2, v5, v3, v6, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_50

    :cond_4f
    return-void

    :catchall_50
    move-exception v2

    sget-boolean v3, Labcd/Ci;->DW:Z

    if-eqz v3, :cond_58

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_58
    throw v2
.end method
