.class Lcom/aide/ui/build/java/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/java/j;->run()V
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
.field final FH:Lcom/aide/ui/build/java/j;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x7d90a06c8983440L

    const-wide v2, 0x2d369a1660e58494L  # 6.934678692296198E-91

    const-class v4, Lcom/aide/ui/build/java/i;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/java/j;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/java/i;->FH:Lcom/aide/ui/build/java/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x11d578c6600f5f47L
    .end annotation

    const-wide v0, -0x3dc4b0e243eeebb8L  # -1.1729146574507922E11

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/i;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/java/i;->FH:Lcom/aide/ui/build/java/j;

    iget-object v2, v2, Lcom/aide/ui/build/java/j;->v5:Lcom/aide/ui/build/java/RunJavaActivity;

    invoke-static {v2}, Lcom/aide/ui/build/java/RunJavaActivity;->j6(Lcom/aide/ui/build/java/RunJavaActivity;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/i;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method
