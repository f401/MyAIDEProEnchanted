.class Lcom/aide/ui/build/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/c;->Zo(Ljava/lang/String;)V
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
.field final FH:Ljava/lang/String;

.field final Hw:Lcom/aide/ui/build/c;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xbbcd7bda37b86ffL

    const-wide v2, 0x2e725b6fcccc050L

    const-class v4, Lcom/aide/ui/build/b;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/c;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/build/b;->Hw:Lcom/aide/ui/build/c;

    iput-object p2, p0, Lcom/aide/ui/build/b;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1d8f67aed2c37a28L
    .end annotation

    const-wide v0, -0x18af84e88a67a2f0L  # -4.589403881831824E189

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/b;->Hw:Lcom/aide/ui/build/c;

    iget-object v2, v2, Lcom/aide/ui/build/c;->v5:Lcom/aide/ui/build/d;

    invoke-static {v2}, Lcom/aide/ui/build/d;->j6(Lcom/aide/ui/build/d;)Lcom/aide/ui/build/e;

    move-result-object v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/aide/ui/build/b;->Hw:Lcom/aide/ui/build/c;

    iget-object v2, v2, Lcom/aide/ui/build/c;->v5:Lcom/aide/ui/build/d;

    invoke-static {v2}, Lcom/aide/ui/build/d;->j6(Lcom/aide/ui/build/d;)Lcom/aide/ui/build/e;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/build/b;->FH:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/aide/ui/build/e;->j6(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    :cond_23
    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/b;->DW:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method
