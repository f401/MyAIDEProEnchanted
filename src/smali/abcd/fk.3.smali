.class Labcd/fk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/gk;->run()V
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
.field final FH:Labcd/gk;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/fk;

    const-wide v2, -0xbb50e75b5edbbb3L    # -1.543265553544348E252

    const-wide v4, 0x216e405559cc0a3dL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/gk;)V
    .registers 2

    iput-object p1, p0, Labcd/fk;->FH:Labcd/gk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x21f4d81f4f7d250L
    .end annotation

    const-wide v2, -0x30279100034fa48L

    :try_start_0
    sget-boolean v0, Labcd/fk;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x30279100034fa48L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/fk;->FH:Labcd/gk;

    iget-object v0, v0, Labcd/gk;->v5:Labcd/lk;

    invoke-static {v0}, Labcd/lk;->j6(Labcd/lk;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/fk;->FH:Labcd/gk;

    iget-object v0, v0, Labcd/gk;->FH:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/fk;->FH:Labcd/gk;

    iget-object v0, v0, Labcd/gk;->Hw:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/fk;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
