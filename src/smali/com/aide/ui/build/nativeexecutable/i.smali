.class Lcom/aide/ui/build/nativeexecutable/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/nativeexecutable/j;->j6()V
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
    .registers 6

    const-class v0, Lcom/aide/ui/build/nativeexecutable/i;

    const-wide v2, -0xad04fbe50739491L

    const-wide v4, -0x1f7c91024baedbc4L    # -8.337965527400659E156

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/nativeexecutable/j;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/nativeexecutable/i;->FH:Lcom/aide/ui/build/nativeexecutable/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x230a732443f0005bL
    .end annotation

    const-wide v4, -0x35d2d69ac40a54c9L    # -2.1309936851343324E49

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/i;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x35d2d69ac40a54c9L    # -2.1309936851343324E49

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/i;->FH:Lcom/aide/ui/build/nativeexecutable/j;

    iget-object v0, v0, Lcom/aide/ui/build/nativeexecutable/j;->FH:Lcom/aide/ui/build/nativeexecutable/k;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/aide/ui/build/nativeexecutable/k;->j6(Lcom/aide/ui/build/nativeexecutable/k;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/i;->FH:Lcom/aide/ui/build/nativeexecutable/j;

    iget-object v0, v0, Lcom/aide/ui/build/nativeexecutable/j;->FH:Lcom/aide/ui/build/nativeexecutable/k;

    invoke-static {v0}, Lcom/aide/ui/build/nativeexecutable/k;->FH(Lcom/aide/ui/build/nativeexecutable/k;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/i;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
