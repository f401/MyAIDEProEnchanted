.class Lcom/aide/ui/build/nativeexecutable/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/nativeexecutable/j;->j6(Ljava/lang/Throwable;)V
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
.field final FH:Ljava/lang/Throwable;

.field final Hw:Lcom/aide/ui/build/nativeexecutable/j;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xad04fbe50739491L

    const-wide v2, -0x1f7c52b9d70a1a69L  # -8.442350390073877E156

    const-class v4, Lcom/aide/ui/build/nativeexecutable/h;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/nativeexecutable/j;Ljava/lang/Throwable;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/build/nativeexecutable/h;->Hw:Lcom/aide/ui/build/nativeexecutable/j;

    iput-object p2, p0, Lcom/aide/ui/build/nativeexecutable/h;->FH:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x10e7352abd77910L
    .end annotation

    const-wide v0, -0x35d8e362203d9a00L  # -1.6888955054690064E49

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/h;->Hw:Lcom/aide/ui/build/nativeexecutable/j;

    iget-object v2, v2, Lcom/aide/ui/build/nativeexecutable/j;->FH:Lcom/aide/ui/build/nativeexecutable/k;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executable installation failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aide/ui/build/nativeexecutable/h;->FH:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aide/ui/build/nativeexecutable/k;->j6(Lcom/aide/ui/build/nativeexecutable/k;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/h;->DW:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method
