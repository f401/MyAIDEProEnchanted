.class Lcom/aide/ui/activities/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/s;->j6(Ljava/lang/String;Ljava/util/List;)V
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
.field final FH:Ljava/util/List;

.field final Hw:Ljava/lang/String;

.field final v5:Lcom/aide/ui/activities/s;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/activities/q;

    const-wide v2, -0x94440bad118f03dL    # -8.737246563262376E263

    const-wide v4, -0x32973314bbe1dd4cL    # -8.161855595284358E64

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/s;Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/activities/q;->v5:Lcom/aide/ui/activities/s;

    iput-object p2, p0, Lcom/aide/ui/activities/q;->FH:Ljava/util/List;

    iput-object p3, p0, Lcom/aide/ui/activities/q;->Hw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xf92871348b8bd41L
    .end annotation

    const-wide v4, -0x1221136a07a491b5L    # -1.7466053799589804E221

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/q;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1221136a07a491b5L    # -1.7466053799589804E221

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/q;->v5:Lcom/aide/ui/activities/s;

    iget-object v0, v0, Lcom/aide/ui/activities/s;->v5:Lcom/aide/ui/activities/GotoBrowserActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/aide/ui/activities/q;->FH:Ljava/util/List;

    iget-object v3, p0, Lcom/aide/ui/activities/q;->Hw:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/aide/ui/activities/GotoBrowserActivity;->j6(Lcom/aide/ui/activities/GotoBrowserActivity;ZLjava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/q;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
