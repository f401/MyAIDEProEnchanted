.class Lcom/aide/ui/activities/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/s;->j6(Lcom/aide/engine/SourceEntity;)V
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
.field final FH:Lcom/aide/engine/SourceEntity;

.field final Hw:Lcom/aide/ui/activities/s;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/activities/r;

    const-wide v2, -0x94440bad118f03dL    # -8.737246563262376E263

    const-wide v4, -0x32977e82ded95c75L    # -8.064886241769664E64

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/s;Lcom/aide/engine/SourceEntity;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/activities/r;->Hw:Lcom/aide/ui/activities/s;

    iput-object p2, p0, Lcom/aide/ui/activities/r;->FH:Lcom/aide/engine/SourceEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x232a31e8f34c6e03L
    .end annotation

    const-wide v6, -0x12177fb42e682bf0L    # -2.7676643638187153E221

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/r;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x12177fb42e682bf0L    # -2.7676643638187153E221

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/r;->Hw:Lcom/aide/ui/activities/s;

    iget-object v0, v0, Lcom/aide/ui/activities/s;->v5:Lcom/aide/ui/activities/GotoBrowserActivity;

    iget-object v1, p0, Lcom/aide/ui/activities/r;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v1}, Lcom/aide/engine/SourceEntity;->DW()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aide/ui/activities/r;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->u7()I

    move-result v2

    iget-object v3, p0, Lcom/aide/ui/activities/r;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v3}, Lcom/aide/engine/SourceEntity;->tp()I

    move-result v3

    iget-object v4, p0, Lcom/aide/ui/activities/r;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v4}, Lcom/aide/engine/SourceEntity;->u7()I

    move-result v4

    iget-object v5, p0, Lcom/aide/ui/activities/r;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v5}, Lcom/aide/engine/SourceEntity;->gn()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/aide/ui/activities/GotoBrowserActivity;->j6(Lcom/aide/ui/activities/GotoBrowserActivity;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/r;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
