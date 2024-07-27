.class Lcom/aide/uidesigner/J;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/K;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab",
        "<",
        "Lcom/aide/uidesigner/b;",
        ">;"
    }
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
.field final FH:Lcom/aide/uidesigner/K;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/uidesigner/J;

    const-wide v2, -0x1dd98fa673d10c90L    # -6.460833633665477E164

    const-wide v4, -0x18c63eb03d0d244L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/K;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/uidesigner/J;->FH:Lcom/aide/uidesigner/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Lcom/aide/uidesigner/b;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x134ec7f4f3616a99L
    .end annotation

    const-wide v2, -0x5e4ef59cf27e8d8L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/J;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5e4ef59cf27e8d8L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/J;->FH:Lcom/aide/uidesigner/K;

    iget-object v0, v0, Lcom/aide/uidesigner/K;->Hw:Lcom/aide/uidesigner/s;

    invoke-virtual {v0, p1}, Lcom/aide/uidesigner/s;->Zo(Lcom/aide/uidesigner/b;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/J;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/aide/uidesigner/b;

    invoke-virtual {p0, p1}, Lcom/aide/uidesigner/J;->j6(Lcom/aide/uidesigner/b;)V

    return-void
.end method
