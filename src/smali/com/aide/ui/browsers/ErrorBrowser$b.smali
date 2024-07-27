.class Lcom/aide/ui/browsers/ErrorBrowser$b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/browsers/ErrorBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
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
.field public FH:Z
    .annotation runtime Labcd/ru;
        field = -0x27cf5f3b6939c68cL
    .end annotation
.end field

.field public Hw:Z
    .annotation runtime Labcd/ru;
        field = 0xb6a12f268dc436dL
    .end annotation
.end field

.field public VH:Lcom/aide/engine/SyntaxError;
    .annotation runtime Labcd/ru;
        field = -0x2a6790ca6a4fd373L
    .end annotation
.end field

.field public Zo:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x27f3137fd2191dd4L
    .end annotation
.end field

.field public gn:Labcd/Tl;
    .annotation runtime Labcd/ru;
        field = 0x14b2a9a7e16c5d0fL
    .end annotation
.end field

.field final u7:Lcom/aide/ui/browsers/ErrorBrowser;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field public v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x1487c93045534968L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x2b0b2d57d37e1105L    # 2.426805238900134E-101

    const-class v0, Lcom/aide/ui/browsers/ErrorBrowser$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/browsers/ErrorBrowser;Ljava/lang/String;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x429ccd2f8d3bfb23L
    .end annotation

    const-wide v8, -0x10a6ae4c32e512bL

    const/4 v6, 0x0

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/browsers/ErrorBrowser$b;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x10a6ae4c32e512bL

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/browsers/ErrorBrowser$b;->u7:Lcom/aide/ui/browsers/ErrorBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Labcd/FileSystemUtils;->J8(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/aide/ui/browsers/ErrorBrowser$b;->Hw:Z

    iget-boolean v1, p0, Lcom/aide/ui/browsers/ErrorBrowser$b;->Hw:Z

    if-nez v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/aide/ui/browsers/ErrorBrowser$b;->FH:Z

    invoke-static {p2}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/browsers/ErrorBrowser$b;->v5:Ljava/lang/String;

    new-instance v0, Labcd/Tl;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/aide/ui/browsers/ErrorBrowser$b;->gn:Labcd/Tl;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser$b;->DW:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public constructor <init>(Lcom/aide/ui/browsers/ErrorBrowser;Ljava/lang/String;Lcom/aide/engine/SyntaxError;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x79da171bc94dc80L
    .end annotation

    const-wide v8, -0x1c1082c4c6213b60L    # -2.433822737552581E173

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1c1082c4c6213b60L    # -2.433822737552581E173

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/browsers/ErrorBrowser$b;->u7:Lcom/aide/ui/browsers/ErrorBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/aide/ui/browsers/ErrorBrowser$b;->VH:Lcom/aide/engine/SyntaxError;

    invoke-virtual {p3}, Lcom/aide/engine/SyntaxError;->j6()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/browsers/ErrorBrowser$b;->Zo:Ljava/lang/String;

    new-instance v0, Labcd/Tl;

    iget v2, p3, Lcom/aide/engine/SyntaxError;->v5:I

    iget v3, p3, Lcom/aide/engine/SyntaxError;->Zo:I

    iget v4, p3, Lcom/aide/engine/SyntaxError;->VH:I

    iget v5, p3, Lcom/aide/engine/SyntaxError;->gn:I

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/aide/ui/browsers/ErrorBrowser$b;->gn:Labcd/Tl;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/browsers/ErrorBrowser$b;->DW:Z

    if-eqz v0, :cond_1

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
