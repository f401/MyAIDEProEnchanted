.class Lcom/aide/ui/browsers/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/browsers/LogCatBrowser;->tp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Ljava/lang/String;",
        ">;"
    }
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
.field final FH:Lcom/aide/ui/browsers/LogCatBrowser;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x67c62fd5ed9375c9L  # 7.908298614517782E191

    const-wide v2, -0x22262f27c126850L

    const-class v4, Lcom/aide/ui/browsers/o;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/browsers/LogCatBrowser;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/browsers/o;->FH:Lcom/aide/ui/browsers/LogCatBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aide/ui/browsers/o;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x51ec6035a985b558L
    .end annotation

    const-wide v0, -0x50206207c9f6a76dL  # -4.2664114700599123E-78

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/o;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/browsers/o;->FH:Lcom/aide/ui/browsers/LogCatBrowser;

    const/4 v3, 0x1

    invoke-static {v2, v3, p1}, Lcom/aide/ui/browsers/LogCatBrowser;->j6(Lcom/aide/ui/browsers/LogCatBrowser;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/aide/ui/browsers/o;->FH:Lcom/aide/ui/browsers/LogCatBrowser;

    invoke-static {v2}, Lcom/aide/ui/browsers/LogCatBrowser;->j6(Lcom/aide/ui/browsers/LogCatBrowser;)Lcom/aide/ui/LogCatConsole;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/ui/LogCatConsole;->v5(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/o;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method
