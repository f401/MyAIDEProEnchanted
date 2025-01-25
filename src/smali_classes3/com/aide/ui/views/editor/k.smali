.class Lcom/aide/ui/views/editor/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/editor/l;->run()V
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
.field final FH:Lcom/aide/ui/views/editor/l;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1804a013a407569L

    const-wide v2, 0x16b22b7e050e8585L  # 2.373751307027637E-199

    const-class v4, Lcom/aide/ui/views/editor/k;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/editor/l;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/editor/k;->FH:Lcom/aide/ui/views/editor/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x953f2bc0fae0420L
    .end annotation

    const-wide v0, -0xcf027d7980e9267L  # -1.739478595515714E246

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/k;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/editor/k;->FH:Lcom/aide/ui/views/editor/l;

    iget-object v2, v2, Lcom/aide/ui/views/editor/l;->FH:Lcom/aide/ui/views/editor/m;

    invoke-static {v2}, Lcom/aide/ui/views/editor/m;->FH(Lcom/aide/ui/views/editor/m;)Lcom/aide/ui/views/editor/OConsole;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/OConsole;->QX()V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/k;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method
