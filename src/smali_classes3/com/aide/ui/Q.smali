.class final Lcom/aide/ui/Q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field final FH:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x64a8a2bb6c073e5L

    const-wide v2, 0x657bd884fae8e60L

    const-class v4, Lcom/aide/ui/Q;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/Q;->FH:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xa58cce49e763a9cL
    .end annotation

    const-wide v0, -0x60fe139bd3dc5f3cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Q;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1e

    if-eqz v2, :cond_13

    return-void

    :cond_13
    :try_start_13
    iget-object v2, p0, Lcom/aide/ui/Q;->FH:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception v2

    :try_start_1a
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    :goto_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Q;->DW:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method
