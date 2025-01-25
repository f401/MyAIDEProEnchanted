.class Lcom/aide/ui/Ta;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/Ua;->run()V
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
.field final FH:Lcom/aide/ui/Ua;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1bdd5d60211a3735L  # -2.3045321710945256E174

    const-wide v2, 0x1598d321962aef93L  # 1.237164679424918E-204

    const-class v4, Lcom/aide/ui/Ta;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/Ua;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/Ta;->FH:Lcom/aide/ui/Ua;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xc9afb0cb2b5998L
    .end annotation

    const-wide v0, 0xcae7b0dbefb8c9dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/Ta;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/Ta;->FH:Lcom/aide/ui/Ua;

    iget-object v2, v2, Lcom/aide/ui/Ua;->FH:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/Ta;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method
