.class Lcom/aide/ui/build/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/c;->VH(Z)V
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
.field final FH:Z

.field final Hw:Lcom/aide/ui/build/c;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/build/a;

    const-wide v2, -0xbbcd7bda37b86ffL

    const-wide v4, 0x2e722618a6abc7dL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/c;Z)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/build/a;->Hw:Lcom/aide/ui/build/c;

    iput-boolean p2, p0, Lcom/aide/ui/build/a;->FH:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1612b6dad42e7e8bL
    .end annotation

    const-wide v2, -0x18ba443261876f5dL    # -3.0260707980461437E189

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x18ba443261876f5dL    # -3.0260707980461437E189

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/a;->Hw:Lcom/aide/ui/build/c;

    iget-object v0, v0, Lcom/aide/ui/build/c;->v5:Lcom/aide/ui/build/d;

    invoke-static {v0}, Lcom/aide/ui/build/d;->j6(Lcom/aide/ui/build/d;)Lcom/aide/ui/build/e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/build/a;->Hw:Lcom/aide/ui/build/c;

    iget-object v0, v0, Lcom/aide/ui/build/c;->v5:Lcom/aide/ui/build/d;

    invoke-static {v0}, Lcom/aide/ui/build/d;->j6(Lcom/aide/ui/build/d;)Lcom/aide/ui/build/e;

    move-result-object v0

    iget-boolean v1, p0, Lcom/aide/ui/build/a;->FH:Z

    invoke-interface {v0, v1}, Lcom/aide/ui/build/e;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
