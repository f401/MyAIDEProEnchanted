.class Labcd/gk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/lk;->j6(ZLjava/lang/Runnable;Ljava/lang/Runnable;)V
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
.field final FH:Ljava/lang/Runnable;

.field final Hw:Ljava/lang/Runnable;

.field final v5:Labcd/lk;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xbb50e75b5edbbb3L  # -1.543265553544348E252

    const-wide v2, -0x66328f715252788L

    const-class v4, Labcd/gk;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/lk;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Labcd/gk;->v5:Labcd/lk;

    iput-object p2, p0, Labcd/gk;->FH:Ljava/lang/Runnable;

    iput-object p3, p0, Labcd/gk;->Hw:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x13821b97e65a7070L
    .end annotation

    const-wide v0, -0x30214fed2061635L

    :try_start_5
    sget-boolean v2, Labcd/gk;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_4b

    :cond_c
    :try_start_c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v4, "echo hello\n"

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v4, "exit\n"

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v2

    if-nez v2, :cond_3b

    iget-object v2, p0, Labcd/gk;->v5:Labcd/lk;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Labcd/lk;->j6(Labcd/lk;Z)Z
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_41

    :cond_3b
    :try_start_3b
    new-instance v2, Labcd/fk;

    invoke-direct {v2, p0}, Labcd/fk;-><init>(Labcd/gk;)V

    goto :goto_47

    :catchall_41
    move-exception v2

    new-instance v2, Labcd/fk;

    invoke-direct {v2, p0}, Labcd/fk;-><init>(Labcd/gk;)V

    :goto_47
    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_4a
    .catchall {:try_start_3b .. :try_end_4a} :catchall_4b

    return-void

    :catchall_4b
    move-exception v2

    sget-boolean v3, Labcd/gk;->DW:Z

    if-eqz v3, :cond_53

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_53
    throw v2
.end method
