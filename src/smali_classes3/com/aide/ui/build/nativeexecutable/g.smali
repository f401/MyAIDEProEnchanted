.class Lcom/aide/ui/build/nativeexecutable/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/nativeexecutable/j;->DW()V
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
.field final FH:Lcom/aide/ui/build/nativeexecutable/j;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xad04fbe50739491L

    const-wide v2, -0x1f7c1471622758d0L  # -8.546735258940738E156

    const-class v4, Lcom/aide/ui/build/nativeexecutable/g;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/nativeexecutable/j;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/nativeexecutable/g;->FH:Lcom/aide/ui/build/nativeexecutable/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x93174e144fb536dL
    .end annotation

    const-wide v0, -0x35deefb8c04cb035L  # -1.2469230294479124E49

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/g;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/g;->FH:Lcom/aide/ui/build/nativeexecutable/j;

    iget-object v2, v2, Lcom/aide/ui/build/nativeexecutable/j;->FH:Lcom/aide/ui/build/nativeexecutable/k;

    const-string v3, "Executable installation was interrupted!"

    invoke-static {v2, v3}, Lcom/aide/ui/build/nativeexecutable/k;->j6(Lcom/aide/ui/build/nativeexecutable/k;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/g;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method
