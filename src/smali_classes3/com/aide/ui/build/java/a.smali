.class Lcom/aide/ui/build/java/a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/ck$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/java/h;->DW()V
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
.field final FH:Lcom/aide/ui/build/java/h;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0xe65e2c46d3e3b4dL

    const-wide v2, -0x16f6e51df3c559a0L  # -9.383127052737667E197

    const-class v4, Lcom/aide/ui/build/java/a;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/java/h;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/java/a;->FH:Lcom/aide/ui/build/java/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x418c4cfde15ae3b9L
    .end annotation

    const-wide v0, -0x3b2f6312b4fafeecL  # -3.138106182693018E23

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/java/a;->FH:Lcom/aide/ui/build/java/h;

    invoke-static {v2}, Lcom/aide/ui/build/java/h;->j6(Lcom/aide/ui/build/java/h;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/aide/ui/build/java/a;->FH:Lcom/aide/ui/build/java/h;

    invoke-static {v2}, Lcom/aide/ui/build/java/h;->DW(Lcom/aide/ui/build/java/h;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/a;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x79e12065140ead7L
    .end annotation

    const-wide v0, -0x42042c728659cda0L  # -4.049270863486968E-10

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/java/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/java/a;->FH:Lcom/aide/ui/build/java/h;

    invoke-static {v2}, Lcom/aide/ui/build/java/h;->j6(Lcom/aide/ui/build/java/h;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/aide/ui/build/java/a;->FH:Lcom/aide/ui/build/java/h;

    invoke-static {v2}, Lcom/aide/ui/build/java/h;->DW(Lcom/aide/ui/build/java/h;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/java/a;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method
