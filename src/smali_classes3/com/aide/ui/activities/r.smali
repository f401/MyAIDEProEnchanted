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
    .registers 5

    const-wide v0, -0x94440bad118f03dL  # -8.737246563262376E263

    const-wide v2, -0x32977e82ded95c75L  # -8.064886241769664E64

    const-class v4, Lcom/aide/ui/activities/r;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x232a31e8f34c6e03L
    .end annotation

    const-wide v0, -0x12177fb42e682bf0L  # -2.7676643638187153E221

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/r;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/r;->Hw:Lcom/aide/ui/activities/s;

    iget-object v3, v2, Lcom/aide/ui/activities/s;->v5:Lcom/aide/ui/activities/GotoBrowserActivity;

    iget-object v2, p0, Lcom/aide/ui/activities/r;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->DW()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/aide/ui/activities/r;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->u7()I

    move-result v5

    iget-object v2, p0, Lcom/aide/ui/activities/r;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->tp()I

    move-result v6

    iget-object v2, p0, Lcom/aide/ui/activities/r;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->u7()I

    move-result v7

    iget-object v2, p0, Lcom/aide/ui/activities/r;->FH:Lcom/aide/engine/SourceEntity;

    invoke-virtual {v2}, Lcom/aide/engine/SourceEntity;->gn()I

    move-result v8

    invoke-static/range {v3 .. v8}, Lcom/aide/ui/activities/GotoBrowserActivity;->j6(Lcom/aide/ui/activities/GotoBrowserActivity;Ljava/lang/String;IIII)V
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_32

    return-void

    :catchall_32
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/r;->DW:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3a
    throw v2
.end method
