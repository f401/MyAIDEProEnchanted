.class Lcom/aide/ui/activities/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/s;->Hw(Ljava/lang/String;)V
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
.field final FH:Lcom/aide/ui/activities/s;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x94440bad118f03dL  # -8.737246563262376E263

    const-wide v2, -0x3296e7a698ac5de5L  # -8.258824953549861E64

    const-class v4, Lcom/aide/ui/activities/p;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/s;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/p;->FH:Lcom/aide/ui/activities/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1465bb83a04c0271L
    .end annotation

    const-wide v0, -0x122aa6af24bcc878L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/p;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/p;->FH:Lcom/aide/ui/activities/s;

    iget-object v2, v2, Lcom/aide/ui/activities/s;->v5:Lcom/aide/ui/activities/GotoBrowserActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4}, Lcom/aide/ui/activities/GotoBrowserActivity;->j6(Lcom/aide/ui/activities/GotoBrowserActivity;ZLjava/util/List;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/p;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method
