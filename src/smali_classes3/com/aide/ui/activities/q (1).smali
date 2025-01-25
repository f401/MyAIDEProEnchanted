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
    .registers 5

    const-wide v0, -0x94440bad118f03dL  # -8.737246563262376E263

    const-wide v2, -0x32973314bbe1dd4cL  # -8.161855595284358E64

    const-class v4, Lcom/aide/ui/activities/q;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0x1221136a07a491b5L  # -1.7466053799589804E221

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/q;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/q;->v5:Lcom/aide/ui/activities/s;

    iget-object v2, v2, Lcom/aide/ui/activities/s;->v5:Lcom/aide/ui/activities/GotoBrowserActivity;

    iget-object v3, p0, Lcom/aide/ui/activities/q;->FH:Ljava/util/List;

    iget-object v4, p0, Lcom/aide/ui/activities/q;->Hw:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Lcom/aide/ui/activities/GotoBrowserActivity;->j6(Lcom/aide/ui/activities/GotoBrowserActivity;ZLjava/util/List;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/q;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method
