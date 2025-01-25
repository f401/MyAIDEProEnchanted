.class Lcom/aide/appwizard/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/appwizard/g;->we()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Lcom/aide/uidesigner/b;",
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
.field final FH:Lcom/aide/appwizard/g;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2cb3d8bbc8f7fe1cL  # 2.378635005665573E-93

    const-wide v2, 0x29c9d2ed6fadef0L

    const-class v4, Lcom/aide/appwizard/f;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/g;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/appwizard/f;->FH:Lcom/aide/appwizard/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/aide/uidesigner/b;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x242d5203a49962dL
    .end annotation

    const-wide v0, -0x3425a15341daf2e3L  # -2.586344748158912E57

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/f;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/f;->FH:Lcom/aide/appwizard/g;

    iget-object v2, v2, Lcom/aide/appwizard/g;->U2:Lcom/aide/appwizard/h;

    invoke-static {v2}, Lcom/aide/appwizard/h;->j6(Lcom/aide/appwizard/h;)Lcom/aide/uidesigner/Pa;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/uidesigner/Pa;->j6(Lcom/aide/uidesigner/b;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/f;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/aide/uidesigner/b;

    invoke-virtual {p0, p1}, Lcom/aide/appwizard/f;->j6(Lcom/aide/uidesigner/b;)V

    return-void
.end method
