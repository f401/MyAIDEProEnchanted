.class Labcd/tf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/uf;->run()V
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
.field final FH:Ljava/io/IOException;

.field final Hw:Labcd/uf;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1298307f917b3980L  # 4.282812849239566E-219

    const-wide v2, 0x52132191e6d85300L  # 2.37858918697962E87

    const-class v4, Labcd/tf;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/uf;Ljava/io/IOException;)V
    .registers 3

    iput-object p1, p0, Labcd/tf;->Hw:Labcd/uf;

    iput-object p2, p0, Labcd/tf;->FH:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1e14d1ce1ef2aaa4L
    .end annotation

    const-wide v0, -0x37389c465098ef11L  # -4.0750346973545177E42

    :try_start_5
    sget-boolean v2, Labcd/tf;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    const-string v3, "Delete"

    iget-object v4, p0, Labcd/tf;->FH:Ljava/io/IOException;

    invoke-static {v2, v3, v4}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Labcd/tf;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method
