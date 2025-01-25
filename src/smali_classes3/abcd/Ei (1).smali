.class Labcd/Ei;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Fi;->run()V
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
.field final FH:Labcd/Fi;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x3cc87a6d76bb9749L  # 6.7940744100194515E-16

    const-wide v2, 0x71b80c016f6ff18L

    const-class v4, Labcd/Ei;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Fi;)V
    .registers 2

    iput-object p1, p0, Labcd/Ei;->FH:Labcd/Fi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xce58a4348a69c87L
    .end annotation

    const-wide v0, 0x5a988cfcf47a0fe9L  # 2.6590264965527096E128

    :try_start_5
    sget-boolean v2, Labcd/Ei;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Ei;->FH:Labcd/Fi;

    iget-object v2, v2, Labcd/Fi;->FH:Labcd/Ji;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Labcd/Ji;->j6(Labcd/Ji;Z)Z

    iget-object v2, p0, Labcd/Ei;->FH:Labcd/Fi;

    iget-object v2, v2, Labcd/Fi;->FH:Labcd/Ji;

    invoke-static {v2}, Labcd/Ji;->u7(Labcd/Ji;)Labcd/Dw;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Dw;->FH()Labcd/Zw;

    move-result-object v2

    check-cast v2, Lcom/dropbox/client2/android/a;

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dropbox/client2/android/a;->j6(Landroid/content/Context;)V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    return-void

    :catchall_2a
    move-exception v2

    sget-boolean v3, Labcd/Ei;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    throw v2
.end method
