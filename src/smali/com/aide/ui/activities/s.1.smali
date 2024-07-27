.class Lcom/aide/ui/activities/s;
.super Lcom/aide/engine/service/r$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/GotoBrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final v5:Lcom/aide/ui/activities/GotoBrowserActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/activities/s;

    const-wide v2, -0x94440bad118f03dL    # -8.737246563262376E263

    const-wide v4, 0x2b1653e920f5db80L    # 3.98755725899962E-101

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/GotoBrowserActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/s;->v5:Lcom/aide/ui/activities/GotoBrowserActivity;

    invoke-direct {p0}, Lcom/aide/engine/service/r$a;-><init>()V

    return-void
.end method


# virtual methods
.method public Hw(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x49afd66649441db1L
    .end annotation

    const-wide v2, -0xb2b77aa582a6d03L    # -6.021426453972347E254

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/s;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb2b77aa582a6d03L    # -6.021426453972347E254

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/s;->v5:Lcom/aide/ui/activities/GotoBrowserActivity;

    new-instance v1, Lcom/aide/ui/activities/p;

    invoke-direct {v1, p0}, Lcom/aide/ui/activities/p;-><init>(Lcom/aide/ui/activities/s;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/s;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/engine/SourceEntity;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1b188da459cd8728L
    .end annotation

    const-wide v2, -0x173e45dc643b38b0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/s;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x173e45dc643b38b0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/s;->v5:Lcom/aide/ui/activities/GotoBrowserActivity;

    new-instance v1, Lcom/aide/ui/activities/r;

    invoke-direct {v1, p0, p1}, Lcom/aide/ui/activities/r;-><init>(Lcom/aide/ui/activities/s;Lcom/aide/engine/SourceEntity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/s;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x25fb91aba9e5a5abL
    .end annotation

    const-wide v2, -0x436601907674d297L    # -9.018442043091598E-17

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/s;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x436601907674d297L    # -9.018442043091598E-17

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/s;->v5:Lcom/aide/ui/activities/GotoBrowserActivity;

    new-instance v1, Lcom/aide/ui/activities/q;

    invoke-direct {v1, p0, p2, p1}, Lcom/aide/ui/activities/q;-><init>(Lcom/aide/ui/activities/s;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/s;->Hw:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
