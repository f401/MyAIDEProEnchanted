.class Lcom/aide/appwizard/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/appwizard/q;->j6(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab",
        "<",
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
.field final FH:Lcom/aide/appwizard/q;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/appwizard/p;

    const-wide v2, 0x36c7cc7e1841c5a0L    # 8.337305141522511E-45

    const-wide v4, -0xec1e616524d859L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/q;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/appwizard/p;->FH:Lcom/aide/appwizard/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aide/appwizard/p;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x38ca94f27430f0c1L
    .end annotation

    const-wide v2, -0x206a603f0c67be2dL    # -2.8313569101134703E152

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/p;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x206a603f0c67be2dL    # -2.8313569101134703E152

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/appwizard/p;->FH:Lcom/aide/appwizard/q;

    iget-object v0, v0, Lcom/aide/appwizard/q;->FH:Lcom/aide/appwizard/r;

    iget-object v0, v0, Lcom/aide/appwizard/r;->Hw:Lcom/aide/common/ab;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aide/appwizard/p;->FH:Lcom/aide/appwizard/q;

    iget-object v0, v0, Lcom/aide/appwizard/q;->FH:Lcom/aide/appwizard/r;

    iget-object v0, v0, Lcom/aide/appwizard/r;->Hw:Lcom/aide/common/ab;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/p;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/aide/appwizard/p;->FH:Lcom/aide/appwizard/q;

    iget-object v0, v0, Lcom/aide/appwizard/q;->FH:Lcom/aide/appwizard/r;

    iget-object v0, v0, Lcom/aide/appwizard/r;->Hw:Lcom/aide/common/ab;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
