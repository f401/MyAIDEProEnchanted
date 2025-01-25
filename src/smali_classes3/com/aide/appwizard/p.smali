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
.field final FH:Lcom/aide/appwizard/q;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x36c7cc7e1841c5a0L  # 8.337305141522511E-45

    const-wide v2, -0xec1e616524d859L

    const-class v4, Lcom/aide/appwizard/p;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0x206a603f0c67be2dL  # -2.8313569101134703E152

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/p;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "none"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/aide/appwizard/p;->FH:Lcom/aide/appwizard/q;

    iget-object v2, v2, Lcom/aide/appwizard/q;->FH:Lcom/aide/appwizard/r;

    iget-object v2, v2, Lcom/aide/appwizard/r;->Hw:Lcom/aide/common/ab;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V

    goto :goto_42

    :cond_1f
    const-string v2, "true"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/aide/appwizard/p;->FH:Lcom/aide/appwizard/q;

    iget-object v2, v2, Lcom/aide/appwizard/q;->FH:Lcom/aide/appwizard/r;

    iget-object v2, v2, Lcom/aide/appwizard/r;->Hw:Lcom/aide/common/ab;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_32
    invoke-interface {v2, v3}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V

    goto :goto_42

    :cond_36
    iget-object v2, p0, Lcom/aide/appwizard/p;->FH:Lcom/aide/appwizard/q;

    iget-object v2, v2, Lcom/aide/appwizard/q;->FH:Lcom/aide/appwizard/r;

    iget-object v2, v2, Lcom/aide/appwizard/r;->Hw:Lcom/aide/common/ab;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_43

    goto :goto_32

    :goto_42
    return-void

    :catchall_43
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/p;->DW:Z

    if-eqz v3, :cond_4b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    goto :goto_4d

    :goto_4c
    throw v2

    :goto_4d
    goto :goto_4c
.end method
