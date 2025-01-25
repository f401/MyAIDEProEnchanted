.class final Lcom/aide/common/Pa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/Wa;->FH(Landroid/app/Activity;)V
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
.field final FH:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1ba4715548387498L

    const-wide v2, -0x4bac6578751e823bL  # -1.24921542080172E-56

    const-class v4, Lcom/aide/common/Pa;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/common/Pa;->FH:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1e7e3127b86539f9L
    .end annotation

    const-wide v0, -0x37290e067a90b5e8L  # -7.995240046121288E42

    :try_start_5
    sget-boolean v2, Lcom/aide/common/Pa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/common/Pa;->FH:Landroid/app/Activity;

    const-string v3, "239564276138537"

    invoke-static {v2, v3}, Lcom/aide/common/Ha;->j6(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/common/Pa;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method
