.class Lcom/aide/ui/views/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/CodeEditText$b;->P8()V
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
.field final FH:Lcom/aide/ui/views/CodeEditText$b;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/views/b;

    const-wide v2, 0x1104abef650ed17cL

    const-wide v4, 0x1b9c1d9909cc9100L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/CodeEditText$b;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/b;->FH:Lcom/aide/ui/views/CodeEditText$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x2fb8b9ce855360cL
    .end annotation

    const-wide v6, 0x2d56b052f2b66940L    # 2.7845317843042004E-90

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2d56b052f2b66940L    # 2.7845317843042004E-90

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/b;->FH:Lcom/aide/ui/views/CodeEditText$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aide/ui/views/b;->FH:Lcom/aide/ui/views/CodeEditText$b;

    invoke-virtual {v4}, Lcom/aide/ui/views/editor/g;->v5()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/aide/ui/views/CodeEditText$b;->j6(Lcom/aide/ui/views/CodeEditText$b;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
