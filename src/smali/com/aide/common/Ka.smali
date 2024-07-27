.class final Lcom/aide/common/Ka;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/Wa;->DW(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
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

.field final Hw:Ljava/lang/String;

.field final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/common/Ka;

    const-wide v2, 0x1ba4715548387498L

    const-wide v4, 0x3b9d7e87cf6e14e5L    # 1.5614131128590677E-21

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/common/Ka;->FH:Landroid/app/Activity;

    iput-object p2, p0, Lcom/aide/common/Ka;->Hw:Ljava/lang/String;

    iput-object p3, p0, Lcom/aide/common/Ka;->v5:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x13ab9042a2781120L
    .end annotation

    const-wide v4, -0x2be903be7ffc5b5L

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Ka;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2be903be7ffc5b5L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/common/Ka;->FH:Landroid/app/Activity;

    iget-object v1, p0, Lcom/aide/common/Ka;->Hw:Ljava/lang/String;

    iget-object v2, p0, Lcom/aide/common/Ka;->v5:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/aide/common/Ha;->DW(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Ka;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
