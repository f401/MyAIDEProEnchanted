.class Lcom/aide/ui/views/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/views/CodeEditText$b;->j6([Lcom/aide/engine/m;[I[I[I[II)V
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
    .registers 5

    const-wide v0, 0x1104abef650ed17cL

    const-wide v2, 0x1b9c60fc784d99f7L

    const-class v4, Lcom/aide/ui/views/c;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/CodeEditText$b;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/c;->FH:Lcom/aide/ui/views/CodeEditText$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x65bf20fbc43e3a7L
    .end annotation

    const-wide v0, 0x3af2c95ddf430a7cL  # 9.712438679041744E-25

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/c;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/c;->FH:Lcom/aide/ui/views/CodeEditText$b;

    invoke-virtual {v2}, Lcom/aide/ui/views/editor/g;->v5()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v4, v4, v3}, Lcom/aide/ui/views/CodeEditText$b;->DW(Lcom/aide/ui/views/CodeEditText$b;IIII)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/c;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method
